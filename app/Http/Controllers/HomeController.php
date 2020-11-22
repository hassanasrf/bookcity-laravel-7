<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Team;
use App\Media;
use App\Author;
use App\Book;
use App\Category;

class HomeController extends Controller
{
    public function index()
    {
    	$sliders = Media::where(['status' => 'ACTIVE', 'media_type' => 'slider'])->limit(10)->get();
        $upcomings = Book::with('category', 'author')->where('status', 'UPCOMING')->limit(5)->get();
        $downloaded = Book::with('category', 'author')->orderBy('downloaded', 'ASC')->get();
        $recommended = Book::where('recommended', '1')->get();
        $books = Book::with('category', 'author')->where('status', 'ACTIVE')->paginate(10);
        $categories = Category::where('status', 'ACTIVE')->get();
        $author_feature = Author::where('author_feature', 'yes')->inRandomOrder()->first();
        $galleries = Media::where('media_type', 'gallery')->limit(6)->get();
        return view('index')
            ->with(compact('sliders', 'upcomings', 'downloaded', 'recommended', 'books', 'categories', 'author_feature', 'galleries'));
    }

    public function about()
    {
    	$teams = Team::limit(4)->get();
        return view('about')->with(compact('teams'));
    }

    public function gallery()
    {
    	$galleries = Media::where('media_type', 'gallery')->paginate(8);
        return view('gallery')->with(compact('galleries'));
    }

    public function blog()
    {
    	return view('blog');
    }

    public function author()
    {
    	$searchLetter = request()->get('letter');
        $authors = Author::where('title', 'LIKE', "$searchLetter%")->paginate(5);
        return view('author')->with(compact('authors'));
    }

    public function contact()
    {
    	return view('contact');
    }
}
