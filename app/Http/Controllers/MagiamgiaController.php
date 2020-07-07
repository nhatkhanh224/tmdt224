<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Magiamgia;

class MagiamgiaController extends Controller
{
    public function themma(Request $request)
    {
    	if ($request->isMethod('post')) {
    		$data=$request->all();
    		
    		$ma=new Magiamgia;
    		$ma->magiamgia=$data['magiamgia'];
    		$ma->sotien=$data['sotien'];
    		$ma->loai=$data['loai'];
    		$ma->thoihan=$data['thoihan'];
    		$ma->trangthai=$data['trangthai'];
    		$ma->save();
    		return redirect('admin/xemma')->with('success','Item created successfully!');;

    	}
    	return view('admin.magiamgia.them_ma');
    }
    public function xemma()
    {
    	$magiamgia=Magiamgia::get();
    	return view('admin.magiamgia.xem_ma')->with(compact('magiamgia'));
    }
    public function suama(Request $request,$id=null)
    {
        if ($request->isMethod('post')) {
            $data=$request->all();
            $ma=Magiamgia::find($id);
            $ma->magiamgia=$data['magiamgia'];
            $ma->sotien=$data['sotien'];
            $ma->loai=$data['loai'];
            $ma->thoihan=$data['thoihan'];
            if (empty($data['trangthai'])) {
                $data['trangthai']=0;
            }
            $ma->save();
            return redirect('admin/xemma')->with('success','Sửa thành công');
        }
        $chitiet_ma=Magiamgia::find($id);
        return view('admin.magiamgia.sua_ma')->with(compact('chitiet_ma'));
    }
    public function xoama($id)
    {
        Magiamgia::where(['id'=>$id])->delete();
        return redirect()->back()->with('success','Xóa thành công');
    }
}
