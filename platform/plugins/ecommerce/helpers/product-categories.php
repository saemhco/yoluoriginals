<?php

use Botble\Base\Supports\SortItemsWithChildrenHelper;
use Botble\Ecommerce\Repositories\Interfaces\ProductCategoryInterface;

if (!function_exists('get_product_categories')) {
    /**
     * @param array $conditions
     * @param array $with
     * @param array $withCount
     * @param bool $parentOnly
     * @return array|\Illuminate\Support\Collection
     */
    function get_product_categories(
        array $conditions = [],
        array $with = [],
        array $withCount = [],
        bool $parentOnly = false
    ) {
        $categories = app(ProductCategoryInterface::class)
            ->getProductCategories($conditions, $with, $withCount, $parentOnly);

        return sort_item_with_children($categories);
    }
}

if (!function_exists('get_product_categories_with_children')) {
    /**
     * @param array $options
     * @return array
     * @throws Exception
     */
    function get_product_categories_with_children(array $options = [])
    {
        $params = [
            'order_by' => [
                'order'      => 'ASC',
                'created_at' => 'DESC',
            ],
        ];

        if (!empty($options['status'])) {
            $params['condition'] = ['status' => $options['status']];
        }

        $categories = app(ProductCategoryInterface::class)->advancedGet($params);

        return app(SortItemsWithChildrenHelper::class)
            ->setChildrenProperty('child_cats')
            ->setItems($categories)
            ->sort();
    }
}
