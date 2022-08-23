<?php

namespace Botble\Ecommerce\Models;

use App\Models\Ubigeo;
use Botble\Base\Models\BaseModel;
use Botble\Base\Supports\Avatar;
use Botble\Base\Supports\Helper;
use Exception;
use RvMedia;

class OrderAddress extends BaseModel
{

    /**
     * @var string
     */
    protected $table = 'ec_order_addresses';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'country',
        'state',
        'city',
        'address',
        'zip_code',
        'order_id',
        'ubigeo',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;

    protected $appends=['full_ubigeo'];
    /**
     * @return string
     */
    public function getCountryNameAttribute()
    {
        return Helper::getCountryNameByCode($this->country);
    }

    public function getFullUbigeoAttribute(){
        $ubigeo= Ubigeo::FilterCode($this->ubigeo)->first()? Ubigeo::FilterCode($this->ubigeo)->first()->all_description: null;
        return $ubigeo;
    }
    /**
     * @return string
     */
    public function getAvatarUrlAttribute()
    {
        try {
            return (new Avatar)->create($this->name)->toBase64();
        } catch (Exception $exception) {
            return RvMedia::getDefaultImage();
        }
    }
}
