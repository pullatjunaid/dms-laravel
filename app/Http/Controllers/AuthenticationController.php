<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthenticationController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'name'=>['required'],
            'email'=>['required','email','unique:users'],
            'password'=>['required','min:6','confirmed']
        ]);

      $user=  User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
        ]);
        $response['user']=$user;
        $response['message']="User created successfully";
        return $response;
    }

    public function login(Request $request)
    {
       $request->validate([
        'username' => 'required|email',
        'password' => 'required',
    ]);
 
    $user = User::where('email', $request->username)->first();
 
    if (! $user || ! Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            'message' => ['The provided credentials are incorrect.'],
        ]);
    }
    $success['api_token'] =$user->createToken('dms')->plainTextToken;
    return $success; 
    }

    public function logout(Request $request)
    {
       
        $logout=Auth::logout();

    $success['logout'] =$logout;
    return $success; 
    }
    
}
