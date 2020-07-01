<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

 
	<xsl:template name="temp_enc_datos_ejecutivo">
		 <fo:block span="none"> 
		  <xsl:if test="( ../../../../identificacion/documento/tipo = 'POLIZA' )">
			<fo:table table-layout="fixed">
				<!-- 
				<fo:table-column column-width="1.8cm"/>
				<fo:table-column column-width="5.5cm"/> 
				-->
				<fo:table-column column-width="proportional-column-width(14)"/>
				<fo:table-column column-width="proportional-column-width(76)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell display-align="center">
							<fo:block>
							 Sucursal
							</fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block >							
								<xsl:value-of disable-output-escaping="no" select="../../../../identificacion/operacion/sucursal"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell display-align="center">
						    <fo:block>Ejecutivo</fo:block>
						</fo:table-cell>
						<fo:table-cell display-align="before">
						    <fo:block>
								<xsl:value-of disable-output-escaping="no" select="../../../../identificacion/operacion/ejecutivo"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell/>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			</xsl:if>
		</fo:block> 
	</xsl:template>

	
</xsl:stylesheet>