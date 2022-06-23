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
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'min:6', 'confirmed']
        ]);

        $user =  User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'user_type' => "administrator",
        ]);
        $response['user'] = $user;
        $response['message'] = "User created successfully";
        return $response;
    }

    public function login(Request $request)
    {
        $request->validate([
            'username' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->username)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'message' => ['Provided credentials are incorrect.'],
            ]);
        }
        $success['api_token'] = $user->createToken('dms')->plainTextToken;
        $success['user'] = $user;

        if ($user->user_type == "administrator") {
            $success['permissions'] = array(
                (object) ['name' => 'backup.create'],
                (object) ['name' => 'backup.delete'],
                (object) ['name' => 'backup.edit'],
                (object) ['name' => 'backup.view'],
                (object) ['name' => 'entry.create'],
                (object) ['name' => 'entry.delete'],
                (object) ['name' => 'entry.edit'],
                (object) ['name' => 'entry.view'],
                (object) ['name' => 'destination.create'],
                (object) ['name' => 'destination.delete'],
                (object) ['name' => 'destination.edit'],
                (object) ['name' => 'destination.view'],
                (object) ['name' => 'appUser.create'],
                (object) ['name' => 'appUser.delete'],
                (object) ['name' => 'appUser.edit'],
                (object) ['name' => 'appUser.view'],
                (object) ['name' => 'appUser.resetPassword'],

            );
        } else  if ($user->user_type == "modifier") {
            $success['permissions'] = array(
                (object) ['name' => 'backup.create'],
                (object) ['name' => 'backup.edit'],
                (object) ['name' => 'backup.view'],
                (object) ['name' => 'entry.create'],
                (object) ['name' => 'entry.edit'],
                (object) ['name' => 'entry.view'],
                (object) ['name' => 'destination.create'],
                (object) ['name' => 'destination.edit'],
                (object) ['name' => 'destination.view'],

            );
        } else  if ($user->user_type == "end_user") {
            $success['permissions'] = array(
                (object) ['name' => 'backup.create'],
                (object) ['name' => 'backup.view'],
                (object) ['name' => 'entry.create'],
                (object) ['name' => 'entry.view'],
                (object) ['name' => 'destination.create'],
                (object) ['name' => 'destination.view'],

            );
        } else  if ($user->user_type == "viewer") {
            $success['permissions'] = array(
                (object) ['name' => 'backup.view'],
                (object) ['name' => 'entry.view'],
                (object) ['name' => 'destination.view'],
                (object) ['name' => 'appUser.view'],
            );
        }
        return $success;
    }

    public function logout(Request $request)
    {

        $logout = Auth::logout();

        $success['logout'] = $logout;
        return $success;
    }

    public function cau()
    {
        $user =  User::create([
            'email' => 'admin@gmail.com',
            'name' => 'Admin',
            'password' => Hash::make('admin123'),
            'user_type' => "administrator",
        ]);
        $response['user'] = $user;
        $response['message'] = "User created successfully";
        return $response;
    }
}
