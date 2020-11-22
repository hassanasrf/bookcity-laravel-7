@extends('admin/layout/master')

@section('page-title')
    Manage Category
@endsection

@section('main-content')

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Edit Book
        <small>All * field required</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- SELECT2 EXAMPLE -->
      <!-- form start -->
        <form name="formEdit" id="formEdit" method="post" enctype="multipart/form-data" action="/admin/book/{{ $book->id }}">
            @csrf
          {{ method_field('put') }}
      <div class="box box-primary">
        <!-- /.box-header -->
        <div class="box-body">
          <!-- @if ($errors->any())
              <div class="alert alert-danger">
                  <ul>
                      @foreach ($errors->all() as $error)
                          <li>{{ $error }}</li>
                      @endforeach
                  </ul>
              </div>
          @endif -->
          <!-- row start -->
          <div class="row"> 
                <div class="col-xs-6">
                  
                 <div class="form-group @error('title') has-error @enderror">
                    <label for="title">Title <span class="text text-red">*</span></label>
                      <input type="text" name="title" class="form-control" id="title" placeholder="Title" value="{{ $book->title }}">
                      @error('book')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
 
                    <div class="form-group @error('slug') has-error @enderror">
                    <label for="slug">Slug <span class="text text-red">*</span></label>
                      <input type="text" name="slug" class="form-control" id="slug" placeholder="Slug" value="{{ $book->slug }}">
                      @error('book')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
                    <div class="form-group">
                      <label>Category <span class="text text-red">*</span></label>
                      <select class="form-control" name="category_id" id="category_id" style="width: 100%;">
                      @foreach($categories as $category)
                        <option value="{{ $category->id }}" {{ $category->id == $book->category_id ? 'selected' : '' }}>{{ $category->title }}</option>
                      @endforeach
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Author <span class="text text-red">*</span></label>
                      <select class="form-control" name="author_id" id="author_id" style="width: 100%;">
                      @foreach($authors as $author)
                        <option value="{{ $author->id }}" {{ $author->id == $book->author_id ? 'selected' : '' }}>{{ $author->title }}</option>
                      @endforeach
                      </select>
                    </div>

                    <div class="form-group">
                      <label for="availability">Availability <span class="text text-red">*</span></label>
                      <input type="text" class="form-control" name="availability" id="availability" placeholder="Availability" value="{{ $book->availability }}">
                    </div>
                    <div class="form-group">
                  <label for="price">Price: <span class="text text-red">*</span></label> 
                  <input type="text" class="form-control" name="price" id="price" placeholder="Price" value="{{ $book->price }}">
                 </div>
                  <div class="form-group">
                    <label for="publisher">Publisher</label>
                    <input type="text" class="form-control" name="publisher" id="publisher" placeholder="Publisher" value="{{ $book->publisher }}">
                  </div>
                  <div class="form-group">
                    <label>Country of Publisher <span class="text text-red">*</span></label>
                    <select class="form-control select2" name="country_of_publisher" id="country_of_publisher" style="width: 100%;">
                      @foreach($countries as $country)
                        <option value="{{ $country->name }}" {{ $country->name == $book->country_of_publisher ? 'selected' : '' }}>{{ $country->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="isbn">ISBN</label>
                    <input type="text" class="form-control" name="isbn" id="isbn" placeholder="ISBN" value="{{ $book->isbn }}">
                  </div>

                    <div class="form-group">
                      <label for="isbn-10">ISBN-10</label>
                      <input type="text" class="form-control" name="isbn-10" id="isbn-10" placeholder="ISBN-10" value="{{ $book->isbn-10 }}">
                    </div>
                </div>
                 
                <div class="col-xs-6">
                    <div class="form-group">
                      <label for="book_img">Book Image</label>
                      <input type="file" class="form-control" name="book_img" id="book_img" >
                      <small class="label label-warning">Cover Photo will be uploaded</small>
                    </div>
                    <div class="form-group">
                      <label for="book_upload">Book Upload</label>
                      <input type="file" class="form-control" name="book_upload" id="book_upload" >
                      <small class="label label-warning">Book (PDF) will be uploaded </small>
                    </div>
                  <div class="form-group">
                      <label for="audience">Audience</label>
                      <input type="text" class="form-control" name="audience" id="audience" placeholder="Audience" value="{{ $book->audience }}">
                    </div>

                    <div class="form-group">
                      <label for="format">Format</label>
                      <input type="text" class="form-control" name="format" id="format" placeholder="Format" value="{{ $book->format }}">
                    </div>

                    <div class="form-group">
                      <label for="language">Language</label>
                      <input type="text" class="form-control" name="language" id="language" placeholder="Language" value="{{ $book->language }}">
                    </div>
                    <div class="form-group">
                      <label for="total_pages">Total Pages</label>
                      <input type="text" class="form-control" name="total_pages" id="total_pages" placeholder="Total Pages" value="{{ $book->total_pages }}">
                    </div>

                    <div class="form-group">
                      <label for="downloaded">Downloaded</label>
                      <input type="text" class="form-control" name="downloaded" id="downloaded" placeholder="Downloaded" value="{{ $book->downloaded }}">
                    </div>
                    <div class="form-group">
                      <label for="edition_number">Edition Number</label>
                      <input type="text" class="form-control" name="edition_number" id="edition_number" placeholder="Edition Number" value="{{ $book->edition_number }}">
                    </div>

                    <div class="form-group">
                      {{-- <label>Recommended</label>
                      <input type="text" class="form-control" name="recommended" id="recommended" placeholder="Yes or Not" value="{{ $book->recommended }}"> --}}
                      <label>Recommended</label>
                      <select class="form-control" name="recommended" id="recommended" style="width: 100%;">
                        <option value="{{ $book->recommended}}" {{ $book->recommended == $book->recommended ? 'selected' : '' }}>Yes</option>
                        <option value="{{ $book->recommended}}" {{ $book->recommended == $book->recommended ? 'selected' : '' }}>No</option>
                      </select>
                    </div>

                    <div class="form-group">
                      <label for="description">Description <span class="text text-red">*</span></label>
                      <textarea class="form-control" name="description" rows="5" id="description" placeholder="Description">{{ $book->description  }}</textarea>
                    </div>
                </div>
            </div>

              <!-- row end -->

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="/admin/book" class="btn btn-danger">Cancel</a>
          </div>
      </div>
      <!-- /.box -->
    </form>
      <!-- form end -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection
