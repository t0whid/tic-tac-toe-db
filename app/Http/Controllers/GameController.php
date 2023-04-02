<?php

namespace App\Http\Controllers;

use App\Models\Turn;
use Illuminate\Http\Request;
use App\Events\CreateGameEvent;
use Illuminate\Support\Facades\Auth;

class GameController extends Controller
{
    public function createGame(Request $request)
    {
        $user=Auth::user() ?? 1;
        $req = $request->all();
        $check= event(new CreateGameEvent($req));
        return $check;
       
        
    }
}
