<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;

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
// website
Route::get('/',[WebsiteController::class, 'index']);
Route::get('about-us',[WebsiteController::class, 'about']);
Route::get('contact-us',[WebsiteController::class, 'contact']);
Route::get('services',[WebsiteController::class, 'services']);


Route::get('register', function () {
    return view('website.pages.register');
});
Route::post('create-student',[StudentController::class, 'store']);
// // end



// login control
Route::get('login',[LoginController::class, 'login']);
Route::post('loginstore',[LoginController::class,'loginstore']);
Route::group(['middleware' => 'studentlogin'], function(){
    // YOUR ROUTES HERE
    Route::get('student',[StudentController::class,'index']);
});
Route::group(['middleware' => 'teacherlogin'], function(){
    // YOUR ROUTES HERE
    Route::get('teacher',[TeacherController::class,'index']);
});
Route::group(['middleware' => 'adminlogin'], function(){
    // YOUR ROUTES HERE
    Route::get('dashboard',[AdminController::class,'dashboard']);
    Route::get('showstudents',[StudentController::class,'showstudents']);
    Route::get('edit-student/{id}',[StudentController::class,'edit']);
    Route::post('update-student/{id}',[StudentController::class,'update']);
    Route::get('delete-student/{id}',[StudentController::class,'delete']);
    Route::get('add-student',[StudentController::class,'add']);
    Route::post('admin-create-student',[StudentController::class, 'store']);
    Route::get('showteachers',[TeacherController::class,'showteachers']);
    Route::get('edit-teacher/{id}',[TeacherController::class,'edit']);
    Route::post('update-teacher/{id}',[TeacherController::class,'update']);
    Route::get('delete-teacher/{id}',[TeacherController::class,'delete']);
    Route::get('add-teacher',[TeacherController::class,'add']);
    Route::post('admin-create-teacher',[TeacherController::class, 'store']);
    Route::get('showsubjects',[SubjectController::class,'showsubjects']);
    Route::get('upload-image',[UploadController::class,'index']);
    Route::post('store-image',[UploadController::class,'store']);
});


Route::get('logout',[LoginController::class,'logout']);