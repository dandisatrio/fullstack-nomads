@extends('layouts.login')
@section('title', 'Login | Nomads')

@section('content')
<main class="login-container">
    <div class="container">
      <div class="row page-login d-flex align-items-center">
        <div class="section-left col-12 col-md-6 col-sm-4 d-none d-sm-block">
          <h1 class="mb-4">We explore the new <br> life much better</h1>
          <img src="{{ url('frontend/images/login-images.png') }}" class="w-75 d-none d-sm-flex" alt="image login">
        </div>
        <div class="section-right col-12 col-md-4 col-sm-8">
          <div class="text-center">
            <h1 class="mb-4 d-sm-none">We explore the new <br> life much better</h1>
          </div>
          <div class="card">
            <div class="card-body">
              <div class="text-center">
                <img src="{{ url('frontend/images/logo_nomads.png') }}" class="w-50 mb-4" alt="image logo">
              </div>
              <form method="POST" action="{{ route('login') }}">
                @csrf

                <div class="form-floating mb-3">
                    <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="name@example.com" autofocus>
                    <label for="email" class="form-label">Email address</label>
                  
                @error('email')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
                </div>

                <div class="form-floating mb-3">
                  <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password" placeholder="password" required autocomplete="current-password">
                  <label for="password" class="form-label">Password</label>

                @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
                </div>

                <div class="d-grid gap-2">
                  <button type="submit" class="btn btn-primary">Sign In</button>
                </div>    
                
                <div class="d-grid gap-2 mt-2">
                    <a href="{{ route('register') }}" class="btn btn-register">Register Now</a>
                </div>                 

                @if (Route::has('password.request'))
                <p class="text-center mt-4">
                    <a href="{{ route('password.request') }}">Saya lupa password</a>
                </p>
                @endif
                
              </form>              
              
            </div>
          </div>
        </div>
      </div>
    </div>
</main>
@endsection
