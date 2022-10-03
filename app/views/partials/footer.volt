{# this is example of "include" in volt which we are using for our common footer everywhere #}

<footer class="topFooter container-fluid">
    <div class="row">
            <div class="col-md-4">
                Cafe La Cigale, Twickenham, Middlesex.
            </div>
            <div class="col-md-4">
                {{ link_to("privacy", "Privacy Policy") }}
                {{ link_to("terms", "Terms") }}
            </div>
            <div class="col-md-4">
                 &copy; {{ date("Y") }} Akand IT.
            </div>
    </div>
</footer>
            