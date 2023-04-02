<?php

namespace App\Http\Controllers;

use App\Models\Turn;
use Illuminate\Http\Request;

class TurnController extends Controller
{
    public function createTurn(Request $request)
    {
        $user = 2; //have to do dynamic with auth
        $turn = Turn::where('whose_turn', $user)->where('status', '1')->where('game_id', $request->game_id)->first();
        $player_1 = $turn->player_1;
        $player_2 = $turn->player_2;

        if ($turn->count()) {
            if($user==$player_1){
                $turn->update([
                    'player_1_total' => $turn->player_1_total+1,
                    'whose_turn' =>  $player_2,
                ]);
            }else{
                $turn->update([
                    'player_2_total' => $turn->player_2_total+1,
                    'whose_turn' => $player_1,
                ]);
            }

            if($turn->player_1_total+$turn->player_2_total+1){
                $turn->update([
                    'status'=>2
                ]);
            }
           
        }
       
        return "Game End";


    }
}
