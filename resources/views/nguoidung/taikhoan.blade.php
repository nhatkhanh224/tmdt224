@extends('layouts.frontLayout.index')
@section('content')
<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="index.html">Home</a>
						<i>|</i>
					</li>
					<li>Cập nhật tài khoản</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
	<!-- contact page -->
	<div class="contact-w3l">
		<div class="container">
			<!-- tittle heading -->
			<h3 class="tittle-w3l">Cập nhật tài khoản
				<span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
			</h3>
			<!-- //tittle heading -->
			<!-- contact -->
			
			<div class="contact agileits">
				<div class="contact-agileinfo">
					<div class="contact-form wthree">
						{{-- <form id="formtaikhoan" name="formtaikhoan" action="{{url('/taikhoan')}}" method="post"> --}}
							
							{!! Form::open(['method'=>'POST','url'=>'taikhoan']) !!}
							{{csrf_field()}}
							<label>Tên</label>
							<input type="text" name="name" id="name" value="{{$chitiet_tk->name}}">
							<label>Email</label>
							<input type="email" name="email" id="email" value="{{$chitiet_tk->email}}">
							<label>Số điện thoại</label>
							<input type="text" name="sdt" id="sdt" value="{{$chitiet_tk->sdt}}">
		<div class="form-group">
           
          <label>Chọn tỉnh/thành phố:
          	
          {{ $tinh_mot}}
          
          </label>
          
          

          {!! Form::select('id_country',[''=>'--- Chọn tỉnh/thành phố ---']+$countries,null,['class'=>'form-control','id'=>'id_country'])     !!}
        </div>


        <div class="form-group">
          
          <label>Chọn tỉnh/thành phố:
          	
          {{ $huyen_mot}}
          
          </label>


          {!! Form::select('id_state',[''=>'--- Chọn quận/huyện ---'],null,['class'=>'form-control','id'=>'id_state']) !!}
        </div>


    


  
                            <label>Địa chỉ</label>
							<input type="text" name="diachi" id="diachi" value="{{$chitiet_tk->diachi}}">

							
							<input type="submit" value="Submit">
						{{-- </form> --}}
						{!! Form::close() !!} 
					</div>
					
				</div>
			</div>
			<!-- //contact -->
		</div>
	</div>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#tinh").change(function(event) {
				id_tinh=$("#tinh").val();
				$.$.post('tinh.blade.php', {id_tinh: 'id_tinh'}, function(data) {
					$("#huyen").html(data);
				});
			});

		});
	</script>
@endsection