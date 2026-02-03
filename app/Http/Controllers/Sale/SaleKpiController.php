<?php

namespace App\Http\Controllers\Sale;

use Carbon\Carbon;
use App\Models\Sale\Sale;
use Illuminate\Http\Request;
use App\Models\Guia\GuiaRemision;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class SaleKpiController extends Controller
{
    public function report_general(){
        $year = date("Y");
        $month = date("m");
        $date_before = Carbon::parse($year."-".$month."-01")->subMonth(1);

        // 
        $total_sales_month_current = Sale::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->where("state_sale",1)
                                        ->sum("total");

        $total_sales_month_before = Sale::whereYear("created_at",$date_before->format("Y"))
                                        ->whereMonth("created_at",$date_before->format("m"))
                                        ->where("state_sale",1)
                                        ->sum("total");
        $variation_percentage_total_sales = $total_sales_month_before > 0 ? (($total_sales_month_current - $total_sales_month_before)/$total_sales_month_before) * 100 : 0;
        // 

        // 
        $total_cotiz_month_current = Sale::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->where("state_sale",2)
                                        ->sum("total");
        
        $total_cotiz_month_before = Sale::whereYear("created_at",$date_before->format("Y"))
                                        ->whereMonth("created_at",$date_before->format("m"))
                                        ->where("state_sale",2)
                                        ->sum("total");
        $variation_percentage_total_cotiz = $total_cotiz_month_before > 0 ? (($total_cotiz_month_current - $total_cotiz_month_before)/$total_cotiz_month_before) * 100 : 0;
        // 

        // 
        $total_factur_month_current = Sale::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->where("state_sale",1)
                                        ->whereNotNull("n_operacion")
                                        ->sum("total");
        $total_factur_month_before = Sale::whereYear("created_at",$date_before->format("Y"))
                                        ->whereMonth("created_at",$date_before->format("m"))
                                        ->where("state_sale",1)
                                        ->whereNotNull("n_operacion")
                                        ->sum("total");
        $variation_percentage_total_factur = $total_factur_month_before > 0 ? (($total_factur_month_current - $total_factur_month_before)/$total_factur_month_before) * 100 : 0;
        // 

        $total_guia_de_remision = GuiaRemision::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->count();

        $total_guia_de_remision_before = GuiaRemision::whereYear("created_at",$date_before->format("Y"))
                                        ->whereMonth("created_at",$date_before->format("m"))
                                        ->count();
        
        $variation_percentage_guia_de_remision_before = $total_guia_de_remision_before > 0 ? (($total_guia_de_remision - $total_guia_de_remision_before)/$total_guia_de_remision_before) * 100 : 0;
        
        return response()->json([
            "total_sales_month_current" => round($total_sales_month_current,2),
            "variation_percentage_total_sales"=> round($variation_percentage_total_sales,2),

            "total_cotiz_month_current" => round($total_cotiz_month_current,2),
            "variation_percentage_total_cotiz" => round($variation_percentage_total_cotiz,2),

            "total_factur_month_current" => round($total_factur_month_current,2),
            "variation_percentage_total_factur" => round($variation_percentage_total_factur,2),

            "total_guia_de_remision" => $total_guia_de_remision,
            "variation_percentage_guia_de_remision_before" => round($variation_percentage_guia_de_remision_before,2),
        ]);
    }

    public function sales_x_month_of_year(Request $request){
        $year = $request->year;
        $months_name = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");

        $sales_x_month_of_year_current = collect([]);
        $sales_x_month_of_year_current_query = DB::table("sales")->where("sales.deleted_at",NULL)
                                        ->where("sales.state_sale",1)
                                        ->whereYear("sales.created_at",$year)
                                        ->selectRaw("
                                            DATE_FORMAT(sales.created_at,'%Y-%m') as created_at_format,
                                            month(sales.created_at) as num_month,
                                            ROUND(SUM(sales.total),2) as total_sales,
                                            COUNT(*) as count_sales
                                        ")
                                        ->groupBy("created_at_format","num_month")
                                        ->get();

        foreach ($months_name as $key => $month_name) {
            $sale_month_current = $sales_x_month_of_year_current_query->where("num_month",$key+1)->first();
            if($sale_month_current){
                $sales_x_month_of_year_current->push($sale_month_current);
            }else{
                $sales_x_month_of_year_current->push([
                    "created_at_format" => $year."-".($key+1 > 9 ? $key+1 : "0".($key+1)),
                    "num_month" => $key+1,
                    "total_sales" => 0,
                    "count_sales" => 0,
                ]);
            }
        }
        
        $sales_x_month_of_year_before = collect([]);
        $sales_x_month_of_year_before_query = DB::table("sales")->where("sales.deleted_at",NULL)
                                        ->where("sales.state_sale",1)
                                        ->whereYear("sales.created_at",$year - 1)
                                        ->selectRaw("
                                            DATE_FORMAT(sales.created_at,'%Y-%m') as created_at_format,
                                            month(sales.created_at) as num_month,
                                            ROUND(SUM(sales.total),2) as total_sales,
                                            COUNT(*) as count_sales
                                        ")
                                        ->groupBy("created_at_format","num_month")
                                        ->get();

        foreach ($months_name as $key => $month_name) {
            $sale_month_before = $sales_x_month_of_year_before_query->where("num_month",$key+1)->first();
            if($sale_month_before){
                $sales_x_month_of_year_before->push($sale_month_before);
            }else{
                $sales_x_month_of_year_before->push([
                    "created_at_format" => ($year - 1)."-".($key+1 > 9 ? $key+1 : "0".($key+1)),
                    "num_month" => $key+1,
                    "total_sales" => 0,
                    "count_sales" => 0,
                ]);
            }
        }
        return response()->json([
            "total_sales_year_current" => round($sales_x_month_of_year_current->sum("total_sales"),2),
            "total_sales_year_before" => round($sales_x_month_of_year_before->sum("total_sales"),2),
            "sales_x_month_of_year_before" => $sales_x_month_of_year_before,
            "sales_x_month_of_year_current" => $sales_x_month_of_year_current,
            "months_name" => $months_name,
        ]);
    }

    public function sales_x_day_of_month(Request $request){
        $year = $request->year;
        $month = $request->month;


        $sales_for_day_month = DB::table("sales")->where("sales.deleted_at",NULL)
                                ->where("sales.state_sale",1)
                                ->whereYear("sales.created_at",$year)
                                ->whereMonth("sales.created_at",$month)
                                ->selectRaw("
                                    DATE_FORMAT(sales.created_at,'%Y-%m-%d') as created_format,
                                    DATE_FORMAT(sales.created_at,'%m-%d') as day_created_format,
                                    ROUND(SUM(sales.total),2) as total_sales,
                                    COUNT(*) as count_sales
                                ")
                                ->groupBy("created_format","day_created_format")
                                ->get();
         
        $total_sales_current = round($sales_for_day_month->sum("total_sales"),2);
        $date_last = Carbon::parse($year."-".$month."-01")->subMonth();

        $total_sales_before = DB::table("sales")->where("sales.deleted_at",NULL)
                                ->where("sales.state_sale",1)
                                ->whereYear("sales.created_at",$date_last->format("Y"))
                                ->whereMonth("sales.created_at",$date_last->format("m"))
                                ->sum("sales.total");

        $percentageV = 0;
        if($total_sales_current > 0){
            $percentageV = round((($total_sales_current - $total_sales_before)/$total_sales_current)*100,2);
        }

        $total_factur_month_current = Sale::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->where("state_sale",1)
                                        ->whereNotNull("n_operacion")
                                        ->sum("total");


        $total_igv_month_current = Sale::whereYear("created_at",$year)
                                        ->whereMonth("created_at",$month)
                                        ->where("state_sale",1)
                                        ->whereNotNull("n_operacion")
                                        ->sum("igv");

        return response()->json([
            "percentageV" => $percentageV,
            "total_sales_current" => round($total_sales_current,2),
            "total_sales_before" => round($total_sales_before,2),
            "sales_for_day_month" => $sales_for_day_month,
            "total_factur_month_current" => round($total_factur_month_current,2),
            "total_igv_month_current" => round($total_igv_month_current,2),
        ]);
    }

    public function categories_most_sales(Request $request){
        $year = $request->year;
        $month = $request->month;

        $categories_most_sales = DB::table("sales")->where("sales.deleted_at",NULL)
                                    ->join("sale_details","sale_details.sale_id","=","sales.id")
                                    ->where("sale_details.deleted_at",NULL)
                                    ->join("categories","sale_details.product_categorie_id","=","categories.id")
                                    ->where("sales.state_sale",1)
                                    ->whereYear("sales.created_at",$year)
                                    ->whereMonth("sales.created_at",$month)
                                    ->selectRaw("
                                        sale_details.product_categorie_id as categorie_id,
                                        categories.title as categorie_name,
                                        ROUND(SUM(sale_details.subtotal),2) as total_sales,
                                        SUM(sale_details.quantity) as count_products
                                    ")
                                    ->groupBy("categorie_id","categorie_name")
                                    ->orderBy("total_sales","desc")
                                    ->get();
        return response()->json([
            "categories_most_sales" => $categories_most_sales,
        ]);
    }

    public function product_most_sales(Request $request){
        $year = $request->year;
        $month = $request->month;

        $product_most_sales = collect([]);
        $query_products = DB::table("sales")->where("sales.deleted_at",NULL)
                                ->join("sale_details","sale_details.sale_id","=","sales.id")
                                ->where("sale_details.deleted_at",NULL)
                                ->join("products","sale_details.product_id","=","products.id")
                                ->where("sales.state_sale",1)
                                ->whereYear("sales.created_at",$year)
                                ->whereMonth("sales.created_at",$month)
                                ->selectRaw("
                                    sale_details.product_id as product_id,
                                    products.title as product_name,
                                    products.sku as product_sku,
                                    products.imagen as product_imagen,
                                    ROUND(SUM(sale_details.igv),2) as total_igv,
                                    ROUND(SUM(sale_details.subtotal),2) as total_sales,
                                    SUM(sale_details.quantity) as count_products
                                ")
                                ->groupBy("product_id","product_name","product_imagen","product_sku")
                                ->orderBy("total_sales","desc")
                                ->get();

        $product_most_sales = $query_products->map(function($product) {
            $link = "";
            if(str_contains($product->product_imagen,"https://") || str_contains($product->product_imagen,"http://")){
                $link = $product->product_imagen;
            }else{
                $link =  env('APP_URL').'/storage/'.$product->product_imagen;
            }
            $product->product_imagen = $link;
            return $product;
        });

        return response()->json([
            "product_most_sales" => $product_most_sales,
        ]);
    }

    public function client_most_sales(Request $request){
        $year = $request->year;
        $month = $request->month;

        $client_most_sale = DB::table("sales")->whereNull("sales.deleted_at")
                                ->join("clients","sales.client_id","=","clients.id")
                                ->where("sales.state_sale",1)
                                ->whereYear("sales.created_at",$year)
                                ->whereMonth("sales.created_at",$month)
                                ->selectRaw("
                                    sales.client_id as client_most_sale_id,
                                    clients.full_name as client_most_sale,
                                    ROUND(SUM(sales.igv),2) as total_igv,
                                    ROUND(SUM(sales.total),2) as total_sales,
                                    count(*) as count_sales
                                ")
                                ->groupBy("client_most_sale_id","client_most_sale")
                                ->orderBy("total_sales","desc")
                                ->get();
        return response()->json([
            "client_most_sale" => $client_most_sale,
        ]);
    }

}
