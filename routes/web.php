<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactContrller;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\SuperAdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\SslCommerzPaymentController;
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

// backend route

Route::get('/admin',[AdminController::class,'index']);
Route::post('/admin-deshboard',[AdminController::class,'show_deshbord']);
Route::get('/deshboard',[SuperAdminController::class,'deshboard']);
Route::get('/logout',[SuperAdminController::class,'logout']);

// Category Routes here....
Route::resource('/categories', CategoryController::class);
Route::get('/cat-status{category}',[CategoryController::class,'change_satus']);

// Sub Category Routes here....
Route::resource('/sub-categories', SubCategoryController::class);
Route::get('/subcat-status{subcategory}',[SubCategoryController::class,'change_satus']);

// All the Brand  Routes here....
Route::resource('/brands', BrandController::class);
Route::get('/brand-status{brand}',[BrandController::class,'change_satus']);

// All the Unit  Routes here....
Route::resource('/units', UnitController::class);
Route::get('/unit-status{unit}',[UnitController::class,'change_satus']);


// All the size  Routes here....
Route::resource('/sizes', SizeController::class);
Route::get('/size-status{size}',[SizeController::class,'change_satus']);


// All the size  Routes here....
Route::resource('/colors', ColorController::class);
Route::get('/colors-status{color}',[ColorController::class,'change_satus']);
 

// All the Products Routes here....
Route::resource('/products', ProductController::class);
Route::get('/product-status{product}',[ProductController::class,'change_satus']);

/* Admin panel order related route */
Route::get('/manage-order',[OrderController::class,'manage_order']);
Route::get('/view-order/{id}',[OrderController::class,'view_order']);


// frontend Route 
Route::get('',[HomeController::class,'index']);
Route::get('/view-details{id}',[HomeController::class,'view_details']);
Route::get('/product_by_cat/{id}',[HomeController::class,'product_by_cat']);
Route::get('/product_by_subcat/{id}',[HomeController::class,'add_to_cart']);
Route::get('/search',[HomeController::class,'search']);


/* add to route  */

Route::post('/add-to-cart',[CartController::class,'add_to_cart']);
Route::get('/delete-card/{id}',[CartController::class,'delete']);

/* Checkout page */
// Route::get('/checkout',[CheckController::class,'index']);
Route::get('/login-check',[CheckController::class,'login_chack']);

/* customer login registion logout route here*/

Route::post('/customer-login',[CustomerController::class,'login']);
Route::post('/customer-registration',[CustomerController::class,'registration']);
Route::get('/cus-logout',[CustomerController::class,'logout']);

/* Route::post('/save-shipping-address',[CheckController::class,'save_shipping_address']);
Route::get('/payment',[CheckController::class,'payment']);
Route::post ('/order-place',[CheckController::class,'order_place']);
 */

// SSLCOMMERZ Start
Route::get('/checkout', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END
