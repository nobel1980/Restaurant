{{ content() }}

<div class="row mb-4">
    <div class="col-6">
        {{ link_to("products/index", '<span class="oi oi-chevron-left" title="chevron-left" aria-hidden="true"></span> Go Back', "class": "btn btn-outline-primary") }}
    </div>
    <div class="col-6 text-right">
        {{ link_to("products/create", '<span class="oi oi-plus" title="plus" aria-hidden="true"></span> Create Product', "class": "btn btn-primary") }}
    </div>
</div>

<div class="table-responsive">
    {% for product in page.items %}
        {% if loop.first %}
            <table class="table table-bordered table-striped" align="center">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Status</th>
                <th colspan="2">Action</th>
            </tr>
            </thead>
            <tbody>
        {% endif %}
        <tr>
            <td>{{ product.id }}</td>
            <td>{{ product.name }}</td>
            <td>{{ product.description }}</td>
            <td>£{{ product.price }}</td>
            <td>{{ product.active == '1' ?  '<span class="badge badge-success">Active</span>' : '<span class="badge badge-warning">Inactive</span>' }}</td>
            <td width="12%">{{ link_to("products/edit/" ~ product.id, '<span class="oi oi-pencil" title="pencil" aria-hidden="true"></span> Edit', "class": "btn btn-light btn-sm") }}</td>
            <td width="12%">{{ link_to("products/delete/" ~ product.id, '<span class="oi oi-x" title="X" aria-hidden="true"></span> Delete', "class": "btn btn-light btn-sm") }}</td>
        </tr>
        {% if loop.last %}
            </tbody>
            <tfoot>
            <tr>
                <td colspan="10" class="text-right">
                    <ul class="pagination mb-0">
                        <li class="page-item">
                            {{ link_to("products/index", '<span class="oi oi-media-skip-backward" title="skip backward" aria-hidden="true"></span> First', "class": "page-link") }}
                        </li>
                        <li class="page-item">
                            {{ link_to("products/index?page=" ~ page.before, '<span class="oi oi-media-step-backward" title="step backward" aria-hidden="true"></span> Previous', "class": "page-link") }}
                        </li>
                        <li class="page-item disabled">
                            {{ link_to("#", page.current ~ "/" ~ page.total_pages, "class":"page-link") }}
                        </li>
                        <li class="page-item">
                            {{ link_to("products/index?page=" ~ page.next, '<span class="oi oi-media-step-forward" title="step forward" aria-hidden="true"></span> Next', "class": "page-link") }}
                        </li>
                        <li class="page-item">
                            {{ link_to("products/index?page=" ~ page.last, '<span class="oi oi-media-skip-forward" title="skip forward" aria-hidden="true"></span> Last', "class": "page-link") }}
                        </li>

                    </ul>
                </td>
            </tr>
            </tfoot>
            </table>
        {% endif %}
    {% else %}
        No products are recorded
    {% endfor %}
</div>
