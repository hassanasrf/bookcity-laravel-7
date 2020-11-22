<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Category;
use Faker\Generator as Faker;

$factory->define(Category::class, function (Faker $faker) {
    $title = $faker->name;
    return [
        'title' => $title,
        'slug' => Str::slug($title, '-'),
        'description' => $faker->paragraph,
        'status' => $faker->randomElement(['DEACTIVE','ACTIVE'])
    ];
});
