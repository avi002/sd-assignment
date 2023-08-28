<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Session;

class TeacherController extends Controller
{
    public function showteachers(){
        $data = User::where('role','=','teacher')->get();
        return view('admin.pages.teacherinfo',['teachers'=>$data]);
    }

    public function add(){
        return view('admin.pages.add-teacher');
    }

    public function store(Request $req){

        $validatedData = $req->validate([
            'fname' => 'required|alpha|max:20',
            'fname' => 'required|alpha|max:20',
            'email' => 'required|email|unique:users,email',
            'dob' => 'required|date',
            'gender' => 'required',
            'mobile' => 'required|numeric',
            'password1' => 'required|min:8',
            'password2' => 'required_with:password1|same:password1|min:8',
            
        ]);

        $fname = $req->fname;
        $lname = $req->lname;
        $email = $req->email;
        $dob = $req->dob;
        $gender = $req->gender;
        $mobile = $req->mobile;
        $password = Hash::make($req->password1);
        $role = "teacher";

        $obj = new User();

        $obj->fname = $fname;
        $obj->lname = $lname;
        $obj->email = $email;
        $obj->dob = $dob;
        $obj->gender = $gender;
        $obj->mobile = $mobile;
        $obj->password = $password;
        $obj->role = $role;
        if($obj->save()){
            
                return redirect()->to('showteachers');
            
            
        }
    }
    public function edit($id){
        $teacher = User::where('id','=',$id)->first();
        return view('admin.pages.update-teacher',['teacher'=>$teacher]);
     }
     public function update($id, Request $req){
        $student = User::where('id','=',$id)->first();
        $student-> fname = $req->fname;
        $student-> lname = $req->lname;
        $student-> dob = $req->dob;
        $student-> mobile = $req->mobile;
        $student->save();
        return redirect()->to('showteachers');
     }

     public function delete($id){
        User::where('id','=',$id)->delete();
        return redirect()->to('showteachers');
    }

    public function index(){
        return view('teacher.welcome');
    }
}
