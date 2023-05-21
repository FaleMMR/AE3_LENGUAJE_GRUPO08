<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
	            <meta charset="utf-8" />
	            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	            <meta name="viewport" content="width=device-width, initial-scale=1" />
	            <link rel="stylesheet" href="/css/style.css" /> 
	            <link rel="shortcut icon" type="x-icon" href="img/xicon.png" />
	            <title>Edix, creamos los profesionales digitales que necesitan las empresas hoy.</title>
				<link rel="preconnect" href="https://fonts.googleapis.com" /> 
				<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous"/> 
				<link href="https://fonts.googleapis.com/css2?family=Roboto&#38;display=swap" rel="stylesheet" />
            </head>
            <body>
                <header>
                    <a href="#" class="header_title">
			            <img class="header_img" src="img/edix.png" alt="" />
		            </a>
                    <nav>
		                <ul class="nav-links">
			                <li><a href="https://www.edix.com/es/revolucion-profesional/">Sobre edix</a></li>
			                <li><a href="https://www.edix.com/es/cursos/">Bootcamps</a></li>
			                <li><a href="https://www.edix.com/es/fp/">Grados Superiores FP</a></li>
			                <li><a href="https://www.edix.com/es/cursos-fp/">Cursos FP</a></li>
			                <li><a href="https://campus.edix.com/">Campus</a></li>
		                </ul>	
	                </nav>
                    <a href="https://www.unir.net/" class="header_unir">
			            <img class="header_unir_img" src="img/unir.png" alt="" />
		            </a>
					<div class="boton">
						<a href="#" class="user"></a>
			 			<div id="menu-icon"> 
			  				<img class="menu-icon" src="img/menu-icon.png" alt="" />
			 			</div>
					</div>
                </header>
				<div class="row-1">
					<div class="col-1">
						<h1>¡Hola! Somos Edix</h1>
						<h3>Somos la escuela que crea a los profesionales digitales que necesitan las empresas. Estamos aquí para hacer tu Revolución Profesional. Formamos a Digital Workers. Lo hacemos a través de nuestra escuela de profesiones digitales y de Formación Profesional (FP) a distancia. </h3>
					</div>
				</div>
				<div class="row-2">
					<div class="col-profesores">
						<h1 class="h1class">Nuestros profesores</h1>
						<div class="col-p-table">
							<table border="1" class="tabla1">
								<tr>
								    <th>ID</th>
									<th>Profesor</th>
								</tr>
								<xsl:for-each select="ite/profesores/profesor">
									<tr>
										<td><xsl:value-of select="id"></xsl:value-of></td>
										<td><xsl:value-of select="nombre"></xsl:value-of></td>
									</tr>
								</xsl:for-each>
							</table>
							<h1 class="h1class">La disponibilidad de nuestros profesores en 2023</h1>	
							<xsl:for-each select="ite/profesores/profesor">
								<ul>
									<li><h3 class="h3class">El profesor <xsl:value-of select="nombre"></xsl:value-of> estara disponible</h3></li>
								</ul>
							</xsl:for-each>

							<h1 class="h1class">Nuestra oferta academica</h1>	

							<table border="1" class="tabla1">
								<tr>
								    <th>Nombre del ciclo</th>
									<th>Tipo de Grado</th>
									<th>Año de Titulacion</th>
								</tr>
								<xsl:for-each select="ite/ciclos/ciclo">
									<tr>
										<td><xsl:value-of select="nombre"></xsl:value-of></td>
										<td><xsl:value-of select="grado"></xsl:value-of></td>
										<td><xsl:value-of select="decretoTitulo/@año"></xsl:value-of></td>
									</tr>
								</xsl:for-each>
							</table>
								<h1 class="h1class">Nuestro equipo directivo</h1>	

							<xsl:for-each select="ite">
							<h3 class="h3class">Director</h3>
							<p>Nombre: <xsl:value-of select="director/nombre"></xsl:value-of></p>
							<p>Despacho: <xsl:value-of select="director/despacho"></xsl:value-of></p>
							<h3 class="h3class">Jefe de estudios</h3>
							<p>Nombre: <xsl:value-of select="jefe_estudios/nombre"></xsl:value-of></p>
							<p>Despacho: <xsl:value-of select="jefe_estudios/despacho"></xsl:value-of></p>
							</xsl:for-each>
						</div>
						<h1 class="h1class">¿ Deseas mas informacion ? Ponte en contacto con nosotros</h1>
						<div class="container-form">
							<div class="info-form">
								<h1>Contactanos</h1>
								<h3><xsl:value-of select="ite/@nombre"></xsl:value-of></h3>
								<a href=""><img id="tel-icon" src="/img/tel.png" alt="Telephone-icon" /> <xsl:value-of select="ite/telefono" /></a>
								<a href="https://institutotecnologico.edix.com"><img id="mess-icon" src="/img/message.png" alt="Message-icon" /> <xsl:value-of select="ite/@web" /></a>
								<a href="https://www.grupoproeduca.com/" alt="Proeduca"><img id="proeduca-icon" src="/img/global.png"></img><xsl:value-of select="ite/empresa" /></a>
							</div>
							<form action="#" autocomplete="off" id="formulariocontacto">
								<input type="text" name="nombre" placeholder="Ingresa tu nombre" class="campo" />
								<input type="email" name="email" placeholder="Ingresa tu correo" class="campo" />
								<textarea name="mensaje" placeholder="Ingresa tu mensaje" />
								<button type="submit" form="formulariocontacto" value="enviar" class="btn-enviar">Enviar</button>
							</form>
						</div>	
					</div>
				</div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 