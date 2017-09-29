<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="br.com.pcs3643.config.Parameters, br.com.pcs3643.models.Cliente"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar cliente</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">



<% Cliente cliente = new Cliente(); %>
<% cliente = (Cliente) request.getAttribute("client"); %>

</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Loja de Computadores</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Sobre</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Servi�os</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Contato</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">

		<div class="row">
			
			<div class="col-lg-8">
				<br/><br/><br/><br/>
				<h1>Cadastrar cliente</h1>
	
				<p>Sistema > Cadastrar Cliente</p>
	
				<h4>
					<a
						href="<%=request.getContextPath()%>/clients?action=<%= Parameters.CRUD_OPERATIONS.ALL %>">Listar
						Clientes</a>
				</h4>
	
				<form action="<%=request.getContextPath()%>/clients" method="post">
	
					<div>
						Nome <input type="text" name="nome"
							value="<%= cliente.getNome() %>">
					</div>
					<div>
						CPF: <input type="text" name="cpf">
					</div>
					<div>
						Endere�o: <input type="text" name="endereco">
					</div>
					<div>
						E-mail: <input type="text" name="email">
					</div>
					<div>
						Telefone: <input type="text" name="telefone">
					</div>
	
					<button value="Cadastrar" type="submit">Cadastrar</button>
				</form>
			
			</div>
			
			
		</div>
	</div>



	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>

</body>
</html>