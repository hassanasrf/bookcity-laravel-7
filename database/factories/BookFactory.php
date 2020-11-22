<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Book;
use Faker\Generator as Faker;

$factory->define(Book::class, function (Faker $faker) {
	$title = $faker->name;
    return [
        'category_id' => $faker->randomDigit,
		'author_id' => $faker->randomDigit,
		'title' => $title,
		'slug' => Str::slug($title, '-'),
		'availability' => $faker->randomElement(['IN STOCK','OUT OF STOCK']),
		'price' => $faker->numberBetween($min = 5000, $max = 30000),
		'rating' => $faker->numberBetween($min = 1, $max = 5),
		'publisher' => $faker->randomElement(['Oxford','Hodgsons', 'Paramuant', 'Galax']),
		'country_of_publisher' => $faker->country,
		'isbn' => $faker->isbn13,
		'isbn-10' => $faker->isbn10,
		'audience' => $faker->randomDigit,
		'format' => $faker->randomElement(['PDF', 'Text']),
		'language' => $faker->randomElement(['English','Spanish', 'Turkish', 'Arabic']),
		'total_pages' => $faker->numberBetween($min = 800, $max = 1800),
		'downloaded' => $faker->randomDigit,
		'edition_number' => $faker->randomDigit,
		'recommended' => $faker->randomElement(['N/A', 'Available']),
		'description' => $faker->paragraph,
		'book_img' => 'No image found',
		'book_upload' => $faker->date($format = 'd-m-Y', $max = 'now'),
		'status' => $faker->randomElement(['DEACTIVE','ACTIVE'])
    ];
});
