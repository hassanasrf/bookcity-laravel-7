@extends('admin/layout/master')

@section('page-title')
    Manage Media
@endsection

@section('main-content')
    
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Manage Media</h1>
      <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Simple</li>
      </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
      
      <!-- /.row -->
     <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"> 
                    <a class="btn btn-danger btn-xm"><i class="fa fa-eye"></i></a>
                    <a class="btn btn-danger btn-xm"><i class="fa fa-eye-slash"></i></a>
                    <a class="btn btn-danger btn-xm"><i class="fa fa-trash"></i></a>
                    <a href="{{ asset('admin/media/create') }}" class="btn btn-default btn-xm"><i class="fa fa-plus"></i></a>
              </h3>
              <div class="box-tools">
                <form method="get" action="{{ asset('admin/media') }}">
                <div class="input-group input-group-sm" style="width: 250px;">
                  <input type="text" name="s" class="form-control pull-right" placeholder="Search">
                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </form>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              @if($medias)
              <table class="table table-bordered">
                <thead style="background-color: #F8F8F8;">
                  <tr>
                    <th width="4%"><input type="checkbox" name="" id="checkAll"></th>
                    <th width="20%">Title</th>
                    <th width="20%">Media Type</th>
                    <th width="10%">Media Image</th>
                    <th width="10%">Status</th>
                    <th width="10%">Manage</th>
                  </tr>
                </thead>
                @foreach($medias as $media)
                <tr>
                  <td><input type="checkbox" name="" id="" class="checkSingle"></td>
                  <td>{{ $media->title }}</td>
                  <td>{{ $media->media_type }}</td>
                  <td>
                    @if($media->media_img == 'No image found')
                        <img src="{{ asset('assets/admin/dist/img/noimage.png') }}" width="100" alt="No Image">
                    @else
                        <img src="{{ asset('uploads') }}/{{ $media->media_img }}" width="100" alt="No Image">
                    @endif
                  </td>
                  <td>
                    <form name="statusForm" id="statusForm" method="post" action="{{ asset('admin/media') }}/{{ $media->id }}/status">
                        @csrf
                        {{ method_field('put') }}
                        @if($media->status == 'DEACTIVE')
                        <button class="btn btn-danger btn-sm"><i class="fa fa-thumbs-down"></i></button>
                        @else
                        <button class="btn btn-info btn-sm"><i class="fa fa-thumbs-up"></i></button>
                        @endif
                    </form>
                  </td>
                  <td>
                      <form name="deleteForm" id="deleteForm" method="post" action="{{ asset('admin/media') }}/{{ $media->id }}">
                        @csrf
                        {{ method_field('delete') }}
                        <a href="{{ asset('admin/media') }}/{{ $media->id }}/edit" class="btn btn-info btn-flat btn-sm"> <i class="fa fa-edit"></i></a>
                        <button class="btn btn-danger btn-flat btn-sm" onclick="return confirm('Are you sure you want to delete this?')"> <i class="fa fa-trash-o"></i></button>
                      </form>
                  </td>
                </tr>
                @endforeach
            </table>
              @else
                  <div class="alert alert-danger">No record found!</div>
              @endif
            </div>
            <!-- /.box-body -->
              <div class="box-footer clearfix">
                        <div class="row">
                            <div class="col-sm-6">
                                <span style="display:block;font-size:15px;line-height:34px;margin:20px 0;">
                                  Showing {{($medias->currentpage()-1)*$medias->perpage()+1}} to {{$medias->currentpage()*$medias->perpage()}} of {{$medias->total()}} entries
                                </span>
                            </div>
                          <div class="col-sm-6 text-right">
                              {{ $medias->links() }}
                          </div>
                        </div>
                    </div>
                </div>
            <!-- /.box-body -->
          </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
@endsection