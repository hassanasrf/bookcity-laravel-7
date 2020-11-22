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
        Edit Media
        <small>All * field required</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- SELECT2 EXAMPLE -->
      <!-- form start -->
          <form name="formEdit" id="formEdit" method="post" enctype="multipart/form-data" action="/admin/media/{{ $media->id }}">
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
                      <input type="text" name="title" class="form-control" id="title" placeholder="Title" value="{{ $media->title }}">
                      @error('title')
                          <span class="label label-danger">{{ $message }}</span>
                      @enderror
                    </div>
 
                    <div class="form-group">
                    <label for="slug">Slug <span class="text text-red">*</span></label>
                      <input type="text" name="slug" class="form-control" id="slug" placeholder="Slug" value="{{ $media->slug }}">
                    </div>
                    <div class="form-group">
                      <label>Media Type <span class="text text-red">*</span></label>
                      <select name="media_type" id="media_type" class="form-control" style="width: 100%;">
                        <option value="none">-- Select Media Type --</option>
                        <option value="slider" {{ ($media->media_type == 'slider') ? 'selected' : null }}>Slider</option>
                        <option value="gallery" {{ ($media->media_type == 'gallery') ? 'selected' : null }}>Gallery</option>
                        <option value="magazine" {{ ($media->media_type == 'magazine') ? 'selected' : null }}>Magazine</option>
                        <option value="comics" {{ ($media->media_type == 'comics') ? 'selected' : null }}>Comics</option>
                      </select>
                    </div>
                  </div>
                 
                <div class="col-xs-6">
                   <div class="form-group">
                      <label for="media_img">Media Image <span class="text text-red">*</span></label>
                      <input type="file" name="media_img" class="form-control" id="media_img">
                    </div>
                    <div class="form-group">
                      <label>Description</label>
                      <textarea name="description" id="description" class="form-control" rows="5" placeholder="Enter ...">{{ $media->description }}</textarea>
                     </div>
                  </div>
            </div>

              <!-- row end -->

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <button type="submit" class="btn btn-primary">Update</button>
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