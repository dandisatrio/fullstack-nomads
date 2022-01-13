<!-- Navbar -->
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light px-3">
      <a href="{{ route('home') }}" class="navbar-brand">
        <img src="{{ url('frontend/images/logo_nomads.png') }}" alt="logo nomads" />
      </a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto me-3">
          <li class="nav-item mx-md-2">
            <a class="nav-link active" href="#">Home</a>
          </li>
          <li class="nav-item mx-md-2">
            <a class="nav-link" href="#">Paket Travel</a>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdown"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Services
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">link</a></li>
              <li><a class="dropdown-item" href="#">link</a></li>
              <li><a class="dropdown-item" href="#">link</a></li>
            </ul>
          </li>
          <li class="nav-item mx-md-2">
            <a class="nav-link" href="#">Testimonial</a>
          </li>
        </ul>

        @guest
          <!-- Mobile button -->
          <form class="form-inline d-sm-block d-md-none">
            <button class="btn btn-login my-2 my-sm-0 px-4" type="button" 
              onclick="event.preventDefault(); location.href=`{{ url('login') }}`;">
              Masuk
          </button>
          </form>

          <!-- Desktop button -->
          <form class="form-inline my-2 my-lg-0 d-none d-md-block">
            <button class="btn btn-login btn-navbar-right my-2 my-sm-0 px-4" type="button" 
              onclick="event.preventDefault(); location.href=`{{ url('login') }}`;">
              Masuk
            </button>
          </form>
        @endguest

        @auth
          <!-- Mobile button -->
          <form class="form-inline d-sm-block d-md-none" action="{{ url('logout') }}" type="submit" method="POST">
            @csrf
            <button class="btn btn-login my-2 my-sm-0 px-4" type="submit">
              Keluar
          </button>
          </form>

          <!-- Desktop button -->
          <form class="form-inline my-2 my-lg-0 d-none d-md-block" action="{{ url('logout') }}" type="submit" method="POST">
            @csrf
            <button class="btn btn-login btn-navbar-right my-2 my-sm-0 px-4" type="submit">
              Keluar
            </button>
          </form>
        @endauth
      </div>
    </nav>
</div>