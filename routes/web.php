<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::match(['get','post'],'/admin','AdminController@login');
Route::get('/admin/logout','AdminController@logout');
Auth::routes();
Route::group(['middleware'=>['auth']],function () 
{
	Route::get('/admin/dashboard', 'AdminController@dashboard');
	Route::get('admin/caidat','AdminController@caidat');
	Route::match(['get','post'],'/admin/suapass','AdminController@suapass');
});
//Loai San Pham
Route::match(['get','post'],'/admin/themloai','LoaiSPController@themloai');
Route::match(['get','post'],'/admin/sualoai/{id}','LoaiSPController@sualoai');
Route::match(['get','post'],'/admin/xoaloai/{id}','LoaiSPController@xoaloai');
Route::get('/admin/xemloai','LoaiSPController@xemloai');
//San Pham
Route::match(['get','post'],'/admin/themsp','SPController@themsp');
Route::match(['get','post'],'/admin/suasp/{id}','SPController@suasp');
Route::match(['get','post'],'/admin/xoaanh/{id}','SPController@xoaanh');
Route::match(['get','post'],'/admin/xoasp/{id}','SPController@xoasp');
Route::get('/admin/xemsp','SPController@xemsp');
Route::match(['get','post'],'/admin/themanh/{id}','SPController@themanh');
Route::match(['get','post'],'/admin/xoaanhsp/{id}','SPController@xoaanhsp');

//Thuoc tinh
Route::match(['get','post'],'/admin/themthuoctinh/{id}','SPController@themthuoctinh');
//Ma giam gia
Route::match(['get','post'],'/admin/themma','MagiamgiaController@themma');
Route::match(['get','post'],'/admin/suama/{id}','MagiamgiaController@suama');
Route::match(['get','post'],'/admin/xoama/{id}','MagiamgiaController@xoama');
Route::get('admin/xemma','MagiamgiaController@xemma');
Route::post('/giohang/dungma','TrangChuController@dungma');
//admin xem order
Route::get('admin/xemorder','TrangChuController@xemorder');
Route::get('admin/xemorder/{id}','TrangChuController@chitiet_order');
Route::post('admin/sua_tinhtrang','TrangChuController@sua_tinhtrang');
//Bieu do
Route::get('admin/chart_doanhthu','AdminController@chart_doanhthu');
//Giao dien trang chu
Route::get('/trangchu', 'TrangChuController@trangchu');
Route::get('/loaisanpham/{url}','SPController@loaisp');
Route::get('/sanpham/{id}','SPController@chitietsp');

Route::get('/cat/{id}','TrangChuController@danhsach')->name('cats');

Route::get('/chitietsanpham/{id}','TrangChuController@chitietsp');
//lay thuoc tinh
Route::get('/laygia','TrangChuController@laygia');
Route::get('/laysl','TrangChuController@laysl');
//giohang
Route::match(['get','post'],'/themgiohang','TrangChuController@themgiohang');
Route::match(['get','post'],'/giohang','TrangChuController@giohang');
Route::get('/giohang/xoasp/{id}','TrangChuController@giohang_xoasp');
Route::get('/giohang/suasl/{id}/{soluong}','TrangChuController@giohang_suasl');


//ĐĂNG KÝ /ĐĂNG NHẬP TRANG CHỦ

Route::post('/dangky','NguoiDungController@dangky');
Route::match(['GET','POST'],'/checkmail','NguoiDungController@checkmail');
Route::get('/dangxuat','NguoiDungController@dangxuat');
Route::post('/dangnhap','NguoiDungController@dangnhap');
Route::group(['middleware'=>['frontlogin']],function()
{
	Route::match(['GET','POST'],'taikhoan','NguoiDungController@taikhoan');
});
Route::get('taikhoan', 'NguoiDungController@taikhoan');
Route::post('select-ajax', ['as'=>'select-ajax','uses'=>'NguoiDungController@selectAjax']);
//Mua hang
Route::match(['GET','POST'],'muahang','TrangChuController@muahang');
Route::match(['GET','POST'],'/order-review','TrangChuController@orderReview');
Route::match(['GET','POST'],'/dathang','TrangChuController@dathang');

//ket thuc
Route::get('/order','TrangChuController@order');
Route::get('/order/chitiet','TrangChuController@order_chitiet');
//Tim kiem
Route::post('/timsanpham','TrangChuController@timsanpham');
// Binh luan
Route::post('/binhluan/{id}','BinhLuanController@binhluan');
//Them doanh thu
Route::post('/doanhthu','TrangChuController@doanhthu');

Route::get('login/facebook', 'Auth\LoginController@redirectToProvider');
Route::get('login/facebook/callback', 'Auth\LoginController@handleProviderCallback');




