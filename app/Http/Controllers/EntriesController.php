<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use App\Models\Entry;
use App\User;
use Illuminate\Support\Facades\Auth;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class EntriesController extends Controller
{
    public function saveEntry(Request $request)
    {
        $request->validate([
            'from_whom' => ['required'],
            'to_whom' => ['required'],
        ]);

        $entry = Entry::create([
            'from_whom' => $request->from_whom,
            'to_whom' => $request->to_whom,
            'subject' => $request->subject,
            'ref_id' => "PU/SET/DCS/22-23/",
            'from_date' => $request->from_date,
            'to_date' => $request->to_date,
            'userid' => 1,
        ]);
        $updatedEntry = Entry::find($entry->id);
        $updatedEntry->ref_id = "PU/SET/DCS/22-23/" . $entry->id;
        $updatedEntry->save();
        $updatedEntry['usrjfdf'] = Auth::user();
        return  $updatedEntry;
    }

    public function updateEntry(Request $request, $id)
    {
        $request->validate([
            'from_whom' => ['required'],
            'to_whom' => ['required'],
        ]);

        $entry = Entry::find($id);
        $entry->from_whom = $request->get('from_whom');
        $entry->to_whom = $request->get('to_whom');
        $entry->subject = $request->get('subject');
        $entry->from_date = $request->get('from_date');
        $entry->to_date = $request->get('to_date');
        $entry->save();
        $response['message'] = "Entry updated successfully";
        $response['entry'] = $entry;
        return  $response;
    }

    public function deleteEntry($id)
    {
        $entry = Entry::find($id);
        $entry->delete();
        $response['message'] = "Entry deleted successfully";
        $response['entry'] = $entry;
        return  $response;
    }

    public function getEntries(Request $request)
    {
        $isfilter = false;
        $filterKey = 'entries.id';
        $filterValue = 'desc';
        if (isset($request->sortKey) && $request->sortKey != '' && isset($request->sortValue) && $request->sortValue != '') {
            $isfilter = true;
            $filterKey = 'entries.' . $request->sortKey;
            $filterValue =   $request->sortValue;
        } else if (isset($request->sortKey)  && isset($request->sortValue) && $request->sortValue == '') {
            $isfilter = true;
            $filterKey = 'entries.id';
            $filterValue =   'desc';
        }

        $filterDateFrom = new DateTime('1950-01-01');
        $filterDateTo = new DateTime();
        if ($request->dateFilterFrom != '') {
            $filterDateFrom = new DateTime($request->dateFilterFrom);
        }
        if ($request->dateFilterTo != '') {
            $filterDateTo = new DateTime($request->dateFilterTo);
        }

        $result = Entry::with('fromWhom')
            ->with('toWhom')
            ->where('ref_id', 'LIKE', '%' . $request->searchKey . '%')
            ->where('created_at', '>=', $filterDateFrom->format('Y-m-d'))
            ->where('created_at', '<', $filterDateTo->modify('+1 day')->format('Y-m-d'))
            ->orderBy($filterKey, $filterValue)
            ->paginate($request->per_page);
        // $result[22] = $request;
        // $result['useeee'] =  $filterDateTo->format('Y-m-d');
        return $result;

        // return Entry::with('fromWhom')
        //     ->with('toWhom')
        //     ->where('ref_id', 'LIKE', '%' . $request->searchKey . '%')
        //     ->orWhere('from_whom', 'LIKE', '%' . $request->searchKey . '%')
        //     ->orWhere('to_whom', 'LIKE', '%' . $request->searchKey . '%')
        //     ->orderBy('entries.updated_at', 'desc')
        //     ->paginate($request->per_page);
    }

    public function getLastEntry()
    {
        $a = Entry::latest()->first();
        $a['dd'] = 'entries' . 'ref_id' . '' . 'asc' . '';
        return $a;
    }
}
