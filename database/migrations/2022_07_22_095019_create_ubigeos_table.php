<?php

use Database\Seeders\UbigeoSeeder;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUbigeosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ubigeos', function (Blueprint $table) {
            $table->id();
            $table->char('cod_dep_inei', 2)->default("NA");
            $table->string('desc_dep_inei')->default("NA");
            $table->char('cod_prov_inei', 4)->default("NA");
            $table->string('desc_prov_inei')->default("NA");
            $table->char('cod_ubigeo_inei', 6)->default("NA");
            $table->string('desc_ubigeo_inei')->default("NA");

            $table->char('cod_dep_reniec', 2)->default("NA");
            $table->string('desc_dep_reniec')->default("NA");
            $table->char('cod_prov_reniec', 4)->default("NA");
            $table->string('desc_prov_reniec')->default("NA");
            $table->char('cod_ubigeo_reniec', 6)->default("NA");
            $table->string('desc_ubigeo_reniec')->default("NA");

            $table->char('cod_dep_sunat', 2)->default("NA");
            $table->string('desc_dep_sunat')->default("NA");
            $table->char('cod_prov_sunat', 4)->default("NA");
            $table->string('desc_prov_sunat')->default("NA");
            $table->char('cod_ubigeo_sunat', 6)->default("NA");
            $table->string('desc_ubigeo_sunat')->default("NA");
            $table->timestamps();
        });

        //run Ubigeoseeder
        (new UbigeoSeeder())->run();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ubigeos');
    }
}
