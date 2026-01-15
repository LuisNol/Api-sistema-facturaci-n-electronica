<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Role\RoleController;
 
Route::group([
   // 'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
  //  Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/login', [AuthController::class, 'login'])->name('login');
   // Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api')->name('logout');
  //  Route::post('/refresh', [AuthController::class, 'refresh'])->middleware('auth:api')->name('refresh');
   // Route::post('/me', [AuthController::class, 'me'])->middleware('auth:api')->name('me');
  // Route::post('/me', [AuthController::class, 'me'])->middleware(['auth:api', 'role:Super-Admin'])->name('me');

});

Route::group([
    'middleware' => "auth:api"
], function ($router) {
    Route::resource("roles",RoleController::class);

    //Route::post("users/{id}",[UserController::class,"update"]);
    //Route::resource("users",UserController::class);

});
//Route::get('/user', function (Request $request) {
 //   return $request->user();
//})->middleware('auth:sanctum');
