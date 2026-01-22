<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Company extends Model
{
    use SoftDeletes;
    protected $fillable = [
        "razon_social",
        "razon_social_comercial",
        "phone",
        "email",
        "n_document",
        "birth_date",
        "ubigeo_region",
        "ubigeo_provincia",
        "ubigeo_distrito",
        "region",
        "provincia",
        "distrito",
        "address",
        "urbanizacion",
        "cod_local",
    ];

    public function setCreatedAtAttribute($value)
    {
    	date_default_timezone_set('America/Lima');
        $this->attributes["created_at"]= Carbon::now();
    }

    public function setUpdatedAtAttribute($value)
    {
    	date_default_timezone_set("America/Lima");
        $this->attributes["updated_at"]= Carbon::now();
    }
}
