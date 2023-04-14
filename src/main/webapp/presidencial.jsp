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

	<div class="container">
		<img src="images/f-presidencial.jpg" width="1170" height="248" class="img-responsive mg30top">

			<section class="menu navbar-default menu05">
				<a name="posicion"></a>
				<nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
					<ul class="nav navbar-nav">
                        <li class="bt-azul act-azul">
                            <a href="presidencial.jsp">PRESIDENCIAL</a>
                        </li>
                        <li class="bt-amarillo">
                            <a href="svlActas">ACTAS</a>
                        </li>
                        <li class="bt-rojo">
                            <a href="svlParticipacion">PARTICIPACIÓN CIUDADANA</a>
                        </li>
                    </ul>
				</nav>
			</section>

		<section class="contenedor">
			<div class="row">
				<div class="col-xs-12 col-md-3">
					<div class="menu-interna">
						<ul>
							<li><a href="presidencial.jsp"
								class="act-izq">RESUMEN GENERAL</a></li>
							<li><a href="presidencial2.jsp">RESULTADOS
									PRESIDENCIALES</a></li>
							<li><a href="presidencial3.jsp">RESULTADOS
									POR TIPO DE VOTOS</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
					<br>
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3>
									<span class="glyphicon glyphicon-circle-arrow-right"
										aria-hidden="true" style="font-size: 19px"></span> SEGUNDA
									ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES
								</h3>
							</div>

							<div class="col-xs-1 boton-print">
								<button onclick="printContent('impreso');">
									<i class="fa fa-print ico-print"></i>
								</button>
							</div>
						</div>


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
						<div class="col-xs-12 pbot30">
							<p class="subtitle">RESUMEN GENERAL DE ELECCIONES
								PRESIDENCIALES</p>
							<br>
							<div id="page-wrap">
								<table class="table01">
									<tbody>
										<tr class="titulo_tabla">
											<td>ORGANIZACIÓN POLÍTICA</td>
											<td>TOTAL</td>
											<td>% VOTOS VÁLIDOS</td>
										</tr>
										<tr>
											<td><img width="40px" height="40px"
												src="images/simbolo_ppk.jpg" class="spaceimg"><img
												width="40px" height="40px"
												src="images/pkk.jpg" class="spaceimg">PERUANOS
												POR EL KAMBIO</td>
											<td>8,596,937</td>
											<td>50.120</td>

										</tr>
										<tr>
											<td><img width="40px" height="40px"
												src="images/simbolo_keyko.jpg" class="spaceimg"><img
												width="40px" height="40px"
												src="images/keyko.jpg" class="spaceimg">FUERZA
												POPULAR</td>
											<td>8,555,880</td>
											<td>49.880</td>

										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="col-xs-12">
							<p class="subtitle">AVANCE DE ESCRUTINIO</p>
							<div id="page-wrap">
								<table class="table02">
									<thead>
										<tr>
											<th></th>
											<th>TOTAL</th>
											<th>PORCENTAJE</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="sangria0">TOTAL DE ACTAS</span></td>
											<td>77,307</td>
											<td>100.000%</td>
										</tr>
										<tr>
											<td><span class="sangria1">PROCESADAS</span></td>
											<td>77,307</td>
											<td>100.000%</td>
										</tr>
										<tr>
											<td><span class="sangria2">CONTABILIZADAS</span></td>
											<td>77,307</td>
											<td>100.000%</td>
										</tr>
										<tr>
											<td><span class="sangria2">PARA ENVÍO AL JEE</span></td>
											<td>0</td>
											<td>0.000%</td>
										</tr>
										<tr>
											<td><span class="sangria1">POR PROCESAR</span></td>
											<td>0</td>
											<td>0.000%</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="col-xs-12 pbot30">
							<p class="subtitle">PARTICIPACIÓN CIUDADANA *</p>
							<div id="page-wrap">
								<table class="table18">
									<thead>
										<tr>
											<th>ELECTORES HÁBILES</th>
											<th>CIUDADANOS QUE VOTARON</th>
											<th>% DE PARTICIPACIÓN</th>
											<th>% DE AUSENTISMO</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>22,901,954</td>
											<td>18,342,896</td>
											<td>80.093%</td>
											<td>19.907%</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 legend ">
								<span>* La participación ciudadana se basa en actas
									contabilizadas. </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>


	</div>

	<script>
		IrPosicionPagina();
	</script>
	<div id="divDetalle"></div>







	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>