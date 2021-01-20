<html>
<head>
<meta http-quiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Formulario</title>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="FormServlet" method="POST">
					<h4 class="mt-4">Ingrese sus datos</h4>
					<div class="form-group">
						<label for="nombre">Nombre</label> <input type="text"
							class="form-control" id="nombre" name="nombre" required />
					</div>
					<div class="form-group">
						<label for="apellido">Apellido</label> <input type="text"
							class="form-control" id="apellido" name="apellido" required />
					</div>
					<div class="form-group">
						<label for="apellido">Correo Electrónico</label> <input
							type="email" class="form-control" id="email" name="email"
							required />
					</div>
					<div class="form-group">
						<label for="apellido">Edad</label> <input type="number"
							class="form-control" id="edad" name="edad" required />
					</div>

					<input type="submit" class="btn btn-success btn-block"
						value="Aceptar" id="aceptar" />
					<div class="form-group mt-4">
						<label for="mensaje">Mensaje:</label>
						<p disabled class="text-justify" id="mensaje"
							name="mensaje" rows="3">
							<%if (request.getSession().getAttribute("mensaje") == null) {
								out.println("");
							} else {
								out.println(request.getSession().getAttribute("mensaje"));
							}%></p>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>