<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Login;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //

    public function showlogin(){
    return view('login');
    }
    public function login(Request $req)
    {

        $email=$req->input('email');
        $pwd=$req->input('password');
      //  echo $email;

        $u=new User();
        $login=new Login();  $data=$u->select("*")->where('email',$email)->first();

        if($data)
        {


            $u_pwd=$data['password'];
            if($u_pwd == $pwd)
            {
                //echo $email;

                $session=session();
                $session->put('user',$data['name']);
                $login->email=$email;
                $login->password=$pwd;
                $login->save();
               $session->flash('mssg','Login Success!');
            return redirect('/showtask');

            }
            else{
                $session=session();
                $session->flash('mssg_pwd','Password does not match!');
               // echo "password does not match";
                return redirect('login');

            }
        }
        else
        {
        session()->flash('mssg','Login Unsuccess! Check Your Email and Password');

        return redirect('login');

        }

    }


    public function logout(Request $req)
    {
        session()->pull('user',null);

        session()->flash('mssg','Logout Successfully!');
         return redirect('login');


    }
}
