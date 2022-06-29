<section class="mt-60 mb-60">
    <div class="container">
        <div class="row">
            <div class="col-12">
                @if (Cart::instance('compare')->count())
                    @php
                        $withCount = [];
                        if (EcommerceHelper::isReviewEnabled()) {
                            $withCount = [
                                'reviews',
                                'reviews as reviews_avg' => function ($query) {
                                    $query->select(DB::raw('avg(star)'));
                                },
                            ];
                        }
                        $products = app(\Botble\Ecommerce\Repositories\Interfaces\ProductInterface::class)->advancedGet([
                           'condition' => [
                                ['ec_products.id', 'IN', Cart::instance('compare')->content()->pluck('id')->all()],
                                'ec_products.status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED,
                            ],
                           'with' => [
                                'variations',
                                'productCollections',
                                'variationAttributeSwatchesForProductList',
                            ],
                            'withCount' => $withCount,
                        ]);

                    @endphp

                    <div class="table-responsive table__compare">
                        <table class="table text-center">
                            <tbody>
                            <tr class="pr_image">
                                <td class="text-muted font-md fw-600">{{ __('Preview') }}</td>
                                @foreach(Cart::instance('compare')->content() as $item)
                                    @php
                                        $product = $products->find($item->id);
                                    @endphp
                                    @if (!empty($product))
                                        <td class="row_img">
                                            <a href="{{ $product->original_product->url }}"><img src="{{ RvMedia::getImageUrl($product->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}"></a>
                                        </td>
                                    @endif
                                @endforeach
                            </tr>
                            <tr class="pr_title">
                                <td class="text-muted font-md fw-600">{{ __('Name') }}</td>

                                @foreach(Cart::instance('compare')->content() as $item)
                                    @php
                                        $product = $products->find($item->id);
                                    @endphp
                                    @if (!empty($product))
                                        <td class="product_name">
                                            <h5><a href="{{ $product->original_product->url }}">{{ $product->name }}</a></h5>
                                        </td>
                                    @endif
                                @endforeach
                            </tr>
                            <tr class="pr_price">
                                <td class="text-muted font-md fw-600">{{ __('Price') }}</td>

                                @foreach(Cart::instance('compare')->content() as $item)
                                    @php
                                        $product = $products->find($item->id);
                                    @endphp
                                    @if (!empty($product))
                                        <td class="product_price">
                                            <span class="price">{{ format_price($product->front_sale_price_with_taxes) }}</span> @if ($product->front_sale_price !== $product->price) <del>{{ format_price($product->price_with_taxes) }} </del> <small>({{ get_sale_percentage($product->price, $product->front_sale_price) }})</small> @endif
                                        </td>
                                    @endif
                                @endforeach
                            </tr>
                            @if (EcommerceHelper::isReviewEnabled())
                                <tr class="pr_rating">
                                    <td class="text-muted font-md fw-600">{{ __('Rating') }}</td>
                                    @foreach(Cart::instance('compare')->content() as $item)
                                        @php
                                            $product = $products->find($item->id);
                                        @endphp
                                        @if (!empty($product))
                                            <td>
                                                <div class="rating_wrap">
                                                    <div class="rating">
                                                        <div class="product_rate" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                                                    </div>
                                                    <span class="rating_num">({{ $product->reviews_count }})</span>
                                                </div>
                                            </td>
                                        @endif
                                    @endforeach
                                </tr>
                            @endif

                            <tr class="description">
                                <td class="text-muted font-md fw-600">{{ __('Description') }}</td>
                                @foreach(Cart::instance('compare')->content() as $item)
                                    @php
                                        $product = $products->find($item->id);
                                    @endphp
                                    @if (!empty($product))
                                        <td class="row_text font-xs">
                                            <p>
                                                {!! clean($product->description) !!}
                                            </p>
                                        </td>
                                    @endif
                                @endforeach
                            </tr>

                            @php
                                $attributeSets = app(\Botble\Ecommerce\Repositories\Interfaces\ProductAttributeSetInterface::class)->getAllWithSelected(Cart::instance('compare')->content()->pluck('id'));
                            @endphp

                            @foreach($attributeSets as $attributeSet)
                                <tr>
                                    <td class="text-muted font-md fw-600">
                                        {{ $attributeSet->title }}
                                    </td>

                                    @foreach(Cart::instance('compare')->content() as $item)
                                        @php
                                            $product = $products->find($item->id);
                                        @endphp

                                        @if (!empty($product))
                                            @php
                                                $attributes = app(\Botble\Ecommerce\Repositories\Interfaces\ProductInterface::class)->getRelatedProductAttributes($product)->where('attribute_set_id', $attributeSet->id)->sortBy('order');
                                            @endphp

                                            @if ($attributes->count())
                                                @if ($attributeSet->display_layout == 'dropdown')
                                                    <td>
                                                        @foreach($attributes as $attribute)

                                                            {{ $attribute->title }}@if (!$loop->last), @endif
                                                        @endforeach
                                                    </td>
                                                @elseif ($attributeSet->display_layout == 'text')
                                                    <td>
                                                        <div class="attribute-values">
                                                            <ul class="text-swatch attribute-swatch color-swatch">
                                                                @foreach($attributes as $attribute)
                                                                    <li class="attribute-swatch-item" style="display: inline-block">
                                                                        <label>
                                                                            <input class="form-control product-filter-item" type="radio" disabled>
                                                                            <span style="cursor: default">{{ $attribute->title }}</span>
                                                                        </label>
                                                                    </li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                    </td>
                                                @else
                                                    <td>
                                                        <div class="attribute-values">
                                                            <ul class="visual-swatch color-swatch attribute-swatch">
                                                                @foreach($attributes as $attribute)
                                                                    <li class="attribute-swatch-item" style="display: inline-block">
                                                                        <div class="custom-radio">
                                                                            <label>
                                                                                <input class="form-control product-filter-item" type="radio" disabled>
                                                                                <span style="{{ $attribute->image ? 'background-image: url(' . RvMedia::getImageUrl($attribute->image) . ');' : 'background-color: ' . $attribute->color . ';' }}; cursor: default;"></span>
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                    </td>
                                                @endif
                                            @else
                                                <td>&mdash;</td>
                                            @endif
                                        @endif
                                    @endforeach
                                </tr>
                            @endforeach

                            @if (EcommerceHelper::isCartEnabled())
                                <tr class="pr_add_to_cart">
                                    <td class="text-muted font-md fw-600">{{ __('Buy now') }}</td>
                                    @foreach(Cart::instance('compare')->content() as $item)
                                        <td class="row_btn"><a href="#" class="btn btn-rounded btn-sm add-to-cart-button" data-id="{{ $product->id }}" data-url="{{ route('public.cart.add-to-cart') }}"><i class="far fa-shopping-bag mr-5"></i>{{ __('Add To Cart') }}</a></td>
                                    @endforeach
                                </tr>
                            @endif

                            <tr class="pr_remove text-muted">
                                <td class="text-muted font-md fw-600">&nbsp;</td>
                                @foreach(Cart::instance('compare')->content() as $item)
                                    <td class="row_remove"><a class="js-remove-from-compare-button" href="#" data-url="{{ route('public.compare.remove', $item->id) }}"><i class="fa fa-trash-alt mr-5"></i><span>{{ __('Remove') }}</span></a></td>
                                @endforeach
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            @else
                <p class="text-center">{{ __('No products in compare list!') }}</p>
            @endif
        </div>
    </div>
</section>
