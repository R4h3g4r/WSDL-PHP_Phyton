<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
	<xsl:template match="estado">
		<fo:root>
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina_segunda"
					margin-left="1cm">
					<fo:region-body margin-top="2cm" margin-bottom="0.2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="pagina_segunda"
				initial-page-number="1" language="en" country="us">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:table>
							<fo:table-column />
								<fo:table-body>
									<fo:table-row margin-left="1cm">
										<fo:table-cell>
											
											<xsl:call-template name="comprobante_imagenes_cenefa" />
										</fo:table-cell>
												
									</fo:table-row>
									<fo:table-row  margin-left="5.4cm">
										<fo:table-cell>
											
											<xsl:call-template name="comprobante_imagenes_pd" />
										</fo:table-cell>
												
									</fo:table-row>
									<fo:table-row  >
										<fo:table-cell>
											
											<xsl:call-template name="comprobante" />
										</fo:table-cell>										
									</fo:table-row>
									<fo:table-row  margin-left="-3.7cm">
										<fo:table-cell>
											
											<xsl:call-template name="comprobante_imagenes_seguridad" />
										</fo:table-cell>
												
									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="comprobante_imagenes_cenefa">
		<fo:block >
		
			<fo:external-graphic width="425px" height="95px">
				<xsl:attribute name="src">
                	<xsl:value-of select="encabezado/cenefa/@value"/>
             	</xsl:attribute>
			</fo:external-graphic>			
				
		</fo:block>
	</xsl:template>
	<xsl:template name="comprobante_imagenes_pd">
		<fo:block>
			
			<fo:external-graphic width="185px" height="40px">
				<xsl:attribute name="src">
						<xsl:value-of select="encabezado/logo_pd/@value"/>
             	</xsl:attribute>
			</fo:external-graphic>
			
		</fo:block>
	</xsl:template>
	<xsl:template name="comprobante">
<fo:block margin-left="3.4cm">
		
				<fo:block space-after="0.3cm" />
				<fo:block space-after="0.3cm" />		
			<fo:inline font-family="sans-serif" font-weight="bold" font-size="13pt" > <xsl:value-of select="encabezado/nombre/@value"/></fo:inline>:
				<fo:block space-after="0.3cm" />	
		
</fo:block>
<fo:block>
	<fo:block margin-left="5.4cm">
		
				<fo:inline font-family="sans-serif" font-size="10pt">Su compra en 
</fo:inline>
				<fo:inline font-family="sans-serif" font-weight="bold" font-size="11pt" color="#0000CC"> <xsl:value-of select="encabezado/tienda/@value" />
</fo:inline>
				<fo:inline font-family="sans-serif" font-size="10pt"> se ha realizado con éxito.
</fo:inline>
				<fo:block space-after="0.3cm" />
		
		</fo:block>
		</fo:block>
		
		<fo:block  text-align="center">
			
			<fo:table table-layout="fixed" width="100%">
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	        	<fo:table-column column-width="84mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	       		 <fo:table-body>
	        		<fo:table-row  >
	        			<fo:table-cell column-number="2">
	       					 <fo:block  text-align="center">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt" color="#FFF">Comprobante Transacción
</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        		</fo:table-row>
	        	</fo:table-body>
        	</fo:table>
			
		</fo:block>
		<fo:block  text-align="center">
		
			<fo:table table-layout="fixed" width="100%">
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	       		 <fo:table-body>
	        		<fo:table-row  >
	        			<fo:table-cell background-color="#CCCCCC" column-number="2">
	       					 <fo:block  text-align="right">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt" >Cuenta:
</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        			<fo:table-cell background-color="#EEEEEE" column-number="3">
	       					 <fo:block  text-align="left">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt"><xsl:value-of select="encabezado/cuenta/@value" />

</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        		</fo:table-row>
	        	</fo:table-body>
        	</fo:table>
			
		</fo:block>
		<fo:block  text-align="center">
		
			<fo:table table-layout="fixed" width="100%">
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	       		 <fo:table-body>
	        		<fo:table-row  >
	        			<fo:table-cell background-color="#CCCCCC" column-number="2">
	       					 <fo:block  text-align="right">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt" >Cantidad:
</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        			<fo:table-cell background-color="#EEEEEE" column-number="3">
	       					 <fo:block  text-align="left">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt">$ <xsl:value-of select="encabezado/cantidad/@value" />


</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        		</fo:table-row>
	        	</fo:table-body>
        	</fo:table>
			
		</fo:block>
		<fo:block  text-align="center">
		
			<fo:table table-layout="fixed" width="100%">
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	       		 <fo:table-body>
	        		<fo:table-row  >
	        			<fo:table-cell background-color="#CCCCCC" column-number="2">
	       					 <fo:block  text-align="right">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt" >Fecha:
</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        			<fo:table-cell background-color="#EEEEEE" column-number="3">
	       					 <fo:block  text-align="left">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt"><xsl:value-of select="encabezado/fecha/@value" />



</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        		</fo:table-row>
	        	</fo:table-body>
        	</fo:table>
			
		</fo:block>
		<fo:block  text-align="center">
		
			<fo:table table-layout="fixed" width="100%">
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="42mm"  background-color="#596880" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"
	border-bottom="0.5pt solid black"/>
	        	<fo:table-column column-width="proportional-column-width(1)"  />
	       		 <fo:table-body>
	        		<fo:table-row  >
	        			<fo:table-cell background-color="#CCCCCC" column-number="2">
	       					 <fo:block  text-align="right">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="10pt">Código de Operación:
</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        			<fo:table-cell background-color="#EEEEEE" column-number="3">
	       					 <fo:block  text-align="left">
	       					 	<fo:inline  font-family="sans-serif" font-weight="bold" font-size="11pt" color="#0000CC"> <xsl:value-of select="encabezado/codigoOpe/@value"/>

</fo:inline>
	       					 </fo:block>
	        			</fo:table-cell>
	        		</fo:table-row>
	        	</fo:table-body>
        	</fo:table>
			
		</fo:block>
	</xsl:template>
	<xsl:template name="comprobante_imagenes_seguridad">		
		<fo:block  text-align="center">
		
			<fo:external-graphic width="430px" height="50px">
				<xsl:attribute name="src">
                	<xsl:value-of select="encabezado/seguridad/@value"/>
             	</xsl:attribute>
			</fo:external-graphic>	
			
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
