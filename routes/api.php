<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register-user', 'App\Http\Controllers\AuthenticationController@register');
Route::post('/login', 'App\Http\Controllers\AuthenticationController@login');
Route::get('/logout', 'App\Http\Controllers\AuthenticationController@logout');

Route::delete('/entries/{id}', 'App\Http\Controllers\EntriesController@deleteEntry');
Route::get('/entries', 'App\Http\Controllers\EntriesController@getEntries');
Route::get('/last-entry', 'App\Http\Controllers\EntriesController@getLastEntry');
Route::post('/entries', 'App\Http\Controllers\EntriesController@saveEntry');
Route::put('/entries/{id}', 'App\Http\Controllers\EntriesController@updateEntry');

Route::get('/destination', 'App\Http\Controllers\DestinationController@getDestinations');
Route::post('/destination', 'App\Http\Controllers\DestinationController@saveDestination');
Route::put('/destination/{id}', 'App\Http\Controllers\DestinationController@update');

Route::get('/dashboard', 'App\Http\Controllers\DashboardController@getDashboardData');

Route::get('/app-users', 'App\Http\Controllers\AppUsersController@getAppUsers');
Route::post('/app-users', 'App\Http\Controllers\AppUsersController@saveAppUser');
Route::put('/app-users-reset-password/{userid}', 'App\Http\Controllers\AppUsersController@resetPassword');

Route::get('/backup-db', 'App\Http\Controllers\BackupDatabaseController@backupDb');
