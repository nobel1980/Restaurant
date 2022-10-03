<script language="JavaScript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script language="JavaScript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
<script language="JavaScript" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js" type="text/javascript"></script>
<script language="JavaScript" src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
<script type="text/javascript">
    $(document).ready(function() {
        base_path = "/Cafe/";
         $('#emailUsers').DataTable({
            serverSide: true,
            ajax: {
                url: base_path +'informations/emailUsers',
                method: 'POST'
            },
            columns: [
                {data:"emp_id"},
                {data:"emp_name"},
                {data:"email_add"},
                {data:"email_pass"},
                {
                    data:   "status",searchable: false,
                    render: function ( data, type, row ) {
                        if ( data === 'active' ) {
                            return '<span class="badge badge-success">Active</span>';
                        } else if(data ==='locked'){ return '<span class="badge badge-warning">Locked</span>';}
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
            <h2 class="right-line pull-left">Email Users Information</h2>
        </div>
        <hr class="colorgraph">
        <table id="emailUsers" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
            <thead>
            <th>Emp ID</th>
            <th>Name</th>
            <th>Email Address</th>
            <th>Password</th>
            <th>Status</th>
            <th></th>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>


