<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	DB::table('users')->truncate();
    	
        factory(App\User::class)->create([
        	'name' => 'Benjamin',
        	'password' => bcrypt('@benjamin'),
        	'email' => 'christianbfc97@gmail.com',
        	'role' => 'admin'
        ]);
    }
}
