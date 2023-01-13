<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Customer;
class CustomerController extends Controller
{
    public function login(Request $request)
   {
   $email=$request->email;
   $password=$request->passwoerd;
   $result=Customer::where('email',$email)->where('password',$password)->first();
   if($result){
    Session::put('id',$result->id);
    return redirect('/checkout');
   }else{
    return redirect('/login-check');
   }
   }
    public function registration(Request $request)
   {
   $data=array();
   $data['name']=$request->name;
   $data['email']=$request->email;
   $data['password']=$request->password;
   $data['mobile']=$request->mobile;
   $id=Customer::insertGetId($data);
   Session::put('id',$id);
   Session::put('name',$request->name);
   return redirect('/checkout');
   }

   public function logout() {
    Session::flush();
    return redirect('/');
}
}
