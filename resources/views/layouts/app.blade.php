<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@yield('title')</title>

    <!-- Bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />

    <!-- My CSS -->
    <link rel="stylesheet" href="{{ url('frontend/styles/main.css') }}" />

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Assistant:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- Navbar -->
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light bg-light px-3">
        <a href="#" class="navbar-brand">
          <img src="frontend/images/logo_nomads.png" alt="logo nomads" />
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

          <!-- Mobile button -->
          <form class="form-inline d-sm-block d-md-none">
            <button class="btn btn-login my-2 my-sm-0 px-4">Masuk</button>
          </form>

          <!-- Desktop button -->
          <form class="form-inline my-2 my-lg-0 d-none d-md-block">
            <button class="btn btn-login btn-navbar-right my-2 my-sm-0 px-4">
              Masuk
            </button>
          </form>
        </div>
      </nav>
    </div>

    @yield('content')

    <footer class="section-footer mt-5 mb-4 border-top">
      <div class="container pt-5 pb-5">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="row">
              <div class="col-12 col-lg-3">
                <h5>FEATURES</h5>
                <ul class="list-unstyled">
                  <li><a href="#">Reviews</a></li>
                  <li><a href="#">Community</a></li>
                  <li><a href="#">Social Media Kit</a></li>
                  <li><a href="#">Affiliate</a></li>
                </ul>
              </div>
              <div class="col-12 col-lg-3">
                <h5>ACCOUNT</h5>
                <ul class="list-unstyled">
                  <li><a href="#">Refund</a></li>
                  <li><a href="#">Security</a></li>
                  <li><a href="#">Rewards</a></li>
                </ul>
              </div>
              <div class="col-12 col-lg-3">
                <h5>COMPANY</h5>
                <ul class="list-unstyled">
                  <li><a href="#">Career</a></li>
                  <li><a href="#">Help Center</a></li>
                  <li><a href="#">Media</a></li>
                </ul>
              </div>
              <div class="col-12 col-lg-3">
                <h5>GET CONNECTED</h5>
                <ul class="list-unstyled">
                  <li><a href="#">Jakarta Selatan</a></li>
                  <li><a href="#">Indonesia</a></li>
                  <li><a href="#">0812 - 2222 - 8888</a></li>
                  <li><a href="#">supports@nomads.id</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid">
        <div
          class="row border-top justify-content-center align-items center pt-4"
        >
          <div class="col-auto text-gray-500 font-weight-light">
            2022 Copyright Nomads • All rights reserved • Made in Jakarta
          </div>
        </div>
      </div>
    </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <script src="{{ url('frontend/libraries/jquery/jquery-3.4.1.min.js') }}"></script>
    <script src="{{ url('frontend/libraries/retina-1.3.0/retina.min.js') }}"></script>
  </body>
</html>
