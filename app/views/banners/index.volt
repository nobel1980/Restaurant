{{ content() }}

<ul class="pager">
    <li>
        {{ link_to("Banners/sort", "Sort", "class": "btn btn-primary") }}
    </li>
    <li class="pull-right">
        {{ link_to("Banners/create", "Create", "class": "btn btn-primary") }}
    </li>
</ul>

{% for banners in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>isActive</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ banners.id }}</td>
            <td>{{ banners.title }}</td>
            <td>{{ banners.isActive == '1' ? '<span class="badge badge-success">Active</span>' : '<span class="badge badge-warning">Inactive</span>' }}</td>

            <td width="12%">{{ link_to("banners/edit/" ~ banners.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("banners/delete/" ~ banners.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("banners/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("banners/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("banners/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("banners/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No Banners are recorded
{% endfor %}


