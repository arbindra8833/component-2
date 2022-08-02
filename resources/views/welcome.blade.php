@extends('layouts.app')

@section('content')
<div class="container-fluid">
<div class="row">
<div class="col-lg-7">
<div class="container">
    <div class="align-items-center d-flex justify-content-between">
        <h1>Books</h1>
        <h3>Sort By : 
            <a href="?sort=price" >Price</a>
            <a href="?sort=papl" >Pages/Length</a>
        </h3>
    </div>
    <div class="row mt-3">
        <div class="p-2">
            <table class="table table table-striped table-responsive" id="myTable">
                <thead>
                    <tr>
                        <th scope="col">S.No</th>
                        <th scope="col">Firstname</th>
                        <th scope="col">Surname</th>
                        <th scope="col">Price</th>
                        <th scope="col">Pages</th>
                        <th scope="col">Category</th>
                        @if(Auth::check())
                        @if(auth()->user()->is_admin)
                        <th scope="col">action</th>
                        @endif
                        @endif
                    </tr>
                </thead>
                <tbody>
                    @foreach($book as $data)
                            <tr>
                                <td>{{$data ->id}}</td>
                                <td>{{ $data->firstname }}</td>
                                <td>{{ $data->surname }}</td>
                                <td>{{ $data->price }}</td>
                                <td>{{ $data->papl }}</td>
                                <td>
                                   <span class="badge {{$data->choice=='book' ? 'badge-danger':'badge-primary'}}">{{strtoupper($data->choice)}}</span>
                                </td>
                                @if(Auth::check())
                                    @if(auth()->user()->is_admin)
                                <td class="align-content-center d-flex flex-wrap justify-content-between">
                                    
                                    <a href={{"edit/".$data['id']}} class="btn btn-success btn-sm">
                                        <i class="fa fa-pen"></i>
                                    </a>
                                    <a href={{"delete/".$data['id']}} class="btn btn-secondary btn-sm">
                                    <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                                @endif
                                @endif
                            </tr>
                    
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
@if (Auth::check())
@if(auth()->user()->is_admin)
<div class="col-lg-5">
<div class="padding container-fluid d-flex justify-content-center">
    <div class="col-12">
    @if(session('success'))
  <div class="alert alert-success alert-dismissible fade show" role="alert">
     {{ session('success') }}
     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
    </div>
   @endif
        <div class="free-quote bg-hollow h-100">
            <h2 class="my-2 heading text-center-dark">Enter Your Data</h2>
             <form action="{{ route('create') }}" method="POST">
                @csrf
                <span><strong>Product Type:</strong></span>
                <select class="form-control btn-block-light" name="choice">
                    <option value="cd">CDs</option>
                    <option value="book">BOOk</option>
                </select><br>
                <br/>
                <input class="form-control btn-block" type="text" name="firstname" placeholder="First Name">
                <br>
                <br>
                <input class="form-control btn-block" type="text" name="surname" placeholder="Surname">
                <br>
                <br>
                <input class="form-control btn-block" type="text" name="price" placeholder="Price">
                <br>
                <br>
                <input class="form-control btn-block" type="text" name="papl" placeholder="Pages/Play Length">
                <br>
                <br>
                <button type="submit" name="" class="btn btn-dark">Submit</button>

            </form>

        </div>
    </div>
</div>
</div>
@endif
@endif
@endsection
@section('js')
<script>
        $(document).ready( function () {
    $('#myTable').DataTable({
        paging:true,
        ordering:false,
    });
} );
    </script>

@endsection

