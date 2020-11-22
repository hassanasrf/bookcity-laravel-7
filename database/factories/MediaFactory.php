<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Media;
use Faker\Generator as Faker;

$factory->define(Media::class, function (Faker $faker) {
	$title = $faker->name;
    return [
        'title' => $title,
		'slug' => Str::slug($title),
		'media_type' => $faker->randomElement(['Comics','Magazines']),
		'media_img' => 'No image found',
		'description' => $faker->paragraph,
		'status' => $faker->randomElement(['DEACTIVE','ACTIVE'])
    ];
});
