@extends(Theme::getThemeNamespace() . '::views.ecommerce.customers.master')

@section('content')
    {!! Form::open(['route' => ['customer.address.edit', $address->id], 'class' => 'ps-form--account-setting', 'method' => 'POST']) !!}
        <div class="ps-form__header">
            <h3>{{ SeoHelper::getTitle() }}</h3>
        </div>
        <div class="ps-form__content">
            <div class="form-group">
                <label for="name">{{ __('Full Name') }}:</label>
                <input id="name" type="text" class="form-control" name="name" value="{{ $address->name }}">
                {!! Form::error('name', $errors) !!}
            </div>

            <div class="form-group">
                <label for="email">{{ __('Email') }}:</label>
                <input id="email" type="text" class="form-control" name="email" value="{{ $address->email }}">
                {!! Form::error('email', $errors) !!}
            </div>

           <div class="form-group">
                <label for="phone">{{ __('Phone:') }}</label>
                <input id="phone" type="text" class="form-control" name="phone" value="{{ $address->phone }}">
                {!! Form::error('phone', $errors) !!}
            </div>
            @if (count(EcommerceHelper::getAvailableCountries()) > 1)
                <div class="form-group @if ($errors->has('country')) has-error @endif" style="display:none">
                    <label for="country">{{ __('Country') }}:</label>
                    <select name="country" class="form-control" id="country" change="PE">
                        @foreach(['' => __('Select country...')] + EcommerceHelper::getAvailableCountries() as $countryCode => $countryName)
                            <option value="{{ $countryCode }}" @if($countryCode=='PE' ) selected @endif @if ($address->country == $countryCode) selected @endif>{{ $countryName }}</option>
                        @endforeach
                    </select>
                </div>
                {!! Form::error('country', $errors) !!}
            @else
                <input type="hidden" name="country" value="{{ Arr::first(array_keys(EcommerceHelper::getAvailableCountries())) }}">
            @endif
            
            <div class="form-group @if ($errors->has('state')) has-error @endif" style="display:none">
                <label for="state">{{ __('State') }}:</label>
                <input id="state" type="text" class="form-control" name="state" value="{{ $address->state }}">
                {!! Form::error('state', $errors) !!}
            </div>

            <div class="form-group @if ($errors->has('city')) has-error @endif" style="display:none">
                <label for="city">{{ __('City') }}:</label>
                <input id="city" type="text" class="form-control" name="city" value="{{ $address->city }}">
                {!! Form::error('city', $errors) !!}
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <label for="address_ubigeo"> Ubigeo :  </label>
                        <!-- <input type="text" class="form-control required" value="" id="address_ubigeo" name="address_ubigeo">  -->
                        <select  style="width: 790px" class="form-control-lg select_2 required checkout-input" id="address_ubigeo" name="ubigeo" required>
                        
                            <option value="{{ $address }}" >{{ $address->full_ubigeo}}</option>
                    
                        </select>
                        <div class="invalid-feedback">
                            Seleccione su lugar de domicilio
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label for="address">{{ __('Address') }}:</label>
                <input id="address" type="text" class="form-control" name="address" value="{{ $address->address }}">
                {!! Form::error('address', $errors) !!}
            </div>

            @if (EcommerceHelper::isZipCodeEnabled())
                <div class="form-group">
                    <label>{{ __('Zip code') }}:</label>
                    <input id="zip_code" type="text" class="form-control" name="zip_code" value="{{ $address->zip_code }}">
                    {!! Form::error('zip_code', $errors) !!}
                </div>
            @endif

            <div class="form-group">
                <div class="ps-checkbox">
                    <input class="form-control" type="checkbox" name="is_default" value="1" @if ($address->is_default) checked @endif id="is-default">
                    <label for="is-default">{{ __('Use this address as default') }}</label>
                </div>
                {!! Form::error('is_default', $errors) !!}
            </div>

            <div class="form-group">
                <button class="ps-btn ps-btn--sm" type="submit">{{ __('Update') }}</button>
            </div>
        </div>
    {!! Form::close() !!}
@endsection
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {

        $("#address_ubigeo").select2({
            tags: true,
            tokenSeparators: [','],
            placeholder: "Distrito - provincia - departamento",
            minimumInputLength: 3,
            theme: "bootstrap4",
            ajax: {
                url: '/buscar_ubigeo_reniec',
                dataType: 'json',
                type: 'GET',
                delay: 10,
                beforeSend: function() {
                    console.log('enviando....');
                },
                data: function(params) {
                    return {
                        search: params.term,
                    };
                },
                processResults: function(data) {
                    return {
                        results: data
                    };
                },
                cache: true
            },
            language: {

                errorLoading: function() {
                    return "La carga falló";
                },
                inputTooLong: function(e) {
                    var t = e.input.length - e.maximum,
                        n = "Por favor, elimine " + t + " car";
                    return t == 1 ? (n += "ácter") : (n += "acteres"), n;
                },
                inputTooShort: function(e) {
                    var t = e.minimum - e.input.length,
                        n = "Por favor, introduzca " + t + " car";
                    return t == 1 ? (n += "ácter") : (n += "acteres"), n;
                },
                loadingMore: function() {
                    return "Cargando más resultados…";
                },
                maximumSelected: function(e) {
                    var t = "Sólo puede seleccionar " + e.maximum + " elemento";
                    return e.maximum != 1 && (t += "s"), t;
                },
                noResults: function() {
                    return "No se encontraron resultados";
                },
                searching: function() {
                    return "Buscando…";
                },
            },
        });
    });
</script>