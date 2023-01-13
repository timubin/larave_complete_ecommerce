<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect;
use Session;
Session_start();

class SuperAdminController extends Controller
{
    public function deshboard(){
        $this->AdminAuthCheck();
        return view('admin.deshboard');
    }

    public function logout(){
        Session::flush();
        return Redirect::to('/admin');
    }

    public function AdminAuthCheck(){
        $admin_id=Session::get('admin_id');
        if($admin_id){
            return;
        }
        else{
            return redirect::to('/admin')->send();
        }
    }
}
