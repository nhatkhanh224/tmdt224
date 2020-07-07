<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\User;
use App\Country;
use Auth;
use Session;
use DB;

class NguoiDungController extends Controller
{
    public function dangky(Request $request)
    {
    	if ($request->isMethod('post')) {
    		$data=$request->all();
    		$kt_email=User::where('email',$data['email'])->count();
    		if ($kt_email>0) {
    			return redirect()->back()->with('flash_message_error','Email đã tồn tại');
    		}else
    		{
    			$user=new User;
    			$user->name=$data['name'];
    			$user->email=$data['email'];
    			$user->password=bcrypt($data['password']);
                $user->tinh_tp="";
                $user->quan_huyen="";
                $user->diachi="";
                $user->sdt="";

    			$user->save();
    			if(Auth::attempt(['email'=>$data['email'],'password'=>$data['password']]))
    			{
    				Session::put('frontSession',$data['email']);
    				return redirect('giohang');
    			}


    		}
    		
    	}
    	
    }
    public function dangnhap(Request $request)
    {
    	if ($request->isMethod('post')) {
    		$data=$request->all();

    		if(Auth::attempt(['email'=>$data['email'],'password'=>$data['password']]))
    			{
    				Session::put('frontSession',$data['email']);
    				return redirect('giohang');
    			}
    		else
    		{
    			

    			return redirect()->back()->with('flash_message_error','Email hoặc mật khẩu không đúng');
    		}
    	}
    }
    public function checkmail(Request $request)
    {
    	if($request->isMethod('post'))
    	{
    		$data=$request->all();
    		$kt_email=User::where('email',$data['email'])->count();
    		if ($kt_email>0) {
    			echo "false";
    		}else
    		{
    			echo "true";die;
    		}
    	}
    	

    }
    public function dangxuat()
    {
    	Auth::logout();
    	Session::forget('frontSession');
        Session::forget('session_id');
    	return redirect('/trangchu');

    }
    public function taikhoan(Request $request)
    {
        
        $id_tk=Auth::user()->id;
        $chitiet_tk=User::find($id_tk);
        $tinh= $chitiet_tk->tinh_tp;
        
        $huyen=$chitiet_tk->quan_huyen;
        $countries = DB::table('countries')->pluck("name","id")->all();

        $countries_hai=DB::table('countries')->select('name')->where('id',$tinh)->get();

        $state = DB::table('states')->pluck("name","id")->all();
        $state_hai=DB::table('states')->select('name')->where('id',$huyen)->get();
        if (!empty($tinh)) {
            $tinh_mot=$countries_hai[0]->name;
        }
        else
        {
            $tinh_mot="Vui lòng chọn tỉnh/thành phố";
        }
         if (!empty($huyen)) {
            $huyen_mot=$state_hai[0]->name;
        }
        else
        {
            $huyen_mot="Vui lòng chọn quận/huyện";
        }
        

        if ($request->isMethod('post')) {
            $data=$request->all();
            
            $tk=User::find($id_tk);
            $tk->name=$data['name'];
            $tk->tinh_tp=$data['id_country'];

            $tk->quan_huyen=$data['id_state'];
            $tk->diachi=$data['diachi'];
            $tk->sdt=$data['sdt'];
            $tk->email=$data['email'];
            $tk->save();
            return redirect()->back();
        }
        // echo "<pre>";print_r($chitiet_tk);die;
        return view('nguoidung.taikhoan',compact('countries','id_tk','chitiet_tk','countries_hai','tinh_mot','state_hai','huyen_mot'));
    }
    public function selectAjax(Request $request)
    {
        if($request->ajax()){
        $states = DB::table('states')->where('id_country',$request->id_country)->pluck("name","id")->all();
        $data = view('ajax-select',compact('states'))->render();
        return response()->json(['options'=>$data]);
        }
    }
    //////////////////////////////
   
    
    
}
