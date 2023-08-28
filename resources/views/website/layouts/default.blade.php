<!DOCTYPE html>
<html lang="en">

<head>

  @include('website.includes.head')

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    @include('website.includes.nav')
  </nav>

  <!-- Page Content -->
  <div class="container">
   @yield('content')
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    @include('website.includes.footer')
  </footer>

  @yield('scripts')

</body>

</html>
