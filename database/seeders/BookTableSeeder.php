<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BookTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        DB::table("books")->insert([
            "choice" => $faker->randomElement(["cd", "book"]),
            "firstname" => $faker->name(),
            "surname" => $faker->name(),
            "price" => $faker->numberBetween(250, 500),
            "papl" => $faker->numberBetween(50, 95),
            "entered_by" => "admin",
        ]);
    }
}
