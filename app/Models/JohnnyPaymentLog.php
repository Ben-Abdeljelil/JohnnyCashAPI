<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use JohnnyEmployee;

class JohnnyPaymentLog extends Model
{
    protected $table = 'johnnypaymentrlog';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'time_created',
        'employeeId',
        'amount'
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];

    public function johnnyEmployee()
    {
        return $this->belongsTo(JohnnyEmployee::class, 'employeeId');
    }
}