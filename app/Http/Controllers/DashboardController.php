<?php

namespace App\Http\Controllers;

use App\Models\Backup;
use App\Models\Destination;
use App\Models\Entry;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function getDashboardData(Request $request)
    {
        $response['data']['totalEntries'] =  Entry::count();
        $response['data']['totalDestinations'] =  Destination::count();
        $response['data']['lastBackup'] =  Backup::latest()->first();
        return $response;
    }
}
