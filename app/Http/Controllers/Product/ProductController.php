<?php

namespace App\Http\Controllers\Product;

use Illuminate\Http\Request;
use App\Models\Product\Product;
use App\Models\Product\Categorie;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // "/users?search=jose"
        $search = $request->get("search");
        $categorie_id = $request->get("categorie_id");
        $state = $request->get("state");
        $unidad_medida = $request->get("unidad_medida");

        $products = Product::filterAdvance($search,$categorie_id,$state,$unidad_medida)
                    ->orderBy("id","desc")->paginate(25);

        return response()->json([
            "total" => $products->total(),
            "pagination" => 25,
            "products" => ProductCollection::make($products),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $is_exits_product = Product::where("title",$request->title)->first();
        if($is_exits_product){
            return response()->json([
                "code" => 405,
                "message" => "El titulo del producto ya existe"  
            ]);
        }
        $is_exits_product = Product::where("sku",$request->sku)->first();
        if($is_exits_product){
            return response()->json([
                "code" => 405,
                "message" => "El sku del producto ya existe"  
            ]);
        }

        if($request->hasFile("image")){
            $path = Storage::putFile("products",$request->file("image"));
            $request->request->add(["imagen" => $path]);
        }

        $product = Product::create($request->all());

        return response()->json([
            "code" => 200,
            "message" => "El producto se creado correctamente"
        ]);
    }

    public function config(){

        $categories = Categorie::where("state",1)->get();

        return response()->json([
            "categories" => $categories->map(function($categorie) {
                return [
                    "id" => $categorie->id,
                    "title" => $categorie->title
                ];
            })
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $product = Product::findOrFail($id);

        return response()->json([
            "message" => "Producto devuelto",
            "product" => ProductResource::make($product)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $is_exits_product = Product::where("id","<>",$id)->where("title",$request->title)->first();
        if($is_exits_product){
            return response()->json([
                "code" => 405,
                "message" => "El titulo del producto ya existe"  
            ]);
        }
        $is_exits_product = Product::where("id","<>",$id)->where("sku",$request->sku)->first();
        if($is_exits_product){
            return response()->json([
                "code" => 405,
                "message" => "El sku del producto ya existe"  
            ]);
        }

        $product = Product::findOrFail($id);

        if($request->hasFile("image")){
            if($product->imagen){
                Storage::delete($product->imagen);
            }
            $path = Storage::putFile("products",$request->file("image"));
            $request->request->add(["imagen" => $path]);
        }

        $product->update($request->all());

        return response()->json([
            "code" => 200,
            "message" => "El producto se ha editado correctamente"
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $product = Product::findOrFail($id);
        if($product->imagen){
            Storage::delete($product->imagen);
        }
        $product->delete();

        return response()->json([
            "code" => 200,
            "message" => "El producto se ha eliminado correctamente"
        ]);
    }
}
