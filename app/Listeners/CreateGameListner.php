<?php

namespace App\Listeners;


use App\Models\Game;
use App\Models\Turn;
use App\Events\CreateGameEvent;
use Illuminate\Support\Facades\Gate;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class CreateGameListner
{
    public function handle(CreateGameEvent $event)
    {
        $user = 1;
        $opponent = $event->user;
        $gameExist = Game::where('player_1',$user)->where('player_2',$opponent['opponent_id'])->where('status','1')->first();
       /*  dd(is_null($gameExist),$gameExist); */
        if(!is_null($gameExist) && $gameExist->count())
        {
            return "You have already playing gmae!!";
        }

        $game =Game::create([
            'player_1' => $user,
            'player_2' => $opponent['opponent_id']
        ]);
      
        $turn =Turn::create([
            'game_id' => $game->id,
            'whose_turn' => $opponent['opponent_id'],
            'player_1' => $user,
            'player_2' => $opponent['opponent_id'],
            'player_1_total' => 0,
            'player_2_total' => 0,

        ]);
        return "You have successfully created a new game!";
      
    }
}
