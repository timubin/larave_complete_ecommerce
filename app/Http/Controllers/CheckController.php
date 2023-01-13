<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session;
use App\Models\Shipping;
use App\Models\Payment;
use App\Models\Order;
use App\Models\Customer;
use DB;
use Cart;
use Illuminate\Http\Request;

class CheckController extends Controller
{
   public function index(){
      $coustomer_id=Customer::where('id',Session::get('id'))->first();
    return view('frontend.pages.checkout',compact('coustomer_id'));
   }
   public function login_chack(){
    return view('frontend.pages.login');
   }
   public function save_shipping_address(Request $request){
      $data=array();
      $data['name']=$request->name;
      $data['email']=$request->email;
      $data['adderss']=$request->adderss;
      $data['city']=$request->city;
      $data['country']=$request->country;
      $data['zip_code']=$request->zip_code;
      $data['mobile']=$request->mobile;
      $s_id=Shipping::insertGetId($data);
   Session::put('sid',$s_id);
   
   return redirect('/payment');
   }

   public function payment(){
      $cartCollection=Cart::getContent();
      $cart_array=$cartCollection->toArray();
      return view('frontend.pages.payment',compact('cart_array'));
   }

   public function order_place(Request $request){
      $payment_method=$request->payment;
      $pdata=array();
      $pdata['payment_method']=$payment_method;
      $pdata['status']='pending';
      $payment_id=Payment::insertGetId($pdata);

      $odata=array();
      $odata['cus_id']=Session::get('id');
      $odata['ship_id']=Session::get('sid');
      $odata['pay_id']=$payment_id;
      $odata['total']=Cart::getTotal();
      $odata['status']='pendig';
      $order_id=Order::insertGetId($odata);

      $cartCollection=Cart::getContent();
      $oddata=array();
      Foreach($cartCollection as $cartContent){
         $oddata['order_id']=$order_id;
         $oddata['product_id']=$cartContent->id;
         $oddata['product_name']=$cartContent->name;
         $oddata['product_price']=$cartContent->price;
         $oddata['product_sales_quantity']=$cartContent->quantity;
         DB::table('order_details')->insert($oddata);
      }

      if($payment_method=='Cash'){
         Cart::clear();
         return view('frontend.pages.payment_method');
      }elseif($payment_method=='Bkash'){
         Cart::clear();
         return view('frontend.pages.payment_method');
      }
      elseif($payment_method=='Nogod'){
         Cart::clear();
         return view('frontend.pages.payment_method');
      }else{
         return redirect('/payment');
      }
   }
 
 
}
