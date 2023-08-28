@extends('admin.layouts.default')
@section('content')
    <main>
        <div class="container-fluid">
            <h1 class="mt-4">Teachers</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Teachers</li>
            </ol>
            {{-- <a href="{{URL::to('add-teacher')}}" class="btn btn-primary" style="float:right">Add</a> --}}
            <div class="table-responsive">
                <table class="table table-hover" id="studentdata">
                    <thead>
                        <th>Name</th>
                        <th>teacher</th>
                    </thead>
                    <tbody>
                        @foreach ($subjects as $s)
                            <tr>
                                <td>{{ $s->name}}</td>
                                <td>{{$s->teacher}}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </main>
@stop

@section('scripts')
<script src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready( function () {
    $('#studentdata').DataTable();
} );
</script>
@stop