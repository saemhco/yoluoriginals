<?php

namespace Botble\Ecommerce\Supports;

use Botble\Base\Supports\Helper;
use Botble\Ecommerce\Repositories\Interfaces\ReviewInterface;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;

class EcommerceHelper
{
    /**
     * @return bool
     */
    public function isCartEnabled(): bool
    {
        return get_ecommerce_setting('shopping_cart_enabled', '1') == '1';
    }

    /**
     * @return bool
     */
    public function isReviewEnabled(): bool
    {
        return get_ecommerce_setting('review_enabled', '1') == '1';
    }

    /**
     * @param bool $isConvertToKB
     * @return int
     */
    public function reviewMaxFileSize($isConvertToKB = false): int
    {
        $size = (int) get_ecommerce_setting('review_max_file_size', 2);

        if (!$size) {
            $size = 2;
        } elseif ($size > 1024) {
            $size = 1024;
        }

        return $isConvertToKB ? $size * 1024 : $size;
    }

    /**
     * @return int
     */
    public function reviewMaxFileNumber(): int
    {
        $number = (int) get_ecommerce_setting('review_max_file_number', 6);

        if (!$number) {
            $number = 1;
        } elseif ($number > 100) {
            $number = 100;
        }

        return $number;
    }

    /**
     * @param int $productId
     * @param int $reviewsCount
     * @return Collection
     */
    public function getReviewsGroupedByProductId($productId, $reviewsCount = 0): Collection
    {
        if ($reviewsCount) {
            $reviews = app(ReviewInterface::class)->getGroupedByProductId($productId);
        } else {
            $reviews = collect([]);
        }

        $results = collect([]);
        for ($i = 5; $i >= 1; $i--) {
            if ($reviewsCount) {
                $review = $reviews->firstWhere('star', $i);
                $starCount = $review ? $review->star_count : 0;
                if ($starCount > 0) {
                    $starCount = $starCount / $reviewsCount * 100;
                }
            } else {
                $starCount = 0;
            }

            $results[] = [
                'star'    => $i,
                'count'   => $starCount,
                'percent' => ((int) ($starCount * 100)) / 100,
            ];
        }

        return $results;
    }

    /**
     * @return bool
     */
    public function isQuickBuyButtonEnabled(): bool
    {
        return get_ecommerce_setting('enable_quick_buy_button', '1') == '1';
    }

    /**
     * @return string
     */
    public function getQuickBuyButtonTarget(): string
    {
        return get_ecommerce_setting('quick_buy_target_page', 'checkout');
    }

    /**
     * @return bool
     */
    public function isZipCodeEnabled(): bool
    {
        return get_ecommerce_setting('zip_code_enabled', '0') == '1';
    }

    /**
     * @return bool
     */
    public function isDisplayProductIncludingTaxes(): bool
    {
        if (!$this->isTaxEnabled()) {
            return false;
        }

        return get_ecommerce_setting('display_product_price_including_taxes', '0') == '1';
    }

    /**
     * @return bool
     */
    public function isTaxEnabled(): bool
    {
        return get_ecommerce_setting('ecommerce_tax_enabled', '1') == '1';
    }

    /**
     * @return array
     */
    public function getAvailableCountries(): array
    {
        try {
            $selectedCountries = json_decode(get_ecommerce_setting('available_countries'), true);
        } catch (Exception $exception) {
            $selectedCountries = [];
        }

        if (empty($selectedCountries)) {
            return Helper::countries();
        }

        $countries = [];

        foreach (Helper::countries() as $key => $item) {
            if (in_array($key, $selectedCountries)) {
                $countries[$key] = $item;
            }
        }

        return $countries;
    }

    /**
     * @return array
     */
    public function getSortParams(): array
    {
        $sort = [
            'default_sorting' => __('Default'),
            'date_asc'        => __('Oldest'),
            'date_desc'       => __('Newest'),
            'price_asc'       => __('Price: low to high'),
            'price_desc'      => __('Price: high to low'),
            'name_asc'        => __('Name: A-Z'),
            'name_desc'       => __('Name : Z-A'),
        ];

        if ($this->isReviewEnabled()) {
            $sort += [
                'rating_asc'      => __('Rating: low to high'),
                'rating_desc'     => __('Rating: high to low'),
            ];
        }

        return $sort;
    }

    /**
     * @return array
     */
    public function getShowParams(): array
    {
        return [
            12 => 12,
            24 => 24,
            36 => 36,
        ];
    }

    /**
     * @return float
     */
    public function getMinimumOrderAmount()
    {
        return get_ecommerce_setting('minimum_order_amount', 0);
    }

    /**
     * @return bool
     */
    public function isEnabledGuestCheckout(): bool
    {
        return get_ecommerce_setting('enable_guest_checkout', '1') == '1';
    }

    /**
     * @return array
     */
    public function getDateRangeInReport(Request $request)
    {
        $startDate = now()->subDays(29);
        $endDate = now();

        if ($request->input('date_from')) {
            try {
                $startDate = now()->createFromFormat('Y-m-d', $request->input('date_from'));
            } catch (Exception $ex) {
            }

            if (!$startDate) {
                $startDate = now()->subDays(29);
            }
        }

        if ($request->input('date_to')) {
            try {
                $endDate = now()->createFromFormat('Y-m-d', $request->input('date_to'));
            } catch (Exception $ex) {
            }

            if (!$endDate) {
                $endDate = now();
            }
        }

        if ($endDate->gt(now())) {
            $endDate = now();
        }

        if ($startDate->gt($endDate)) {
            $startDate = now()->subDays(29);
        }

        $predefinedRange = $request->input('predefined_range', trans('plugins/ecommerce::reports.ranges.last_30_days'));

        return [$startDate, $endDate, $predefinedRange];
    }

    /**
     * @return string
     */
    public function getSettingPrefix(): ?string
    {
        return config('plugins.ecommerce.general.prefix');
    }
}
