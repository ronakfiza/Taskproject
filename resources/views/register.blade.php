<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/style.css">
</head>
<body>


<!------ Include the above in your HEAD tag ---------->

<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>Registration page</p>
                        {{-- <input type="submit" name="" value="Login"/><br/> --}}
                        <a href="login"><button class="btn btn-success">Login</button></a>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Apply as a User</h3>

                                <form action="/" method="post">
                                    @csrf
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            @error('name')
                                            <span class="error">{{ $message }}!!</span>
                                            @enderror
                                            <input type="text" class="form-control" placeholder="First Name *" name="name" value="" />
                                        </div>

                                        @error('password')
                                        <span class="error">{{ $message }}!!</span>
                                        @enderror
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" name="password" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirm Password *" name="confirmed" value="" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        @error('email')
                                        <span class="error">{{ $message }}!!</span>
                                        @enderror
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *"  name="email" value="" />
                                        </div>
                                        <div class="form-group">
                                            @error('phone')
                                            <span class="error">{{ $message }}!!</span>
                                            @enderror
                                            <input type="text" minlength="10" maxlength="10" name="phone" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </form>
        </body>
        </html>
