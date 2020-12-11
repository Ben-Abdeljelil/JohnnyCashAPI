<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use JohnnyEmployee;
use JohnnySku;
use JohnnyPaymentLog;

class JohnnyOrderLog extends Model
{
    protected $table = 'johnnyorderlog';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'time_created',
        'employeeId',
        'skuId',
        'quantity',
        'totalPrice',
        'paidInBox'
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

    public function johnnySku()
    {
        return $this->belongsTo(JohnnySku::class, 'skuId');
    }

    public function johnnyPaymentLog()
    {
        return $this->belongsTo(JohnnyPaymentLog::class, 'paidInBox');
    }
}