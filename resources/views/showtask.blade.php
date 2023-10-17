<!-- Nav tabs -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script> --}}
    <style>
        .task{
            float: right;
            margin-right: 5%;
            margin-top: 2%;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-sm navbar-dark" style="background-color: #2e678f;">
    <a class="navbar-brand" href="{{ url('/') }}/logout">logout</a>
    <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation"></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav me-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link active" href="#" aria-current="page"> welcome  {{session('user')}} <span class="visually-hidden">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tasks</a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="{{ url('/') }}/show_single">Show single task</a>
                    <a class="dropdown-item" href="#">Show All tasks</a>
                </div>
            </li>
        </ul>
        <form class="d-flex my-2 my-lg-0">
            <input class="form-control me-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<div>
    @if (session()->has('message'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session()->get('message') }}
    <button id="btnclose" type="button" class="close " data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span> </button>
   </div>
   </button>
    @endif
</div>
 <div class="task"  >
     <a href="{{ url('/')}}/task_add">
       <button type="button" class="btn btn-primary">Add Task</button>
     </a>
     <a href="{{ url('showtask') }}">
       <button type="button" class="btn btn-info">show Task</button>
     </a>
    </div>
<div class="container " style="margin-top: 5%">
<div class="table-responsive-md">
    <table class="table table-striped-columns
    table-hover
    table-borderless
    table-primary
    align-middle">
        <thead class="table-light">

            <tr>
                <th>Id</th>
                <th>Task Name</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody class="table-group-divider">
                @foreach ( $task as  $row)
                <tr class="table-primary" >

                    <td scope="row">{{ $row['id'] }}</td>
                    <td>{{ $row['taskname'] }}</td>
                    <td>
                        <a href="{{url('/')}}/task_edit/{{$row['id']}}"><button class="btn btn-success">edit</button></a>
                        <a href="{{url('/')}}/task_dlt/{{$row['id']}}"><button class="btn btn-danger">Delete</button></a>
                    </td>
                </tr>

                @endforeach
            </tbody>
    </table>
    <div class="row">
      {{ $task->links('pagination::bootstrap-5')}}
    </div>
</div>

</div>
</body>
</html>


