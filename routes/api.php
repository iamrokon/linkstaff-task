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


Route::middleware('auth:api')->group(function(){
    Route::get('/users','UsersController@index');
    Route::get('/logged-in-user','UsersController@userInfo');
    Route::post('/page/create','PageController@store');
    Route::post('/person/attach-post','PostController@store');
    Route::post('/page/{pageId}/attach-post','PostController@storePostByPage');
});

Route::post('auth/register', 'UsersController@store');

Route::post('auth/login', 'LoginController@login')->name('loginPage');