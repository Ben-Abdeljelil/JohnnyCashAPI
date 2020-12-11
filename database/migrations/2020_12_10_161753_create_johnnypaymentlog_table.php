<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJohnnypaymentlogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('johnnypaymentlog', function (Blueprint $table) {
            $table->id();
            $table->timestamp('time_created')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->integer('employeeId')->unsigned();
            $table->foreign('employeeId')->references('id')->on('johnnyemployee')->onDelete('cascade');
            $table->integer('amount');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('johnnypaymentlog');
    }
}
