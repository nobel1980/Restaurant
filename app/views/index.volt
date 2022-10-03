<!DOCTYPE html>
<html>
	<head>
		<title>Cafe, Breakfast-Cafe La Cigale</title>
                <meta charset="utf-8">
                 <!-- Viewport Meta Tag -->
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <!-- Bootstrap 4.1.1
                 ('css/bootstrap.min.css')-->

                <!-- Open-iconic fonts for bootstrap
                stylesheet_link('css/open-iconic-bootstrap.css')-->
        {{ stylesheet_link('css/bootstrap.min.css') }}
        {#<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">#}
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.0/font/css/open-iconic-bootstrap.min.css" />


                {{ javascript_include('js/jquery-3.3.1.min.js') }}
                {{ javascript_include('js/bootstrap.bundle.min.js') }}
	</head>
	<body>
		{{ content() }}
	</body>
</html>