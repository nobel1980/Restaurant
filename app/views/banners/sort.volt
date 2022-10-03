{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("banners/index", "&larr; Go Back") }}
    </li>
</ul>

<ul id="sortable">
    {% for banner in banners %}
        <li id="level-{{ banner.id }}"> {{ banner.title }}</li>
    {% endfor %}
</ul>


{#Update Banners position#}
<script type="text/javascript">
    $(document).ready(function () {
        $('ul').sortable({
            axis: 'y',
            cursor: 'move',
            smooth:         false,
            opacity:        0.7,
            tolerance:      'pointer',
            stop: function (event, ui) {
                var data = $(this).sortable('serialize');
                $.ajax({
                    data: data,
                    type: 'POST',
                    url: base_path + "banners/sortUpdate"
                });
            }
        });
    });
</script>


