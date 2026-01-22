<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Models\Client\Client;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Resources\Client\ClientResource;
use App\Http\Resources\Client\ClientCollection;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        // "/users?search=jose"
        $search = $request->get("search");
        $clients = Client::where(DB::raw("CONCAT(clients.full_name,' ',IFNULL(clients.phone,''),' ',
                            clients.email,' ',IFNULL(clients.n_document,''))"),"like","%".$search."%")
                    ->orderBy("id","desc")->paginate(25);
        return response()->json([
            "total" => $clients->total(),
            "pagination" => 25,
            "clients" => ClientCollection::make($clients),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        $is_exits_client = Client::where("full_name",$request->full_name)->first();

        if($is_exits_client){
            return response()->json([
                "code" => 405,
                "message" => "El nombre completo del cliente ya existe"  
            ]);
        }

        $is_exits_client = Client::where("n_document",$request->n_document)->first();

        if($is_exits_client){
            return response()->json([
                "code" => 405,
                "message" => "El n° de documento del cliente ya existe"  
            ]);
        }
        $request->request->add(["user_id" => auth('api')->user()->id]);
        $client = Client::create($request->all());

        return response()->json([
            "client" => ClientResource::make($client),
            "code" => 200,
            "message" => "El cliente se ha creado correctamente"
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
        $is_exits_client = Client::where("id","<>",$id)->where("full_name",$request->full_name)->first();

        if($is_exits_client){
            return response()->json([
                "code" => 405,
                "message" => "El nombre completo del cliente ya existe"  
            ]);
        }

        $is_exits_client = Client::where("id","<>",$id)->where("n_document",$request->n_document)->first();

        if($is_exits_client){
            return response()->json([
                "code" => 405,
                "message" => "El n° de documento del cliente ya existe"  
            ]);
        }
        
        $client = Client::findOrFail($id);
        $client->update($request->all());

        return response()->json([
            "client" => ClientResource::make($client),
            "code" => 200,
            "message" => "El cliente se ha editado correctamente"
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $client = Client::findOrFail($id);
        $client->delete();
        return response()->json([
            "code" => 200,
            "message" => "El cliente se ha eliminado correctamente"
        ]);
    }
}
