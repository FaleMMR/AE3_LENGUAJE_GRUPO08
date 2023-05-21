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
            </head>
            <body>
				<h1>Programa de consultas</h1>
				<h2>Datos del centro seleccionado</h2>
				<xsl:choose>
					<xsl:when test="centros/centro/identificacion[codigo_centro='28077518']">
						<xsl:for-each select="centros/centro/identificacion[codigo_centro='28077518']">
								<h3>Identificacion</h3>	
								<p>Codigo del centro : <xsl:value-of select="codigo_centro" /></p>
								<p>Denominacion : <xsl:value-of select="denominacion" /></p>
								<p>Telefono : <xsl:value-of select="telefono" /></p>
								<h3>Ubicacion</h3>	
								<xsl:for-each select="ubicacion">
									<p>Autonomia : <xsl:value-of select="autonomia" /></p>
									<p>Provincia : <xsl:value-of select="provincia" /></p>
									<p>Pais: <xsl:value-of select="pais" /></p>
									<p>Municipio: <xsl:value-of select="municipio" /></p>
									<p>Localidad: <xsl:value-of select="localidad" /></p>
									<p>Domicilio: <xsl:value-of select="domicilio" /></p>
									<p>Codigo Postal: <xsl:value-of select="codigo_postal" /></p>
								</xsl:for-each>
								<h3>Tipificacion</h3>	
								<xsl:for-each select="tipificacion">
									<p>Naturaleza : <xsl:value-of select="naturaleza" /></p>
									<p>Concertado : <xsl:value-of select="concertado" /></p>
									<p>Tipo de centro : <xsl:value-of select="tipo_centro" /></p>
									<p>Denominacion: <xsl:value-of select="denominacion" /></p>
								</xsl:for-each>
									<h3>Enseñanzas Impartidas </h3>	
										<table border="1">
											<tr>
								    			<th>Grado</th>
												<th>Familia</th>
												<th>Enseñanza</th>
												<th>Modalidad</th>
												<th>Decreto Año</th>
											</tr>
											<xsl:for-each select="enseñanzas/grado">
												<tr>
													<td><xsl:value-of select="@nombre" /></td>
													<td><xsl:value-of select="familia" /></td>
													<td><xsl:value-of select="enseñanza" /></td>
													<td><xsl:value-of select="modalidad" /></td>
													<td><xsl:value-of select="decretoTitulo/@año" /></td>
												</tr>
											</xsl:for-each>
										</table>
									<h2>Ornigrama</h2>
								<h3>Equipo Directivo</h3>
								<xsl:for-each select="organigrama/equipo_directivo">
									<p>Director : <xsl:value-of select="director/nombre" /> </p>
									<p>Despacho : <xsl:value-of select="director/despacho" /></p>
									<p>Jefe de estudios : <xsl:value-of select="jefe_estudios/nombre" /> </p>
									<p>Despacho : <xsl:value-of select="jefe_estudios/despacho" /> </p>
								</xsl:for-each>
								<h3>Docentes</h3>
								<xsl:for-each select="organigrama/claustro/docente">
									<table border="1">
										<tr>
								    		<th>ID</th>
											<th>Nombre</th>
										</tr>
										<tr>
											<td><xsl:value-of select="id" /></td>
											<td><xsl:value-of select="nombre" /></td>
										</tr>
									</table>
								</xsl:for-each>

						</xsl:for-each>	
					</xsl:when>
					<xsl:otherwise>
						<h1>No se encuentra el centro introducido, por favor vuelvelo a intentar</h1>
					</xsl:otherwise>
				</xsl:choose>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 