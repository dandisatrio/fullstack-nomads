<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Admin\DashboardController;

Route::get('/', [HomeController::class, 'index']);

Route::prefix('admin')
    ->namespace('Admin')
    ->group(function() {
        Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    });