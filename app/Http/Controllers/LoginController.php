<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\ValidationException;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        // Login validation start
        $rules = [
            'email' => 'required|email',
            'password' => 'required',
        ];
        $validator = Validator::make($request->all(), $rules);
        if($validator->fails()){
            return response()->json($validator->getMessageBag()->all());
        }
        // Login validation end
        $data = [
            'email'=>$request->email,
            'password'=>$request->password
        ];
        if(auth()->attempt($data)){
            $token = auth()->user()->createToken('Token')->accessToken;
            $user = User::where('email',$request->email)->first();
            return response()->json([
                'Bearer token' => $token,
                'user' => $user,
            ]);
        }else{
            return response()->json([
                'error' => 'unauthorized',
            ],401);
        }

    }
}
