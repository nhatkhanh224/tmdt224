@extends('layouts.adminLayout.admin_design')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Xem loại sản phẩm</h1>
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
                <h3 class="card-title">THÁNG 12/2019</h3>

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
                      <th>ID order</th>
                      <th>Ngày mua</th>
                      <th>Tên khách hàng</th>
                      <th>Email khách hàng</th>
                      <th>Sản phẩm</th>
                      
                      <th>Giá</th>
                      <th>Trạng thái</th>
                      <th>Phương thức thanh toán</th>
                      <th>Tùy chọn</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                      <?php $tong=0; ?>
                      @foreach($order as $order)
                    <tr>
                      <td>{{$order->id}}</td>
                      <td>{{$order->created_at}}</td>
                      <td>{{$order->ten}}</td>
                      <td>{{$order->email_nguoidung}}</td>
                      <td>
                        @foreach($order->order as $sp)
                        {{$sp->ma_sanpham}}
                        ({{$sp->soluong}})
                        <br>
                        @endforeach
                      </td>
                      <td>{{$order->tongtien}},000đ</td>
                      <td>{{$order->trangthai}}</td>
                      <td>{{$order->phuongthuc}}</td>
                      <td><a href="{{url('admin/xemorder/'.$order->id)}}" title="">Xem chi tiết</a></td>
                      
                    </tr>
                    <?php $tong=$tong+($order->tongtien);?>
                    @endforeach
                    </tbody>
                  </table>
                  <h2>Tổng tiền :<?php echo $tong; ?>,000đ</h2>

                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <form action="{{url('/doanhthu')}}" method="post">
                  {{csrf_field()}}
                    <input type="hidden" name="doanhthu" value="<?php echo $tong; ?>">
                    <button class="btn btn-sm btn-info float-left" type="submit">Xác nhận</button>
                </form>
                
              </div>
              <!-- /.card-footer -->
            </div>
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">THÁNG 1/2019</h3>

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
                      <th>ID order</th>
                      <th>Ngày mua</th>
                      <th>Tên khách hàng</th>
                      <th>Email khách hàng</th>
                      <th>Sản phẩm</th>
                      
                      <th>Giá</th>
                      <th>Trạng thái</th>
                      <th>Phương thức thanh toán</th>
                      <th>Tùy chọn</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                      
                    
                      
                    </tbody>
                  </table>
                  

                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <form action="{{url('/doanhthu')}}" method="post">
                  {{csrf_field()}}
                    <input type="hidden" name="doanhthu" value="<?php echo $tong; ?>">
                    <button class="btn btn-sm btn-info float-left" type="submit">Xác nhận</button>
                </form>
                
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
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