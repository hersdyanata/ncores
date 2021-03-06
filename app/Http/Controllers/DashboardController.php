<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth', 'granted']);
    }

    public function index(){
        return view('modules.dashboard.index')
                ->with([
                    'title' => 'Dashboard',
                ]);
    }

}
