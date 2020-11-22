<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AuthorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('author', function (Blueprint $table) {
            $table->id();
            $table->string('title', 100);
            $table->string('slug', 100);
            $table->string('designation', 100);
            $table->string('dob', 100);
            $table->string('country', 100);
            $table->string('email', 100);
            $table->string('phone', 100)->nullable();
            $table->text('description')->nullable();
            $table->text('author_feature')->nullable();
            $table->string('facebook_id', 100)->nullable()->unique();
            $table->string('twitter_id', 100)->nullable()->unique();
            $table->string('youtube_id', 100)->nullable()->unique();
            $table->string('pinterest_id', 100)->nullable()->unique();
            $table->string('author_img');
            $table->string('status', 10);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('author');
    }
}
