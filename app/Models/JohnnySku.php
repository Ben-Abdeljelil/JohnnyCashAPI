<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JohnnySku extends Model
{
    protected $table = 'johnnysku';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'price'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}