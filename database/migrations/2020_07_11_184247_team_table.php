<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TeamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('team', function (Blueprint $table) {
            $table->id();
            $table->string('fullname', 100);
            $table->string('designation', 100);
            $table->string('telephone', 100);
            $table->string('mobile', 100);
            $table->string('email', 100);
            $table->string('facebook_id', 100);
            $table->string('twitter_id', 100);
            $table->string('pinterest_id', 100);
            $table->text('profile')->nullable();
            $table->string('team_img', 100);
            $table->string('status', 100);
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
        Schema::dropIfExists('team');
    }
}
