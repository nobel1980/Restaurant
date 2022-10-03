{{ stylesheet_link('css/flexslider.css') }}
{{  stylesheet_link('css/jquery.bxslider.css') }}
{{ stylesheet_link('css/lightbox.css') }}
{{ stylesheet_link('css/style.css') }}


{{ javascript_include('js/jquery.flexslider-min.js') }}
{{ javascript_include('js/jquery.bxslider.min.js') }}
{{ javascript_include('js/lightbox-2.6.min.js') }}
{{ javascript_include('js/main.js') }}

<header>
    <nav id="topNav" class="navbar fixed-top navbar-expand-md bg-light ">

        <div class="container">
            <div class="logo"><a href="/shop/"><img src="/img/logo.png" alt="logo" /></a></div>
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" area-expanded="false" aria-label="Toggle Navigation">
                    <span class="oi oi-menu" title="MENU" aria-hidden="true" style="color: #32cd32;"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="nav-content">
                <ul class="navbar-nav  ml-auto">

                    {%- set menus = [
                    'Home': 'shop',
                    'Menu': 'shop/menu',
                    'Gallery': 'shop/gallery',
                    'Contact': 'shop'
                    ] -%}

                    {%- for key, value in menus %}
                        {% if value == dispatcher.getControllerName() %}
                            <li class="active nav-item">{{ link_to(value, key, 'class':'nav-link') }}</li>
                        {% else %}
                            <li>{{ link_to(value, key, 'class':'nav-link') }}</li>
                        {% endif %}
                    {%- endfor -%}

                </ul>
            </div> <!-- navbar-collapse -->
        </div>
    </nav>
</header>

<main role="main" style="margin-top: 100px;">
            {{ content() }}
</main>
{# our common footer #}
{% include 'layouts/footer.volt' %}

<style type="text/css">
    .nav .navbar-nav>li>a:hover,.nav .navbar-nav>li>a:focus {
        color:#fff;
        background-color:#d81c0a;
        border-bottom:3px solid #fdc51d;
    }
</style>