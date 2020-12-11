<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JohnnyEmployee extends Model
{
    protected $table = 'johnnyemployee';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}