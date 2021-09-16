<?php

namespace App\Http\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Collection;
use DB;

use Closure;
use Auth;

use App\Models\CoreMenuModel as Menu;

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
        $userLogin = Auth::user();
        $accessed = $request->segment(1);

        if($userLogin->group_id != 0){
            $properties = $userLogin->permissions();
            $menus = $properties['menus'];
            $permission = collect($properties['actions']['array_privileges']);

            $arr_granted = array();
            foreach($menus as $r){
                $arr_granted[$r->menu_route_name] = array(
                    'menu_id' => $r->menu_id,
                    'menu_name' => $r->menu_nama_ina,
                    'menu_route' => $r->menu_route_name,
                );
            }
            
            $has_access = Arr::exists($arr_granted, $accessed);
            if( $has_access == false ){
                abort(404);
            }

            $accessed_menu_id = collect($arr_granted)->where('menu_route', $accessed)->collapse()->all()['menu_id'];
            $permission_page = $permission->where('menu_id', $accessed_menu_id)->collapse()->all();
            
            $request->merge(array('all_menus' => $menus, 'permission' => $permission_page));
            return $next($request);
        }else{
            $menus = Menu::where('menu_route_name', '!=', '#')
                        ->orderBy('menu_div_id')
                        ->orderBy('menu_order')
                        ->get();

            $request->merge(array('all_menus' => $menus));
            return $next($request);
        }

    }
}
