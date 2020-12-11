<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJohnnyorderlogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('johnnyorderlog', function (Blueprint $table) {
            $table->id();
            $table->timestamp('time_created')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->integer('employeeId')->unsigned();
            $table->foreign('employeeId')->references('id')->on('johnnyemployee')->onDelete('cascade');
            $table->integer('skuId')->unsigned();
            $table->foreign('skuId')->references('id')->on('johnnysku')->onDelete('cascade');
            $table->integer('quantity')->default(1);
            $table->integer('totalPrice');
            $table->integer('paidInBox')->unsigned()->nullable();
            $table->foreign('paidInBox')->references('id')->on('johnnypaymentlog')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('johnnyorderlog');
    }
}
