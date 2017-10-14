<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="br.com.pcs3643.config.Parameters, br.com.pcs3643.models.Cliente, java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clientes cadastrados</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<% List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes"); %>
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

			<div class="col-lg-10">
				<br/><br/><br/><br/>
				<h1>Clientes cadastrados</h1>
				<a class="btn btn-primary" href="<%=request.getContextPath()%>/clients?action=<%=Parameters.CRUD_OPERATIONS.CREATE%>">Cadastrar cliente</a>
				<table class="table">
					<tr>
						<th>#</th>
						<th>Nome</th>
						<th style="text-align: right;">CPF</th>
						<th>E-mail</th>
						<th>Endere�o</th>
						<th></th>
					</tr>
					<tbody>
						<% for (Cliente cliente : clientes) { %>
						<tr>
							<td></td>
							<td><%= cliente.getNome() %></td>
							<td style="text-align: right;"><%= cliente.getCPF() %></td>
							<td><%= cliente.getEmail() %></td>
							<td><%= cliente.getEndereco() %></td>
							<td style="text-align: center;">Detalhes | Editar | Excluir</td>
						</tr>
						<% } %>
					</tbody>
				</table>

			</div>

		</div>
	</div>



</body>
</html>