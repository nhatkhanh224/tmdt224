@extends('layouts.frontLayout.index')
@section('content')
<div class="services-breadcrumb">
		
	</div>
	<!-- //page -->
	<!-- checkout page -->
	<div class="privacy">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">Checkout
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<div class="checkout-right">
				<h4 style="text-align: center;">Sản phẩm đã mua
					
				</h4>
				<div class="table-responsive">
					<table class="timetable_sub">
						<thead>
							<tr>
								
								<th>ID đặt hàng</th>
								<th>Mã sản phẩm</th>
								<th>Phương thức thanh toán</th>
								<th>Tổng tiền</th>
								<th>Thời gian </th>
								<th></th>
								
							</tr>
						</thead>
						<tbody>
							@foreach($order as $order)
							<tr class="rem1">
								<td>{{$order->id}}</td>
								<td>@foreach($order->order as $sp)
								     
									{{$sp->ma_sanpham}}<br>

									@endforeach
								</td>
								<td>{{$order->phuongthuc}}</td>
								<td>{{$order->tongtien}},000đ</td>
								<td>{{$order->created_at}}</td>
								<td><a href="{{url('/order/chitiet')}}" title="">Xem chi tiết</a></td>
							</tr>
							@endforeach
							
						</tbody>
					</table>
				</div>

			</div>
			
		</div>
	</div>

@endsection