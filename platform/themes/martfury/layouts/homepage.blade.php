{!! Theme::partial('header') !!}

<div id="homepage-1">
    {!! Theme::content() !!}
    <style>
        .header.header--sticky .header__left{
            display: inline;
        }
      .header.header--sticky .header__left .ps-logo {
    height: 80px;
    width: 130px;
    display:-ms-flexbox;
}
    </style>
</div>

{!! Theme::partial('footer') !!}
