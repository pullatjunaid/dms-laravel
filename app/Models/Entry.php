<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Entry extends Model
{
    protected $fillable = [
        'ref_id', 'from_whom', 'to_whom', 'subject', 'from_date', 'to_date'
    ];

    public function fromWhom()
    {
        return $this->hasOne('App\Models\Destination', 'id', 'from_whom')
            ->select(['id', 'title']);
    }

    public function toWhom()
    {
        return $this->hasOne('App\Models\Destination', 'id', 'to_whom')
            ->select(['id', 'title']);
    }
}
