<?php

namespace App\Http\Controllers;

use App\Models\Subject;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    public function showsubjects(){
        $data = Subject::leftJoin('users','subjects.teacher_id','users.id')
        ->select('subjects.name','users.fname as teacher')
        ->get();
        // $data = Subject::all();

        // $data = Subject::leftJoin('users', 'users.id', '=', 'subjects.teacher_id')
        //     ->get();
        return view('admin.pages.subjectinfo',['subjects'=>$data]);
    }
}
