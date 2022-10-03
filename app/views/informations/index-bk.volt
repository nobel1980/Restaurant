<script language="JavaScript" src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script language="JavaScript" src="https://cdn.datatables.net/plug-ins/3cfcc339e89/integration/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css">
<script type="text/javascript">
    $(document).ready(function() {
        base_path = "/Cafe/";
         $('#mobileUsers').DataTable({
            serverSide: true,
            ajax: {
                url: base_path +'informations/index',
                method: 'POST'
            },
            columns: [
                {data: "NAME"},
                {data:"DESIG_NAME"},
                {data:"MOBILE_NO"},
                {data:"CEILING"},
                {
                    data: "MOBILE_NO",
                    render: function(data, type, row, meta){
                        if(type === 'display'){
                            data = '<a class="btn btn-secondary btn-sm active" role="button" aria-pressed="true" href="edit/' + data + '"><i class="icon-pencil"></i></a>';
                        }

                        return data;
                    }
                }
            ]
        });
    });
</script>

<div class="row mb-4">
    <div class="col-6">
        {{ link_to("users/index", '<span class="oi oi-chevron-left" title="chevron-left" aria-hidden="true"></span> Go Back', "class": "btn btn-outline-primary") }}
    </div>
    <div class="col-6 text-right">
        {{ link_to("users/create", '<span class="oi oi-plus" title="plus" aria-hidden="true"></span> Create User', "class": "btn btn-primary") }}
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="container">
            <h2 class="right-line pull-left">Mobile Users Information</h2>
        </div>
        <hr class="colorgraph">
        <table id="mobileUsers" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
            <th>Name</th>
            <th>Designation</th>
            <th>Mobile</th>
            <th>Ceiling</th>
            <th></th>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>


