@extends('layouts.adminLayout.admin_design')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Xem chi tiết order {{$chitiet_order->id}}</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v2</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">CPU Traffic</span>
                <span class="info-box-number">
                  10
                  <small>%</small>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Likes</span>
                <span class="info-box-number">41,410</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Sales</span>
                <span class="info-box-number">760</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">New Members</span>
                <span class="info-box-number">2,000</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        
        <!-- /.row -->

        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <div class="col-md-12">
            <!-- MAP & BOX PANE -->
           
            <!-- /.card -->
            
            <!-- /.row -->

            <!-- TABLE: LATEST ORDERS -->
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Latest Orders</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      
                      
                      <th>Tên khách hàng</th>
                      <th>Email khách hàng</th>
                      <th>Ngày mua</th>
                      <th>Trạng thái</th>
                      
                      
                      
                      
                    </tr>
                    </thead>
                    <tbody>
                      
                    <tr>
                      <td>{{$chitiet_order->ten}}</td>
                      <td>{{$chitiet_order->email_nguoidung}}</td>			
                      <td>{{$chitiet_order->created_at}}</td>					
                      <td>{{$chitiet_order->trangthai}}</td>
                      
                      
                      
                    </tr>
                    
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->

              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <a href="" class="btn btn-sm btn-info float-left">Place New Order</a>
                <a href="#" class="btn btn-sm btn-secondary float-right">View All Orders</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <form action="{{url('admin/sua_tinhtrang')}}" method="post">
                	{{csrf_field()}}
                	<div class="form-group">
                        <label>Cập nhật trạng thái</label>
                        <input type="hidden" name="id_dathang" value="{{$chitiet_order->id}}" >
                        <select class="form-control" name="trangthai_order">
                          <option>Lựa chọn</option>
                		<option value="Mới" @if($chitiet_order->trangthai=="Mới") selected @endif>Mới</option>
                		<option value="Chờ xử lí" @if($chitiet_order->trangthai=="Chờ xử lí") selected @endif>Đang chờ xử lý</option>
                		<option value="Chờ lấy hàng" @if($chitiet_order->trangthai=="Chờ lấy hàng") selected @endif>Chờ lấy hàng</option>
                		<option value="Đang giao hàng" @if($chitiet_order->trangthai=="Đang giao hàng") selected @endif>Đang giao hàng</option>
                		<option value="Đã nhận hàng" @if($chitiet_order->trangthai=="Đã nhận hàng") selected @endif>Đã nhận hàng</option>
                		<option value="Hủy bỏ" @if($chitiet_order->trangthai=="Hủy bỏ") selected @endif>Hủy bỏ</option>
                          
                        </select>
                      </div>
                	<input type="submit" name="" value="Cập nhật">
                </form>
          <!-- /.col -->

          <div class="col-md-4">
            <!-- Info Boxes Style 2 -->
            
            <!-- /.card -->

            <!-- PRODUCT LIST -->
            
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection