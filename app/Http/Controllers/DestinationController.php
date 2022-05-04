<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    public function saveDestination(Request $request)
    {
        $request->validate([
            'title'=>'required|text|unique'
        ]);

       $destination= Destination::create([
            'title'=> $request->title,
            'description'=>$request->description,
            ]);
        $response['message']="Destination created successfully";
        $response['destination']=$destination;
        return  $response;
    }

    public function getDestinations(Request $request)
    {
        return Destination::paginate($request->per_page);  
    }
}
