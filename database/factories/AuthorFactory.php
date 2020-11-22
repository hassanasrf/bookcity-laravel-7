<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Author;
use Faker\Generator as Faker;

$factory->define(Author::class, function (Faker $faker) {
    $title = $faker->name;
    return [
        'title' => $title,
        'slug' => Str::slug($title),
        'designation' => $faker->jobTitle,
        'dob' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'country' => $faker->country,
        'email' => $faker->safeEmail,
        'phone' => $faker->phoneNumber,
        'description' => $faker->paragraph,
        'author_feature' => $faker->randomElement(array('no','yes')),
        'facebook_id' => $faker->freeEmail,
        'twitter_id' => $faker->freeEmail,
        'youtube_id' => $faker->freeEmail,
        'pinterest_id' => $faker->freeEmail,
        'author_img' => 'No image found',
        'status' => $faker->randomElement(array('DEACTIVE','ACTIVE')),
    ];
});
