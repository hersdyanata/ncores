<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/dashboard', function () {
//     return view('modules.dashboard.index');
// })->middleware(['auth'])->name('dashboard');

Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
// Route::get('/menu-manager', [App\Http\Controllers\MenuManagerController::class, 'index'])->name('menu_manager');

/* ======================================================================= Route List Core ======================================================================= */
Route::post('core/switch-theme', [App\Http\Controllers\CoreController::class, 'switchTheme'])->name('switch_theme');
Route::resource('core', App\Http\Controllers\CoreController::class);
Route::resource('menu-manager', App\Http\Controllers\CoreMenuController::class);
Route::post('menu-manager/list', [App\Http\Controllers\CoreMenuController::class, 'list_menu'])->name('menu-manager.list_menu');
Route::post('menu-manager/predelete', [App\Http\Controllers\CoreMenuController::class, 'predelete_menu'])->name('menu-manager.predelete');
Route::post('menu-manager/delete', [App\Http\Controllers\CoreMenuController::class, 'delete_menu'])->name('menu-manager.delete');
Route::post('menu-manager/set-order-menu', [App\Http\Controllers\CoreMenuController::class, 'set_order_menu'])->name('menu-manager.set_order_menu');
Route::post('menu-manager/set-order-divider', [App\Http\Controllers\CoreMenuController::class, 'set_order_divider'])->name('menu-manager.set_order_divider');
Route::post('menu-manager/divider/store', [App\Http\Controllers\CoreMenuController::class, 'simpan_divider'])->name('save_divider');
Route::post('menu-manager/divider/list', [App\Http\Controllers\CoreMenuController::class, 'list_divider'])->name('core.list_divider');
Route::post('menu-manager/divider/read', [App\Http\Controllers\CoreMenuController::class, 'read_divider'])->name('core.read_divider');
Route::post('menu-manager/divider/update', [App\Http\Controllers\CoreMenuController::class, 'update_divider'])->name('update_divider');
Route::post('menu-manager/divider/predelete', [App\Http\Controllers\CoreMenuController::class, 'predelete_divider'])->name('predelete_divider');
Route::post('menu-manager/divider/delete', [App\Http\Controllers\CoreMenuController::class, 'delete_divider'])->name('delete_divider');
Route::get('menu-manager/divider/options', [App\Http\Controllers\CoreMenuController::class, 'divider_options'])->name('core.options_divider');
Route::post('menu-manager/divider/menu', [App\Http\Controllers\CoreMenuController::class, 'list_menu_divider'])->name('core.menu_divider');

Route::resource('usergroup', App\Http\Controllers\UsergroupController::class);
Route::post('usergroup/list', [App\Http\Controllers\UsergroupController::class, 'list_usergroup'])->name('usergorup.list');
Route::post('usergroup/predelete', [App\Http\Controllers\UsergroupController::class, 'predelete'])->name('usergroup.predelete');
Route::post('usergroup/delete', [App\Http\Controllers\UsergroupController::class, 'delete'])->name('usergroup.delete');

Route::resource('user', App\Http\Controllers\UserController::class);
Route::post('user/list', [App\Http\Controllers\UserController::class, 'list_user'])->name('user.list');
Route::post('user/predelete', [App\Http\Controllers\UserController::class, 'predelete'])->name('user.predelete');
Route::post('user/delete', [App\Http\Controllers\UserController::class, 'delete'])->name('user.delete');
/* ======================================================================= Route List Core ======================================================================= */

Route::resource('mst_vendor', App\Http\Controllers\MstVendorController::class);
Route::resource('mst_produk', App\Http\Controllers\MstProdukController::class);
Route::resource('mst_customer', App\Http\Controllers\MstCustomerController::class);
Route::resource('global_setting', App\Http\Controllers\ParGlobalSettingController::class);
Route::resource('level3', App\Http\Controllers\MenuLevelController::class);
Route::resource('level-up', App\Http\Controllers\LevelUpController::class);
Route::resource('level32', App\Http\Controllers\Level32Controller::class);



require __DIR__.'/auth.php';
