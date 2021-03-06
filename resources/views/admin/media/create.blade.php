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
        Create Media
        <small>All * field required</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- SELECT2 EXAMPLE -->
      <!-- form start -->
      <form name="formCreate" id="formCreate" method="post" enctype="multipart/form-data" action="/admin/media">
      @csrf
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
                      <input type="text" name="title" class="form-control" id="title" placeholder="Title">
                      @error('title')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
 
                    <div class="form-group @error('slug') has-error @enderror">
                    <label for="slug">Slug <span class="text text-red">*</span></label>
                      <input type="text" name="slug" class="form-control" id="slug" placeholder="Slug">
                      @error('slug')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
                    <div class="form-group">
                      <label>Media Type <span class="text text-red">*</span></label>
                      <select name="media_type" id="media_type" class="form-control" style="width: 100%;">
                        <option value="none">-- Select Media Type --</option>
                        <option value="slider">Slider</option>
                        <option value="gallery">Gallery</option>
                        <option value="magazine">Magazine</option>
                        <option value="comics">Comics</option>
                      </select>
                    </div>
                  </div>
                 
                <div class="col-xs-6">
                   <div class="form-group @error('media_img') has-error @enderror">
                      <label for="media_img">Media Image <span class="text text-red">*</span></label>
                      <input type="file" name="media_img" class="form-control" id="media_img">
                      @error('media_img')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
                    <div class="form-group">
                      <label>Description</label>
                      <textarea name="description" id="description" class="form-control" rows="5" placeholder="Enter ..."></textarea>
                     </div>
                  </div>
            </div>

              <!-- row end -->

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="/admin/media" class="btn btn-danger">Cancel</a>
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