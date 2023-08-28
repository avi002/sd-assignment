<?php

namespace Database\Factories;

use App\Models\Subject;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

class SubjectFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Subject::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $plucked = User::where('role','=','teacher')->pluck('id')->toArray();
        return [
            'name' => Str::random(10),
            'teacher_id' => $this->faker->randomElement($plucked)
            
        ];
    }
}
