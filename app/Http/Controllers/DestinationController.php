<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    public function saveDestination(Request $request)
    {
        $request->validate([
            'title' => 'required|unique:destinations'
        ]);

        $destination = Destination::create([
            'title' => $request->title,
            'description' => $request->description,
        ]);
        $response['message'] = "Destination created successfully";
        $response['destination'] = $destination;
        return  $response;
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required'
        ]);

        $destination = Destination::find($id);
        $destination->title =  $request->get('title');
        $destination->description = $request->get('description');
        $destination->save();
        $response['message'] = "Destination updated successfully";
        $response['destination'] = $destination;
        return  $response;
    }

    public function getDestinations(Request $request)
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

        return Destination::orderBy($filterKey, $filterValue)
            ->where('title', 'LIKE', '%' . $request->searchKey . '%')
            ->orWhere('description', 'LIKE', '%' . $request->searchKey . '%')
            ->paginate($request->per_page);
    }
}
