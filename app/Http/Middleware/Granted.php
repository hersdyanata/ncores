<?php

namespace App\Http\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Collection;
use DB;

use Closure;
use Auth;

use App\Models\CoreMenuModel as Menu;
use App\Models\CoreMenuDividerModel as Divider;

class Granted
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    
    public function handle($request, Closure $next){
        $accessed = $request->segment(1);

        if(session('group_id') != 0){

            
            $has_access = Arr::exists(session('granted_menu'), $accessed);
            if( $has_access == false ){
                abort(404);
            }

            $permission = collect(session('permission'));

            $accessed_menu_id = collect(session('granted_menu'))->where('menu_route', $accessed)->collapse()->all()['menu_id'];
            $page_permission = $permission->where('menu_id', $accessed_menu_id)->collapse()->all();
            
            $request->merge(array('page_permission' => $page_permission));
            return $next($request);
        }else{
            // $menus = Menu::orderBy('menu_div_id')
            //             ->orderBy('menu_order')
            //             ->get();

            // $divider = Divider::all();

            // $request->merge(array('all_menus' => $menus, 'dividers' => $divider));
            return $next($request);
        }

    }
}
