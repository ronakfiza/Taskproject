<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/index',[TaskController::class,'index']);
Route::get('/user/{name}',[TaskController::class,'welcome']);


Route::get('/',[TaskController::class,'viewform']);
Route::post('/',[TaskController::class,'signup']);

Route::get('/showtask',[TaskController::class,'showtask']);
//protected
Route::get('/task_dlt/{id}',[TaskController::class,'deletetask'])->middleware('security');
Route::get('/task_add',[TaskController::class,'addtask'])->middleware('security');
Route::post('/task_insert',[TaskController::class,'create_task'])->middleware('security');

Route::get('/show_single',[TaskController::class,'singletask']);
Route::post('/single_task',[TaskController::class,'show_singletask']);

Route::get('/no_access',[TaskController::class,'no_access']);

// Route::get('/login',[UserController::class,'login']);
Route::post('/login',[UserController::class,'login']);
Route::get('/login',[UserController::class,'showlogin']);
Route::get('/logout',[UserController::class,'logout']);

Route::get('/task_edit/{id}',[TaskController::class,'task_edit'])->middleware('security');
Route::post('/task_update/{id}',[TaskController::class,'task_update'])->middleware('security');





