<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Author;
use App\Country;
use File;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $searchTerm = request()->get('s');
        $authors = Author::orWhere('title', 'LIKE', "%$searchTerm%")->orderBy('id', 'DESC')->paginate(15);
        return view('admin/author/index')->with(compact('authors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $countries = Country::get();
        return view('/admin/author/create')->with(compact('countries'));        
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
            'title' => 'required',
            'slug' => 'required',
            'designation' => 'required',
            'dob' => 'required',
            'country' => 'required|not_in:none',
            'email' => 'required|email|unique:author,email',
            'author_img' => 'required|image|mimes:jpeg,jpg,png,gif'
        ], $messages = [
            'title.required' => 'Title must be Required',
            'email.required' => 'We need to know your e-mail address!',
            'author_img.required' => 'Image must be Upload'
            
        ]);

        $fileName = null;
        if (request()->File('author_img')) 
        {
            $file = request()->File('author_img');
            $fileName = md5($file->getClientOriginalName()) . time() . "." . $file->getClientOriginalExtension();
            $file->move('./uploads/', $fileName);
        } 
        
        Author::create([
            'title' => request()->get('title'),
            'slug' => request()->get('slug'),
            'designation' => request()->get('designation'),
            'dob' => request()->get('dob'),
            'country' => request()->get('country'),
            'email' => request()->get('email'),
            'phone' => request()->get('phone'),
            'description' => request()->get('description'),
            'author_feature' => request()->get('author_feature'),
            'facebook_id' => request()->get('facebook_id'),
            'twitter_id' => request()->get('twitter_id'),
            'youtube_id' => request()->get('youtube_id'),
            'pinterest_id' => request()->get('pinterest_id'),
            'author_img' => $fileName,
            'status' => 'DEACTIVE'
        ]);

        return redirect()->to('/admin/author');
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
        $author = Author::find($id);
        $countries = Country::get();
        return view('admin/author/edit')->with(compact('author', 'countries'));
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
        $author = Author::find($id);
        
        $request->validate([
            'title' => 'required',
            'slug' => 'required',
            'designation' => 'required',
            'dob' => 'required',
            'country' => 'required|not_in:none',
            'email' => 'required|email',
            'author_img' => 'image|mimes:jpeg,jpg,png,gif'
        ]);

        $currentImage = $author->author_img;

        $fileName = null;
        if (request()->File('author_img')) 
        {
            $file = request()->File('author_img');
            $fileName = md5($file->getClientOriginalName()) . time() . "." . $file->getClientOriginalExtension();
            $file->move('./uploads/', $fileName);
        }
    
        $author->update([
            'title' => request()->get('title'),
            'slug' => request()->get('slug'),
            'designation' => request()->get('designation'),
            'dob' => request()->get('dob'),
            'country' => request()->get('country'),
            'email' => request()->get('email'),
            'phone' => request()->get('phone'),
            'description' => request()->get('description'),
            'author_feature' => request()->get('author_feature'),
            'facebook_id' => request()->get('facebook_id'),
            'twitter_id' => request()->get('twitter_id'),
            'youtube_id' => request()->get('youtube_id'),
            'pinterest_id' => request()->get('pinterest_id'),
            'author_img' => ($fileName) ? $fileName : $currentImage,
        ]);
        
        if ($fileName) {
            File::delete('./uploads/' . $currentImage);
        }
        return redirect()->to('/admin/author');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $author = Author::find($id);
        $currentImage = $author->author_img;
        $author->delete();
        File::delete('./uploads/' . $currentImage);
        return redirect()->back(); 
    }

    public function status($id)
    {
        $author = Author::find($id); // useage for primary key which name should be 'id';
        $newStatus = ($author->status == 'DEACTIVE') ? 'ACTIVE' : 'DEACTIVE';
        $author->update([
            'status' => $newStatus
        ]);
        return redirect()->back();
    }
}
