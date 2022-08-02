<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Book;

class BookFactory extends Factory
{
    protected $model = Book::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            
                "choice" => $this->faker->randomElement(["cd", "book"]),
                "firstname" => $this->faker->name(),
                "surname" => $this->faker->name(),
                "price" => $this->faker->numberBetween(250, 500),
                "papl" => $this->faker->numberBetween(50, 95),
                "entered_by" => "admin",
            
        ];
    }
}
