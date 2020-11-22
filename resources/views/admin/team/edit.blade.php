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
                    Edit Team
                    <small>All * field required</small>
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <!-- SELECT2 EXAMPLE -->
                <!-- form start -->
                    <form name="formEdit" id="formEdit" method="post" enctype="multipart/form-data" action="/admin/team/{{ $team->id }}">
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
                                <div class="form-group @error('fullname') has-error @enderror">
                                    <label for="fullname">Fullname <span class="text text-red">*</span></label>
                                    <input type="text" name="fullname" class="form-control" id="fullname" placeholder="Fullname" value="{{ $team->fullname }}">
                                    @error('title')
                                      <span class="label label-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="designation">Designation <span class="text text-red">*</span></label>
                                    <input type="text" name="designation" class="form-control" id="designation" placeholder="Designation" value="{{ $team->designation }}">
                                </div>
                                <div class="form-group">
                                    <label for="telephone">Telephone</label>
                                    <input type="text" name="telephone" class="form-control" id="telephone" placeholder="Telephone" value="{{ $team->telephone }}">
                                </div>
                                <div class="form-group">
                                    <label for="mobile">Mobile</label>
                                    <input type="text" name="mobile" class="form-control" id="mobile" placeholder="Mobile" value="{{ $team->mobile }}">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email <span class="text text-red">*</span></label>
                                    <input type="text" name="email" class="form-control" id="email" placeholder="Email" value="{{ $team->email }}">
                                </div>
                                <div class="form-group">
                                    <label>Profile</label>
                                    <textarea name="profile" id="profile" class="form-control" rows="5" placeholder="Enter ...">{{ $team->profile }}</textarea>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="team_img">Team Image <span class="text text-red">*</span></label>
                                    <input type="file" name="team_img" class="form-control" id="team_img">
                                </div>
                                <div class="form-group">
                                    <label for="facebook_id">Facebook ID <span class="text text-red">*</span></label>
                                    <input type="text" name="facebook_id" class="form-control" id="facebook_id" placeholder="Facebook ID" value="{{ $team->facebook_id }}">
                                </div>
                                <div class="form-group">
                                    <label for="twitter_id">Twitter ID <span class="text text-red">*</span></label>
                                    <input type="text" name="twitter_id" class="form-control" id="twitter_id" placeholder="Twitter ID" value="{{ $team->twitter_id }}">
                                </div>
                                <div class="form-group">
                                    <label for="pinterest_id">Pinterest ID <span class="text text-red">*</span></label>
                                    <input type="text" name="pinterest_id" class="form-control" id="pinterest_id" placeholder="Pinterest ID" value="{{ $team->pinterest_id }}">
                                </div>
                                
                            </div>
                        </div>
                        <!-- row end -->
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="/admin/team" class="btn btn-danger">Cancel</a>
                    </div>
                </div>
                <!-- /.box -->
                <!-- form end -->
            </form>
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
@endsection