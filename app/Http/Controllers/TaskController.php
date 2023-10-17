<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Task;
use App\Http\Requests\Registrationrequest;

use Illuminate\Http\Request;

class TaskController extends Controller
{
    //
    public function index(){
       return " This is the first Controller of FIrst Route" ;
    }

    public function welcome($name){
        return view('user')->with('name',$name) ;
     }

     public function viewform(){
        return view('register');
     }


     public function signup(Registrationrequest $request){
     $user=new User;
     $user->name=$request['name'];
     $user->email=$request['email'];
     $user->phone=$request['phone'];
     $user->password=$request['password'];
     $user->save();
     return view('login');
     }

    public function showtask(){

        $task=Task::paginate(10);
        return view('showtask',['task'=>$task]);
    }
    public function deletetask($id){
        $task=Task::find($id);
        if(!is_null($task)){
            $task->delete();
        }
        return redirect()->back()->with('message','Task Deleted Successfully');
    }
    public function addtask(){
    $url=url('/task_insert') ;
    $tittle="Add task";
    $data=compact('url','tittle');
     return view('add_tasks')->with($data);
    }

    public function create_task(Request $request){
     $task=new Task;
     $task->taskname=$request['task'];
     $task->save();
     return redirect('/showtask')->with('message','Task Added Successfully');
    }

    public function singletask(){
        return view('single_task');
    }
    public function show_singletask(Request $request){
        $task=new Task;
        $task_id=$request->input('task');
        $data = $task->select("*")->where('id',$task_id)->first();
        return view('show_single',['data'=>$data]);
    }

    public function no_access(){
        return view('no-access');
        die();
    }

    public function task_edit($id){
        $task=Task::find($id);
        $tittle="Update task";
        $url=url('/task_update')."/".$id;
        $data=compact('task','url','tittle');
        return view('add_task')->with($data);
    }

    public function task_update($id,Request $request){
        $task=Task::find($id);
        $task->taskname=$request['task'];
        $task->save();
        return redirect('showtask')->with('message','Task Updated Successfully');
    }
}
