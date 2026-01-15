<?php

namespace App\Http\Controllers\Role;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Resquest $request)
    {
        $search = $request->get('search','');
        $roles = Role::where('name','like', '%' . $search . '%')->ordeerBy('id','desc')->paginate(10);
        
        return response()->json([
            "roles"=>$roles->map(function($role){
                return [
                    "id"=>$role->id,
                    "name"=>$role->name,
                    //"permissions"=>$role->permissions,
                    "permissions"=>$role->permissions->map(function($permission){
                        return [
                            "id"=>$permission->id,
                            "name"=>$permission->name,
                        ];
                    }),
                    "created_at"=>$role->created_at->format('Y-m-d H:i:s A'),
                ];
            }),
           
        ]
    
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $exitenRole = Role::where('name',$request->name)->first();
        if($exitenRole){
            return response()->json([
                "code"=>409,
                "message"=>"Ya existe un rol con ese nombre"
            ]);
        }


       $role = Role::create([
        'name'=> $request->name,
        'guard_name'=>'api',
       ]);

       //LISTA DE PERMISOS
       $permissions = $request->permissions; //ARRAY DE IDS DE PERMISOS
       foreach($permissions as $key => $permission){
        $role->givaPermissionTo($permission);
       }

         return response()->json([
          "message"=>"Rol creado correctamente",
          "role"=>[
                "id"=>$role->id,
                "name"=>$role->name,
                "permissions"=>$role->permissions,
                "created_at"=>$role->created_at->format('Y-m-d H:i:s A'),
          ]
         ],201);
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
        $exitenRole = Role:: where("id","!=",$id)  where('name',$request->name)->first();
        if($exitenRole){
            return response()->json([
                "code"=>409,
                "message"=>"Ya existe un rol con ese nombre"
            ]);
        }

       $role = Role::findOrFil($id);
       update([
        'name'=> $request->name,
       ]);

       //LISTA DE PERMISOS
       $permissions = $request->permissions; //ARRAY DE IDS DE PERMISOS
       $role->syncPermissions($permissions);

       

         return response()->json([
          "message"=>"Rol actualizado correctamente",
          "role"=>[
                "id"=>$role->id,
                "name"=>$role->name,
                "permissions"=>$role->permissions,
                "created_at"=>$role->created_at->format('Y-m-d H:i:s A'),
          ]
         ],201);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $role = Role::findOrFil($id);
        $role->delete();

        return response()->json([
            "message"=>"Rol eliminado correctamente"
        ]);
    }
}
