<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class News extends Model
{
    protected $dates = [
        'created_at' => 'datetime:d-m-Y'
    ];
}
