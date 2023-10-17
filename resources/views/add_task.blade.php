<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="assets/addtask.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <div class="section mt-5">
        @if (session()->has('message'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session()->get('message') }}
        <button id="btnclose" type="button" class="close " data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span> </button>
       </div>
       </button>
        @endif
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-8">
                    <div id="main" class="card">
                        <div class="card-body">
                            <h1> {{ $tittle }}</h1>
                            <form id="task-form" method="post" action="{{ $url }}">
                                @csrf
                                <div class="form-group"> <label for="task">New Task</label>
                                <input type="text" class="form-control" name="task" id="task" placeholder="Name ..." value="{{ $task['taskname'] }}">
                                 </div> <button type="submit" class="btn btn-primary mt-2">Add task </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
