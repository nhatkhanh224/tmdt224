<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SanPham;
use App\AnhSanPham;
use App\BinhLuan;
use App\User;
use Auth;

class BinhLuanController extends Controller
{
    public function binhluan($id,Request $request)
    {

    	$id_sanpham=SanPham::where('id_sanpham',$id)->first();
    	$id_nguoidung=Auth::user()->id;
    	if ($request->isMethod('post')) {
    		$data=$request->all();

    		$binhluan=new BinhLuan;
    		$binhluan->id_nguoidung=$id_nguoidung;
    		$binhluan->id_sanpham=$data['id_sanpham'];
    		$binhluan->noidung=$data['noidung'];
    		$binhluan->save();
    	}
    	
    	

    	

    	return redirect('chitietsanpham/'.$id_sanpham->id_sanpham);

    	 
       
      
    	
    }
}
