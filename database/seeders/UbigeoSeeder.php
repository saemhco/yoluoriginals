<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UbigeoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $ruta =  database_path("data/ubigeos-concytec.json");
        $json =  file_get_contents($ruta);
        foreach (json_decode($json, true) as $key) {
            DB::table('ubigeos')->insert([
                [
                    'cod_dep_inei' => $key["cod_dep_inei"],
                    'desc_dep_inei' => $key["desc_dep_inei"],
                    'cod_prov_inei' => $key["cod_prov_inei"],
                    'desc_prov_inei' => $key["desc_prov_inei"],
                    'cod_ubigeo_inei' => $key["cod_ubigeo_inei"],
                    'desc_ubigeo_reniec' => $key["desc_ubigeo_reniec"],
                    'cod_dep_reniec' => $key["cod_dep_reniec"],
                    'desc_dep_reniec' => $key["desc_dep_reniec"],
                    'cod_prov_reniec' => $key["cod_prov_reniec"],
                    'desc_prov_reniec' => $key["desc_prov_reniec"],
                    'cod_ubigeo_reniec' => $key["cod_ubigeo_reniec"],
                    'desc_ubigeo_reniec' => $key["desc_ubigeo_reniec"],
                    'cod_dep_sunat' => $key["cod_dep_sunat"],
                    'desc_dep_sunat' => $key["desc_dep_sunat"],
                    'cod_prov_sunat' => $key["cod_prov_sunat"],
                    'desc_prov_sunat' => $key["desc_prov_sunat"],
                    'cod_ubigeo_sunat' => $key["cod_ubigeo_sunat"],
                    'desc_ubigeo_sunat' => $key["desc_ubigeo_sunat"],
                ],
            ]);
        }
    }
}
