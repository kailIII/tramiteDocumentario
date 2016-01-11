<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    protected $table = "document";

    protected $fillable = ['asunto','folios','name','detalle','office_id'];

    public function office(){
    	return $this->belongsTo('App\Office');
    }

    public function seguimientos(){
    	return $this->hasMany('App\Seguimiento');
    }
}
