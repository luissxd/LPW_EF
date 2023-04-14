<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("id");
String[][] data = (String[][]) session.getAttribute("data");
%>

<!DOCTYPE html>
<html>
<head>
<title>ONPE - Oficina Nacional de Procesos Electorales</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<body>
	<%@include file="WEB-INF/header.jsp"%>
<body>
<div class="container">
<img src="images/f-presidencial.jpg" width="1170" height="248"
			class="img-responsive mg30top">

		<section class="menu navbar-default menu05">
			<a name="posicion"></a>
			<nav class="navbar-collapse bs-navbar-collapse collapse"
				aria-expanded="false">
				<ul class="nav navbar-nav">
					<li class="bt-azul act-azul"><a href="presidencial.jsp">PRESIDENCIAL</a>
					</li>
					<li class="bt-amarillo"><a href="svlActas">ACTAS</a></li>
					<li class="bt-rojo"><a href="svlParticipacion">PARTICIPACIÓN
							CIUDADANA</a></li>
				</ul>
			</nav>
		</section>

		<section class="contenedor">
			<div class="row">
				<div class="col-xs-12 col-md-3">
					<div class="menu-interna">
						<ul>
							<li><a href="presidencial.jsp">RESUMEN GENERAL</a></li>
							<li><a href="presidencial2.jsp">RESULTADOS PRESIDENCIALES</a></li>
							<li><a href="presidencial3.jsp"
								class="act-izq">RESULTADOS POR TIPO DE VOTOS</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
					<br>
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3> <span class="glyphicon glyphicon-circle-arrow-right"
										aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
							</div>

							<div class="col-xs-1 oculto-boton-print">
								<button onclick="printContent('impreso');">
									<i class="fa fa-print ico-print"></i>
								</button>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle">
																GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS
															</p>
							<form id="frmBuscar" name="frmBuscar" action="" method="post"
								class="horizontal-form">
							<div id="divUbicombo" class="row">
								<div class="col-md-3" style="display:block">
									<label class="control-label">Ámbito:</label>
									<div id="ambito" class="form-group">
										<select name="cdgoAmbito" id="cdgoAmbito" class="form-control"
												onchange="buscarAmbito('10', '', 'PR', this.value, 'Barras');
										$('#aComentarioProvincia').html('');
										">
										  <option value="">TODOS</option>
										  <option value="P">PERÚ</option>
										  <option value="E">EXTRANJERO</option>
										</select>
									</div>
								</div>
								<div id="dvNombreDepartamento" class="col-md-3"
										style="display:none">
									<div class="form-group">
										<label id="lblDepartamento" class="control-label">Departamento:</label>
										<div id="departamentos">
											<select name="cdgoDep" id="cdgoDep" class="form-control"
													onchange="getProvinciasDepa('10', 'CPR', this.value);">
												  <option selected="selected" value="">TODOS</option>
												  											</select>
										</div>
									</div>
								</div>
								<div id="dvNombreProvincia" class="col-md-3"
										style="display:none">
									<div class="form-group">
										<label id="lblProvincia" class="control-label">Provincia:</label>
										<div id="provincias">
											<select id="cdgoProv" name="cdgoProv" class="form-control"
													onchange="getResultadosDistMuni('140100', '10', 'EM', this.value, '');">
											  <option selected="selected" value="">TODOS</option>
											</select>
										</div>
									</div>
								</div>
								<div id="dvNombreDistrito" class="col-md-3" style="display:none">
									<div class="form-group">
										<label id="lblDistrito" class="control-label">DISTRITO:</label>
										<div id="distritos">
											<select id="cdgoDist" name="cdgoDist" class="form-control"
													onchange="getResultadosDist('140100', '10', 'EM', this.value, '');">
											  <option selected="selected" value="">TODOS</option>
											</select>
										</div>
									</div>
								</div>
							</div>

							<div id="divDetalle">
									<br>

	<div class="row">
		<div class="col-lg-7 centered">
			<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
				<div class="col-xs-3 col-md-1">
					<span class="glyphicon glyphicon-ok-circle ico-info"
														aria-hidden="true"></span>
				</div>

				<div class="col-xs-9 col-md-11">
					<ul>
						<li>ACTAS PROCESADAS: 100.000%</li>
						<li>ACTAS CONTABILIZADAS: 100.000%</li>
						<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 pbot30">
		
		<div class="row cont-recto">
			<div class="col-lg-8 centered">
																																																<p>
													<b>GRÁFICO DE RESULTADOS DE VOTOS VÁLIDOS, BLANCOS Y NULOS</b>
												</p>
			<img class="img-responsive"
													src="images/votacion.png?_tot_votos_validos=93.512&amp;_votos_blancos=0.815&amp;_votos_nulos=5.673&amp;_votos_impugnados=0.000">
			</div>
		</div>
		
		<div id="page-wrap">
			<table class="table03_2">
				<thead>
					<tr>
						<th>VOTOS VÁLIDOS</th>
						<th>VOTOS BLANCOS</th>
						<th>VOTOS NULOS</th>
						<th>TOTAL</th>
					</tr>
				</thead>
				<tbody>
					<tr>
												<td style="text-align:center">17,152,817</td>
						<td>149,577</td>
						<td>1,040,502</td>
						<td>18,342,896</td>
					</tr>
					<tr>
													<td style="text-align:center">93.512%</td>
																			<td>0.815%</td>
																			<td>5.673%</td>
												<td>100.000%</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
		

</div>

							</form>
						</div>
						
					</div>

			  </div>
		</div>
	</section>
</div>









<%@include file="WEB-INF/footer.jsp"%>
</body>


</html>