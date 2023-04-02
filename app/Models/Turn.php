<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Turn extends Model
{
    use HasFactory;
    protected $fillable = [
        'game_id',
        'player_1',
        'player_2',
        'whose_turn',
        'player_1_total',
        'player_2_total',
        'status'
    ];
}
