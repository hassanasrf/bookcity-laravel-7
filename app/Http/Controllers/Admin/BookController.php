<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Book;
use App\Category;
use App\Author;
use App\Country;
use File;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $searchTerm = request()->get('s');
        $books = Book::orWhere('title', 'LIKE', "%$searchTerm%")->orderBy('id', 'DESC')->paginate(15);
        return view('/admin/book/index')->with(compact('books'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::get();
        $categories = Category::get();
        $authors = Author::get();
        return view('/admin/book/create')->with(compact('countries', 'categories', 'authors'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            // 'category_id' => 'required',
            // 'author_id' => 'required',
            'title' => 'required',
            'slug' => 'required',
            'book_img' => 'required|image|mimes:jpeg,jpg,png,gif',
            'description' => 'required'
        ], $messages = [
            'title.required' => 'Title must be Required',
            'author.required' => 'We need to know your author!',
            'book_img.required' => 'Image must be Upload'
            
        ]);

        $fileName = null;
        if (request()->File('book_img')) 
        {
            $file = request()->File('book_img');
            $fileName = md5($file->getClientOriginalName()) . time() . "." . $file->getClientOriginalExtension();
            $file->move('./uploads/', $fileName);
        } 
        
        Book::create([
            'category_id' => request()->get('category_id'),
            'author_id' => request()->get('author_id'),
            'title' => request()->get('title'),
            'slug' => request()->get('slug'),
            'availability' => request()->get('availability'),
            'price' => request()->get('price'),
            'publisher' => request()->get('publisher'),
            'country_of_publisher' => request()->get('country_of_publisher'),
            'isbn' => request()->get('isbn'),
            'isbn-10' => request()->get('isbn-10'),
            'audience' => request()->get('audience'),
            'format' => request()->get('format'),
            'language' => request()->get('language'),
            'total_pages' => request()->get('total_pages'),
            'downloaded' => request()->get('downloaded'),
            'edition_number' => request()->get('edition_number'),
            'recommended' => request()->get('recommended'),
            'description' => request()->get('description'),
            'book_img' => $fileName,
            'book_upload' => $fileName,
            'status' => 'DEACTIVE'
        ]);

        return redirect()->to('/admin/book');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $book = Book::find($id);
        $countries = Country::get();
        $categories = Category::get();
        $authors = Author::get();
        return view('admin/book/edit')->with(compact('book', 'countries', 'categories', 'authors'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $book = Book::find($id);
        
        $request->validate([
            'category_id' => 'required',
            'author_id' => 'required',
            'title' => 'required',
            'slug' => 'required',
            // 'book_img' => 'required|image|mimes:jpeg,jpg,png,gif',
            'description' => 'required'
        ], $messages = [
            'title.required' => 'Title must be Required',
            'author.required' => 'We need to know your author!',
            // 'book_img.required' => 'Image must be Upload'
        ]);

        $currentImage = $book->book_img;

        $fileName = null;
        if (request()->File('book_img')) 
        {
            $file = request()->File('book_img');
            $fileName = md5($file->getClientOriginalName()) . time() . "." . $file->getClientOriginalExtension();
            $file->move('./uploads/', $fileName);
        }
    
        $book->update([
            'category_id' => request()->get('category_id'),
            'author_id' => request()->get('author_id'),
            'title' => request()->get('title'),
            'slug' => request()->get('slug'),
            'availability' => request()->get('availability'),
            'price' => request()->get('price'),
            'publisher' => request()->get('publisher'),
            'country_of_publisher' => request()->get('country_of_publisher'),
            'isbn' => request()->get('isbn'),
            'isbn-10' => request()->get('isbn-10'),
            'audience' => request()->get('audience'),
            'format' => request()->get('format'),
            'language' => request()->get('language'),
            'total_pages' => request()->get('total_pages'),
            'downloaded' => request()->get('downloaded'),
            'edition_number' => request()->get('edition_number'),
            'recommended' => request()->get('recommended'),
            'description' => request()->get('description'),
            'book_img' => ($fileName) ? $fileName : $currentImage,
            'book_upload' => ($fileName) ? $fileName : $currentImage
        ]);
        
        if ($fileName) {
            File::delete('./uploads/' . $currentImage);
        }
        return redirect()->to('/admin/book');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $book = Book::find($id);
        $currentImage = $book->book_img;
        $book->delete();
        File::delete('./uploads/' . $currentImage);
        return redirect()->back(); 
    }

    public function status($id)
    {
        $book = Book::find($id); // useage for primary key which name should be 'id';
        $newStatus = ($book->status == 'DEACTIVE') ? 'ACTIVE' : 'DEACTIVE';
        $book->update([
            'status' => $newStatus
        ]);
        return redirect()->back();
    }
}
