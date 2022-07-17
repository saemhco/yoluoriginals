<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">{{ $title ?? __('You will receive money through the information below') }}</h4>
    <p>{{ __('Bank name') }}: <strong>{{ Arr::get($bankInfo, 'name') }}</strong></p>
    <p>{{ __('Bank number') }}: <strong>{{ Arr::get($bankInfo, 'number') }}</strong></p>
    <p>{{ __('Full name') }}: <strong>{{ Arr::get($bankInfo, 'full_name') }}</strong></p>
    <p>{{ __('Description') }}: {{ Arr::get($bankInfo, 'description') }}</p>
    @isset($link)
        <hr>
        <p class="mb-0">{!! clean(__('You can update in <a href=":link">here</a>', ['link' => $link])) !!}</p>
    @endisset
</div>
