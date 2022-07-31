<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUbigeoToEcCustomerAddresses extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ec_customer_addresses', function (Blueprint $table) {
            $table->string('ubigeo');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ec_customer_addresses', function (Blueprint $table) {
            $table->dropColumn('ubigeo');
        });
    }
}
