<?php

namespace App\Http\Controllers\Client;

use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Client\CompanyResource;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $company = Company::first();

        return response()->json([
            "company" => $company ? CompanyResource::make($company) : null,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $company = Company::first();
        if($company){
            $company->update($request->all());
        }else{
            Company::create($request->all());
        }
        return response()->json([
            "code" => 200,
            "message" => "Se actualizo la información de la empresa" 
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
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
