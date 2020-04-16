<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Ticket extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ticket', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();

            $table->string('description');

            $table->date('date_ticket');
            $table->integer('id_priority')->unsigned();
            $table->foreign('id_priority')->references('id_priority')->on('priority');

            $table->integer('id_category')->unsigned();
            $table->foreign('id')->references('id')->on('category');
            

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ticket');
    }
}
