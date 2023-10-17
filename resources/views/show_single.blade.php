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
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-8">
                    <div id="main" class="card">
                        <div class="card-body">
                            <h1> Add New Task </h1>
                            <form id="task-form" method="post" action="{{ url('/') }}/single_task">
                                @csrf
                                <div class="form-group"> <label for="task"> Task based on Id</label>
                                <input type="text" class="form-control" name="task" id="task" placeholder="Name ...">
                                 </div> <button type="submit" class="btn btn-primary mt-2"> show task </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
    <div class="table-responsive">
        <table class="table table-primary">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Taskname</th>
                </tr>
            </thead>
            <tbody>


                <tr class="">
                    <td scope="row">{{ $data['id'] }}</td>
                    <td>{{ $data['taskname'] }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
