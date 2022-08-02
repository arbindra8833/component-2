<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Database\Seeders\BookTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
        // DB::table('users')->insert([
        //     'email' => 'admin@admin.com',
        //     'password'=>Hash::make('password'),
        //     'name'=> 'admin',
        //     'is_admin'=>1
        // ]);
        $this->call([
            BookTableSeeder::class
        ]);
        \App\Models\Book::factory(20)->create();
    }

}