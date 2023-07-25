<?php

use App\Http\Controllers\APIs\AuthController;
use App\Http\Controllers\APIs\NoteController;
use App\Http\Controllers\APIs\UserController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

/**
 * route auth
 */
Route::group(['prefix' => 'auth'], function () {
    Route::get('/me', [AuthController::class, 'me']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/sendOtpEmail', [AuthController::class, 'sendOtpEmail']);
    Route::post('/emailVerification', [AuthController::class, 'emailVerification']);
});
/**
 * route users
 */
Route::group([
    'prefix' => 'users',
    'middleware' => [
        'api',
        // 'auth.firebase',
        'jwt.auth',
        'checkRole:admin'
    ]
], function () {
    Route::get('', [UserController::class, 'index']);
    Route::post('', [UserController::class, 'store']);
    Route::get('/{user_id}', [UserController::class, 'show']);
    Route::put('/{user_id}', [UserController::class, 'update']);
    Route::delete('/{user_id}', [UserController::class, 'destroy']);
});
/**
 * route notes
 */

Route::group(['prefix' => 'notes'], function () {
    Route::get('', [NoteController::class, 'index']);
    Route::get('/{note_id}', [NoteController::class, 'show']);

    Route::middleware([
        'auth:api',
        'jwt.auth',
        'checkRole:admin|member'
    ])->group(function () {
        Route::post('', [NoteController::class, 'store']);
        Route::put('/{node_id}', [NoteController::class, 'update']);
        Route::delete('/{node_id}', [NoteController::class, 'destroy']);
    });
});
