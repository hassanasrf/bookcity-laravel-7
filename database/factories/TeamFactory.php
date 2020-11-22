<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Team;
use Faker\Generator as Faker;

$factory->define(Team::class, function (Faker $faker) {
	$title = $faker->name;
    return [
        'fullname' => $faker->title,
		'designation' => $faker->randomElement(['Manager','CEO','Writter']),
		'telephone' => $faker->phoneNumber,
		'mobile' => $faker->phoneNumber,
		'email' => $faker->safeEmail,
		'facebook_id' => $faker->freeEmail,
		'twitter_id' => $faker->freeEmail,
		'pinterest_id' => $faker->freeEmail,
		'profile' => $faker->paragraph, 
		'team_img' => 'No image found',
		'status' => $faker->randomElement(['DEACTIVE','ACTIVE'])
    ];
});
