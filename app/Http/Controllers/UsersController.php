<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsersController extends Controller
{
    public function index()
    {
        return response()->json([
            'success' => true,
            'message' => "",
            'data' => User::all(),
        ]);
    }

    public function userInfo()
    {
        $user = auth()->user();
        return response()->json([
            'user' => $user,
        ],200);
    }

    public function create()
    {
        return 'index';
    }

    public function store(Request $request)
    {
        // User validation start
        $rules = [
            'email' => 'required|email',
            'password' => 'required|min:6',
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->getMessageBag()->all());
        }
        // User validation start

        // User saving start
        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        // User saving end
        return response()->json([
            'message' => 'Account Created'
        ]);
    }
}
