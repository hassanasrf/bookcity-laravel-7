<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
	Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function(){
		
		Route::put('author/{author}/status', 'AuthorController@status');
		Route::resource('author', 'AuthorController');

		Route::put('category/{category}/status', 'CategoryController@status');
		Route::resource('category', 'CategoryController');

		Route::put('media/{media}/status', 'MediaController@status');
		Route::resource('media', 'MediaController');

		Route::put('book/{book}/status', 'BookController@status');
		Route::resource('book', 'BookController');

		Route::put('team/{team}/status', 'TeamController@status');
		Route::resource('team', 'TeamController');
	});

/*-----------------OLD METHOD TO CREATE ROUTES--------------------

	Route::delete('/admin/category/{category}', 'Admin\CategoryController@destroy');
	Route::put('/admin/category/{category}', 'Admin\CategoryController@update');
	Route::get('/admin/category/{category}/edit', 'Admin\CategoryController@edit');
	Route::post('/admin/category/', 'Admin\CategoryController@store');
	Route::get('/admin/category/create', 'Admin\CategoryController@create');
	Route::get('/admin/category', 'Admin\CategoryController@index');

	Route::delete('/admin/author/{author}', 'Admin\AuthorController@destroy');
	Route::put('/admin/author/{author}', 'Admin\AuthorController@update');
	Route::get('/admin/author/{author}/edit', 'Admin\AuthorController@edit');
	Route::post('/admin/author/', 'Admin\AuthorController@store');
	Route::get('/admin/author/create', 'Admin\AuthorController@create');
	Route::get('/admin/author', 'Admin\AuthorController@index');

	
	Route::delete('/admin/book/{book}', 'Admin\BookController@destroy');
	Route::put('/admin/book/{book}', 'Admin\BookController@update');
	Route::get('/admin/book/{book}/edit', 'Admin\BookController@edit');
	Route::post('/admin/book/', 'Admin\BookController@store');
	Route::get('/admin/book/create', 'Admin\BookController@create');
	Route::get('/admin/book', 'Admin\BookController@index');


	Route::delete('/admin/media/{media}', 'Admin\MediaController@destroy');
	Route::put('/admin/media/{media}', 'Admin\MediaController@update');
	Route::get('/admin/media/{media}/edit', 'Admin\MediaController@edit');
	Route::post('/admin/media/', 'Admin\MediaController@store');
	Route::get('/admin/media/create', 'Admin\MediaController@create');
	Route::get('/admin/media', 'Admin\MediaController@index');


	Route::delete('/admin/team/{team}', 'Admin\TeamController@destroy');
	Route::put('/admin/team/{team}', 'Admin\TeamController@update');
	Route::get('/admin/team/{team}/edit', 'Admin\TeamController@edit');
	Route::post('/admin/team/', 'Admin\TeamController@store');
	Route::get('/admin/team/create', 'Admin\TeamController@create');
	Route::get('/admin/team', 'Admin\TeamController@index');

*/	

/* FRONTEND DEVELOPMENT */
Route::get('/contact', 'HomeController@contact');
Route::get('/author', 'HomeController@author');
Route::get('/blog', 'HomeController@blog');
Route::get('/gallery', 'HomeController@gallery');
Route::get('/about', 'HomeController@about');
Route::get('/', 'HomeController@index');

//***{slug} <-this is called dynamic value ***//
Route::get('/category/{slug}', 'CategoryController@show')->name('category.show');
Route::get('/book/{slug}', 'BookController@show')->name('book.show');