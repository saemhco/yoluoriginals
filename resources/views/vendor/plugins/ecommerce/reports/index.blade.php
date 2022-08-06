@extends('core/base::layouts.master')

@section('content')
    <section>
        <div class="mb-3">
            <div class="mb-1 text-right">
                <button class="select-date-range-btn date-range-picker"
                        data-format-value="{{ trans('plugins/ecommerce::reports.date_range_format_value', ['from' => '__from__', 'to' => '__to__']) }}"
                        data-format="{{ Str::upper(config('core.base.general.date_format.js.date')) }}"
                        data-href="{{ route('ecommerce.report.index') }}"
                        data-start-date="{{ $count['startDate'] }}"
                        data-end-date="{{ $count['endDate'] }}">
                    <i class="fa fa-calendar"></i>
                    <span><span>{{ trans('plugins/ecommerce::reports.date_range_format_value', [
                        'from' => $count['startDate']->format('Y-m-d'),
                        'to'   => $count['endDate']->format('Y-m-d')
                    ]) }}</span></span>
                </button>
            </div>
            <div class="mx-0 bg-white row report-chart-content pt-3" id="report-chart">
                @include('plugins/ecommerce::reports.partials.content')
            </div>
        </div>

        <div class="row mt-15">
            <div class="col-lg-7">
                <div class="rp-card bg-white h-100">
                    <div class="rp-card__header">
                        <h5 class="p-2">{{ trans('plugins/ecommerce::reports.recent_orders') }}</h5>
                    </div>
                    <div class="rp-card-content equal-height">
                        {!! $recentOrders->renderTable() !!}
                    </div>
                </div>
            </div>

            <div class="col-lg-5">
                <div class="rp-card bg-white h-100">
                    <div class="rp-card-header">
                        <h5 class="p-2">{{ trans('plugins/ecommerce::reports.top_selling_products')  }}</h5>
                    </div>
                    <div class="rp-card-content equal-height">
                        {!! $topSellingProducts->renderTable() !!}
                    </div>
                </div>
            </div>

            <div class="col-lg-5">
                <div class="rp-card bg-white h-100">
                    <div class="rp-card-header">
                          </div>
                    <div class="table-responsive">
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead class="text-white" style="background-color:#1e94c2;">
                                <tr>
                                    
                                    <th>N°</th>
                                    <th>Departamento</th>
                                    <th>Compras</th> 
                                </tr>
                            </thead>
                            <tbody id="shop">
                                    <!-- Cuerpo vacio -->
                            </tbody>                           
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop

@push('footer')
    <script>
        var BotbleVariables = BotbleVariables || {};
        BotbleVariables.languages = BotbleVariables.languages || {};
        BotbleVariables.languages.reports = {!! json_encode(trans('plugins/ecommerce::reports.ranges'), JSON_HEX_APOS) !!}
    
        $(document).ready(function(){
            show_shop();
            function show_shop(){
               $.ajax({
                type:'GET',
                url:'/depa',
                dataType:'json',
                success: function(response){
                    console.log(response);
                    let template='';
                    $.each(response.data,function(key,datas){
                      
                      template+=
                        `
                    <tr> 
                        <td>${key+1}</td>    
                        <td>${datas.departament}</td>    
                        <td>${datas.n_ventas}</td>    
                    </tr>
                    
                    `   ;                          
                    });
                    $('#shop').html(template);
                }
               })
                }
        })
    </script>
    
@endpush
