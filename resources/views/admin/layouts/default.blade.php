<!DOCTYPE html>
<html lang="en">
    <head>
        @include('admin.includes.head')
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            @include('admin.includes.nav')
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
             @include('admin.includes.sidenav')
            </div>
            <div id="layoutSidenav_content">
                @yield('content')
                <footer class="py-4 bg-light mt-auto">
                    @include('admin.includes.footer')
                </footer>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('ui/admin/js/scripts.js')}}"></script>
        @include('admin.includes.script')
        @yield('scripts')
        
    </body>
</html>
