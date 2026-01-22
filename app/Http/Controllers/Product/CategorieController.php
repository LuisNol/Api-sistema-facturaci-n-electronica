<?php

namespace App\Http\Controllers\Product;

use Illuminate\Http\Request;
use App\Models\Product\Categorie;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class CategorieController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // list?search=admin
        $search = $request->get("search");

        $categories = Categorie::where("title","like","%".$search."%")->orderBy("id","desc")->paginate(25);

        return response()->json([
            "total" => $categories->total(),
            "pagination" => 25,
            "categories" => $categories->map(function($categorie) {
                return [
                    "id" => $categorie->id,
                    "title" => $categorie->title,
                    "state" => $categorie->state,
                    "imagen" => env("APP_URL")."storage/".$categorie->imagen,
                    "created_at" => $categorie->created_at->format("Y-m-d h:i A"),
                ];
            }),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $exist_categorie = Categorie::where("title",$request->title)->first();
        if($exist_categorie){
            return response()->json([
                "code" => 405,
                "message" => "El nombre de esta categoria ya existe"  
            ]);
        }

        $path = "";

        if($request->hasFile("image")){
            $path = Storage::putFile("categories",$request->file("image"));
        }

        $categorie = Categorie::create([
           "title" => $request->title,
            "imagen" => $path,
            "state" => $request->state
        ]);

        return response()->json([
            "categorie" => [
                "id" => $categorie->id,
                "title" => $categorie->title,
                "state" => $categorie->state,
                "imagen" => env("APP_URL")."storage/".$categorie->imagen,
                "created_at" => $categorie->created_at->format("Y-m-d h:i A"),
            ],
            "code" => 200,
            "message" => "La categoria se ha registrado correctamente"  
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $exist_categorie = Categorie::where("id","<>",$id)->where("title",$request->title)->first();
        if($exist_categorie){
            return response()->json([
                "code" => 405,
                "message" => "El nombre de esta categoria ya existe"  
            ]);
        }

        $categorie = Categorie::findOrFail($id);
        $path = "";

        if($request->hasFile("image")){
            if($categorie->imagen){
                Storage::delete($categorie->imagen);
            }
            $path = Storage::putFile("categories",$request->file("image"));
            $categorie->update([
                "imagen" => $path
            ]);
        }

        $categorie->update([
           "title" => $request->title,
            "state" => $request->state,
        ]);

        return response()->json([
            "categorie" => [
                "id" => $categorie->id,
                "title" => $categorie->title,
                "state" => $categorie->state,
                "imagen" => env("APP_URL")."storage/".$categorie->imagen,
                "created_at" => $categorie->created_at->format("Y-m-d h:i A"),
            ],
            "code" => 200,
            "message" => "La categoria se ha editado correctamente"  
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $categorie = Categorie::findOrFail($id);
        $categorie->delete();

        return response()->json([
            "message" => "La categoria se elimino correctamente"
        ]);
    }
}
