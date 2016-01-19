<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $table = "document";

    protected $fillable = ['id','asunto','folios','name','detalle','office_id'];

    public function user(){
    	return $this->belongsTo('App\User');
    }
}
