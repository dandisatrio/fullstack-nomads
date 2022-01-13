<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\Admin\DashboardController;

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/detail', [DetailController::class, 'index'])->name('detail');
Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::get('/success', [CheckoutController::class, 'success'])->name('checkout-success');

Route::prefix('admin')
    ->namespace('Admin')
    ->middleware(['auth','admin'])
    ->group(function() {
        Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    });

Auth::routes(['verify' => true]);
