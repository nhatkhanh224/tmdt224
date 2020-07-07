@extends('layouts.adminLayout.admin_design')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>General Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Loại sản phẩm</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Form thuộc tính sản phẩm </h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" enctype="multipart/form-data" method="post" action="{{url('/admin/themthuoctinh/'.$chitiet_sp->id_sanpham)}}" name="themthuoctinh" id="themthuoctinh">
                {{csrf_field()}}
                <div class="card-body">
                  <input type="hidden" name="id_sanpham" value="{{$chitiet_sp->id_sanpham}}">
                  
                 <div class="form-group">
                        <label>Sản phẩm :</label>
                        <label style="margin-left: 25%;">{{$chitiet_sp->ten_sanpham}}</label>
                        
                 </div>
                 <div class="form-group">
                        <label>Code :</label>
                        <label style="margin-left: 34%;">{{$chitiet_sp->code_sanpham}}</label>
                        
                 </div>
                 <div class="form-group">
                        <label>Màu sắc :</label>
                        <label style="margin-left: 30%;">{{$chitiet_sp->mau_sanpham}}</label>
                        
                 </div>
                 <div class="form-group">
                        <div class="field_wrapper">
                             <div>

                              <input type="text" name="ma_sanpham[]" id="ma_sanpham" placeholder="Nhập mã sản phẩm">
                              <input type="text" name="size[]" id="size" placeholder="Nhập size">
                              <input type="text" name="giatien[]" id="giatien" placeholder="Nhập giá tiền">
                              <input type="text" name="soluong[]" id="soluong" placeholder="Nhập số lượng">
                              <div class="form-group">
                    <label for="exampleInputFile">Thêm ảnh minh họa sản phẩm</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="anh" name="anh">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text" id="">Upload</span>
                      </div>
                    </div>
                  </div>
                              
                              <a href="javascript:void(0);" class="add_button" title="Add field">Thêm</a>
                             </div>
                        </div>
                        
                 </div>
                 
                 
                 
                  
                
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Cập nhật</button>
                </div>
              </form>
            </div>
            

           

          </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">
            <!-- general form elements disabled -->
            <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>ID thuộc tính</th>
                      <th>Mã sản phẩm</th>
                      <th>Size</th>
                      <th>Giá tiền</th>
                      <th>Số lượng</th>
                      
                      
                      <th>Tùy chọn</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                      @foreach($chitiet_sp['thuoctinh'] as $thuoctinh)
                    <tr>
                      
                      
                      <td>{{$thuoctinh->id}}</td>
                      <td>{{$thuoctinh->ma_sanpham}}</td>
                      <td>{{$thuoctinh->size}}</td>
                      <td>{{$thuoctinh->giatien}}</td>
                      
                      <td>{{$thuoctinh->soluong}}</td>
                      
                      
                      <td>
                        
                        <a href="" class="badge badge-success">Sửa</a><a href="" class="badge badge-danger">Xóa</a></td>
                      
                    </tr>
                    @endforeach
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
            <!-- /.card -->
            <!-- general form elements disabled -->
            
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
@endsection