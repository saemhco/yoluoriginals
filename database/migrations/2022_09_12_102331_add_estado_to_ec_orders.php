<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddEstadoToEcOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ec_orders', function (Blueprint $table) {
            $table->enum('estado',['En origen','En transito','En destino','Entregado'])->nullable()->after('store_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ec_orders', function (Blueprint $table) {
            $table->dropColumn('estado');
            
        });
    }
}
