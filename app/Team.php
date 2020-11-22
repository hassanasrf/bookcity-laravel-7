<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    protected $table = 'team';
    protected $guarded = ['id', 'created_at', 'updated_at' ];
}
