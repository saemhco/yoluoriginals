<div class="tab-pane" id="tab_bank_info">
    <div class="form-group">
        <div class="ps-form__content">
            <div class="form-group">
                <label for="bank_info_name">{{ __('Bank name') }}:</label>
                <input id="bank_info_name"
                    type="text"
                    class="form-control"
                    name="bank_info[name]"
                    placeholder="{{ __('Bank name') }}"
                    value="{{ Arr::get($model->bank_info, 'name') }}">
            </div>
            {!! Form::error('bank_info[name]', $errors) !!}

            <div class="form-group">
                <label for="bank_info_number">{{ __('Bank number') }}:</label>
                <input id="bank_info_number"
                    type="text"
                    class="form-control"
                    placeholder="{{ __('Bank number') }}"
                    name="bank_info[number]"
                    value="{{ Arr::get($model->bank_info, 'number') }}">
            </div>
            {!! Form::error('bank_info[name]', $errors) !!}

            <div class="form-group">
                <label for="bank_info_full_name">{{ __('Full name') }}:</label>
                <input id="bank_info_full_name"
                    type="text"
                    class="form-control"
                    placeholder="{{ __('Full name') }}"
                    name="bank_info[full_name]"
                    value="{{ Arr::get($model->bank_info, 'full_name') }}">
            </div>
            {!! Form::error('bank_info[name]', $errors) !!}

            <div class="form-group">
                <label for="bank_info_description">{{ __('Description') }}:</label>
                <textarea id="bank_info_description"
                    type="text"
                    class="form-control"
                    placeholder="{{ __('Description') }}"
                    name="bank_info[description]"
                    rows="4">{{ Arr::get($model->bank_info, 'description') }}</textarea>
            </div>
            {!! Form::error('bank_info[description]', $errors) !!}
        </div>
    </div>
</div>
