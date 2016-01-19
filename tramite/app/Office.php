<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Office extends Model
{
    protected $table = "office";

    protected $fillable = ['name'];

    public function users(){
    	return $this->hasMany('App\User');
    }
}
