<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Office extends Model
{
    protected $table = "office";

    protected $fillable = ['name_office'];

    public function users(){
    	return $this->hasMany('App\User');
    }

    public function documents(){
    	return $this->hasMany('App\Document');
    }

    public function seguimientos(){
    	return $this->hasMany('App\Seguimiento');
    }
}
