<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<section class="container space02 nosub">
		<div class="pull-left pd02 ancho-ie">
			<a href="presidenciales.jsp">
				<div class="grow pic btn01">
					<img src="images/presidenciales.jpg">
				</div>
				<div class="tit02">
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					<p>PRESIDENCIALES</p>
				</div>
			</a>
		</div>
		<div class="pull-left pd02 oculto2 ancho-ie">
			<a href="actas.jsp">
				<div class="grow pic btn04">
					<img src="images/actas.jpg">
				</div>
				<div class="tit02">
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					<p>ACTAS</p>
				</div>
			</a>
		</div>
		<div class="pull-left pd01 ancho-ie">
			<a href="svlParticipacion">
				<div class="grow pic btn05">
					<img src="images/participacion.jpg">
				</div>
				<div class="tit01">
					<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
					<p>
						PARTICIPACIÓN <br> CIUDADANA
					</p>
				</div>
			</a>
		</div>
	</section>


	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>