<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class MenuManagerController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware(['auth', 'verified']);
    // }

    protected $user;
    public function __construct(){
        $this->middleware(['auth']);
    }

    public function index(Request $request){
        return view('modules.menu_manager.index')
                ->with([
                    'title' => 'Menu Manager',
                ]);
    }

}
