<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\User as AppUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AppUsersController extends Controller
{
    public function saveAppUser(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'min:6', 'confirmed'],
            'user_type' => ['required'],
        ]);

        $user = AppUser::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'user_type' => $request->user_type,

        ]);
        $response['message'] = "User created successfully";
        $response['user'] = $user;
        return  $response;
    }

    public function getAppUsers(Request $request)
    {
        $isfilter = false;
        $filterKey = 'id';
        $filterValue = 'desc';
        if (isset($request->sortKey) && $request->sortKey != '' && isset($request->sortValue) && $request->sortValue != '') {
            $isfilter = true;
            $filterKey =  $request->sortKey;
            $filterValue =   $request->sortValue;
        } else if (isset($request->sortKey)  && isset($request->sortValue) && $request->sortValue == '') {
            $isfilter = true;
            $filterKey = 'id';
            $filterValue =   'desc';
        }

        return User::orderBy($filterKey, $filterValue)
            ->where('name', 'LIKE', '%' . $request->searchKey . '%')
            // ->where('user_type', 'app_user')
            ->paginate($request->per_page);
    }

    public function resetPassword(Request $request, $id)
    {
        $request->validate([
            'password' => ['required', 'min:6', 'confirmed'],
        ]);

        $user = AppUser::find($id);
        $user->password = $request->get('password');
        $user->save();
        $response['message'] = "User password has been reset successfully";
        $response['user'] = $user;
        return $response;
    }
}
