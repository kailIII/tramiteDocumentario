<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seguimiento extends Model
{
    protected $table = "seguimiento";

    protected $fillable = ['estado','document_id','office_id','user_id'];

    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function office(){
    	return $this->belongsTo('App\Office');
    }

    public function document()
    {
    	return $this->belongsTo('App\Document');
    }
}
