<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Role\RoleController;
use App\Http\Controllers\Sale\SaleController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Sale\SaleKpiController;
use App\Http\Controllers\Client\ClientController;
use App\Http\Controllers\Client\CompanyController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\Sale\SaleDetailController;
use App\Http\Controllers\Sale\SalePaymentController;
use App\Http\Controllers\Guia\GuiaRemisionController;
use App\Http\Controllers\Product\CategorieController;
use App\Http\Controllers\Sale\FacturacionElectronicaController;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');
 
Route::group([
    'prefix' => 'auth'
], function ($router) {
    Route::post('/login', [AuthController::class, 'login'])->name('login');
});
Route::group([
    'middleware' => "auth:api"
], function ($router) {
    Route::resource("roles",RoleController::class);

    Route::post("users/{id}",[UserController::class,"update"]);
    Route::resource("users",UserController::class);

    Route::resource("company",CompanyController::class);

    Route::post("categories/{id}",[CategorieController::class,"update"]);
    Route::resource("categories",CategorieController::class);

    Route::post("products/{id}",[ProductController::class,"update"]);
    Route::get("products/config",[ProductController::class,"config"]);
    Route::resource("products",ProductController::class);

    Route::resource("clients",ClientController::class);
  //hola
    Route::get("sales/search_sale/{comprobante}",[SaleController::class,"search_sale"]);
    Route::get("sales/config",[SaleController::class,"config"]);
    Route::post("sales/index",[SaleController::class,"index"]);
    Route::resource("sales",SaleController::class);

    Route::post("seend_sunat",[FacturacionElectronicaController::class,"sunat_seend"]);
    Route::post("sunat_nota_seend",[FacturacionElectronicaController::class,"sunat_nota_seend"]);

    Route::resource("sale-details",SaleDetailController::class);
    Route::resource("sale-payments",SalePaymentController::class);

    Route::get("guia/config",[GuiaRemisionController::class,"config"]);
    Route::post("guia/index",[GuiaRemisionController::class,"index"]);
    Route::resource("guia",GuiaRemisionController::class);

    Route::group(["prefix" => "kpi",'middleware' => ['permission:dashboard']],function(){
        Route::post("report_general",[SaleKpiController::class,"report_general"]);
        Route::post("sales_x_month_of_year",[SaleKpiController::class,"sales_x_month_of_year"]);
        Route::post("sales_x_day_of_month",[SaleKpiController::class,"sales_x_day_of_month"]);
        Route::post("categories_most_sales",[SaleKpiController::class,"categories_most_sales"]);
        Route::post("product_most_sales",[SaleKpiController::class,"product_most_sales"]);
        Route::post("client_most_sales",[SaleKpiController::class,"client_most_sales"]);
    });
});

Route::get("electronic-note-pdf/{n_operacion}",[FacturacionElectronicaController::class,"pdf"]);
Route::get("sales-pdf/{id}",[SaleController::class,"pdf"]);
Route::get("guia-remision-pdf/{id}",[GuiaRemisionController::class,"pdf"]);