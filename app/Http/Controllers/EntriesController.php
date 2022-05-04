<?php

namespace App\Http\Controllers;

use App\Models\Entry;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class EntriesController extends Controller
{
    public function saveEntry(Request $request)
    {
        $request->validate([
            'from_whom'=>['required'],
            'to_whom'=>['required'],
        ]);

       $entry= Entry::create([
            'from_whom'=> $request->from_whom,
            'to_whom'=>$request->to_whom,
            'subject'=>$request->subject,
            'ref_id'=>"PU/SET/DCS/22-23/",
            'from_date'=>$request->from_date,
            'to_date'=>$request->to_date,
        ]);
        $updatedEntry = Entry::find($entry->id) ;
        $updatedEntry->ref_id="PU/SET/DCS/22-23/".$entry->id;
        $updatedEntry->save();
        return  $updatedEntry;
    }

    public function getEntries(Request $request)
    {
        return Entry::paginate($request->per_page);  
    }
}
