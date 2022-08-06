<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ubigeo;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Arr;
use DBfirststdClass;

class ShopTopController extends Controller
{
    public function show_date(){
        $departament=\App\Models\Ubigeo::select(DB::raw("CONCAT(desc_ubigeo_reniec,' - ', desc_prov_reniec,' - ', desc_dep_reniec) AS 0"), 'cod_ubigeo_reniec as ubigeo')
        ->where("cod_ubigeo_reniec","<>","NA") 
        ->pluck('descripcion','ubigeo');
        $topshop=DB::table('ec_customer_addresses')->select('ubigeo')->where('ubigeo','=',01)->get();
         $a=count($topshop);

        $shopone=DB::table('ec_customer_addresses')->select('ubigeo')->where('ubigeo','=',02)->get();
        $b=count($shopone);
         
        $top=max($b,$a); 
        return response()->json([

            'cantidad'=>$top,
            'departament'=>$departament
        ]);
    }

    public function dep_date(){
        $depar=DB::table('ubigeos')->distinct()->get(['desc_dep_reniec','cod_dep_reniec']);
        
            //return $de;
         
        //$departament=["01","02","03","04"];
        $data=[];
        foreach($depar as $dep){
            $n_venta=DB::table("ec_customer_addresses")->where("ubigeo","like",$dep->cod_dep_reniec."%")->count();
            $data[]=[
                "depar_ubigeo"=>$dep->cod_dep_reniec,
                "departament"=>$dep->desc_dep_reniec, 
                "n_ventas"=>$n_venta
            ];
         }
         $data=collect($data)->sortByDesc('n_ventas')->values()->all();
        // $unsordata=$data2->sortByDesc('n_ventas');
        // $data = array_values(Arr::sort($data, function ($value) {
        //     return $value['n_ventas'];
        // }));

    
            return response()->json(['data'=>$data]);
    }
}
