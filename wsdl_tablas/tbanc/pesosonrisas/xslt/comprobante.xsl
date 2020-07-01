<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="estado">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
	  
        <fo:simple-page-master master-name="first"
          margin-right="1cm"
          margin-left="1cm"
          margin-bottom="1cm"
          margin-top="1cm"
          page-width="21cm"
          page-height="29.7cm">
          <fo:region-body margin-top="1.9cm" margin-bottom="12cm"/>
          <fo:region-before extent="8cm"/>
          
		  
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="first" initial-page-number="1">
        <fo:static-content flow-name="xsl-region-before">


          <fo:block line-height="14pt" font-size="10pt"
    text-align="end"></fo:block>
<fo:block  text-align="start" space-after="3pt" font-size="12pt" line-height="17pt" ><fo:basic-link color="black" internal-destination="N10006">Comprobante PESO$ONRISAS Bci N° <fo:inline color="#05953E" font-family="sans-serif" font-size="14pt"><fo:inline font-weight="bold"><xsl:value-of select="encabezado/Comprobante/@value"/></fo:inline></fo:inline></fo:basic-link><fo:page-number-citation ref-id="N10006"/></fo:block>
<fo:block  background-color="#F5FCAF" text-align="center" space-before="1pt" >
<fo:table table-layout="fixed">
	<fo:table-column column-width="500pt"/><fo:table-body><fo:table-row><fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="center"><fo:inline font-size="8pt" font-weight="bold">Tu solicitud ha sido procesada. El despacho se realizará a la dirección indicada dentro de los próximos 10 días hábiles.</fo:inline></fo:block></fo:table-cell></fo:table-row></fo:table-body></fo:table>
</fo:block>

         

       <fo:table table-layout="fixed"><fo:table-column column-width="538pt"/><fo:table-body><fo:table-row>
            <fo:table-cell padding-after="1pt" padding-before="1pt" padding-end="1pt" padding-start="1pt"><fo:block text-align="left" font-weight="bold" background-color="#E0E0DE" font-size="10pt">Productos Canjeados</fo:block></fo:table-cell>
            </fo:table-row>
        </fo:table-body></fo:table>    


        </fo:static-content>
        
        <fo:flow flow-name="xsl-region-body">
          
       
          
          
          <xsl:for-each select="detalles/detalle">
            
           
              <!-- Inicio Detalle -->
              <fo:table border-collapse="collapse" table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="4cm"/>
	
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="10pt" margin-left="5pt"> <xsl:value-of select="@NombreProducto"/></fo:block>
                    </fo:table-cell>
					<fo:table-cell>
                      <fo:block text-align="left" font-size="10pt" margin-left="5pt"> <xsl:value-of select="@Cantidad"/></fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="10pt"><xsl:value-of select="@Precio"/> Peso$onrisas </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block padding-top="3pt"> </fo:block>

 			<!-- Fin Detalle -->                        
          </xsl:for-each>         
          <!--  Total Inicio-->
          
           <fo:table border-collapse="collapse" table-layout="fixed">
		<fo:table-column column-width="8cm"/>
            <fo:table-column column-width="3cm"/>
	<fo:table-column column-width="4cm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="10pt" margin-left="5pt">Total Peso$onrisas</fo:block>
                    </fo:table-cell>
                     <fo:table-cell>
                      <fo:block text-align="left" font-size="10pt" margin-left="5pt">&#160;</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="left" font-size="10pt"><xsl:value-of select="encabezado/TotalCompra/@value"/> Peso$onrisas </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block padding-top="3pt"> </fo:block>
              
              <!-- Total Fin -->        
              
 		<fo:table table-layout="fixed"><fo:table-column column-width="538pt"/><fo:table-body><fo:table-row>
            <fo:table-cell padding-after="1pt" padding-before="1pt" padding-end="1pt" padding-start="1pt"><fo:block text-align="left" font-weight="bold" background-color="#E0E0DE" font-size="10pt">Modalidad de Canje</fo:block></fo:table-cell>
            </fo:table-row>
        </fo:table-body></fo:table> 
                      
		<fo:table table-layout="fixed" border-collapse="collapse">
			<fo:table-column column-width="8cm"/>
            <fo:table-column column-width="3cm"/>
			<fo:table-column column-width="6cm"/>
			<fo:table-body>
				<fo:table-row>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="start" font-size="10pt">Opción de Canje:</fo:block></fo:table-cell>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">:</fo:table-cell>
					<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">
	        			 <fo:block text-align="left" font-size="10pt"><xsl:value-of select="encabezado/Modalidad/@value"/> <fo:inline font-weight="bold"></fo:inline></fo:block>
					</fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="start" font-size="10pt">Total Peso$onrisas :</fo:block></fo:table-cell>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">:</fo:table-cell>
					<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">
	        			 <fo:block text-align="left" font-size="10pt"><xsl:value-of select="encabezado/TotalCanjear/@value"/> <fo:inline font-weight="bold"> Peso$onrisas</fo:inline></fo:block>
					</fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="start" font-size="10pt">Total Tarjeta de Crédito</fo:block></fo:table-cell>
	            	<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">:</fo:table-cell>
					<fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt">
	        			 <fo:block text-align="left" font-size="10pt"><xsl:value-of select="encabezado/TotalTarjeta/@value"/> <fo:inline font-weight="bold"> Pesos</fo:inline></fo:block>
					</fo:table-cell>
	            </fo:table-row>
        	</fo:table-body>
        </fo:table> 
        
               
       <fo:table table-layout="fixed"><fo:table-column column-width="538pt"/><fo:table-body><fo:table-row>
            <fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="left" font-weight="bold" background-color="#E0E0DE" font-size="10pt">Direcci&#243;n de env&#237;o</fo:block></fo:table-cell>
            </fo:table-row>
          <fo:table-row>
            <fo:table-cell padding-after="3pt" padding-before="3pt" padding-end="3pt" padding-start="3pt"><fo:block text-align="start" font-size="10pt"><fo:inline >
	    <fo:block space-after="12pt" line-height="15pt" font-size="10pt">Los productos serán despachados a:</fo:block>
              <fo:block space-after="12pt" line-height="15pt" font-size="10pt"> <xsl:value-of select="Envio/Direccion/@value"/>, <xsl:value-of select="Envio/Comuna/@value"/>, <xsl:value-of select="Envio/Ciudad/@value"/><fo:inline font-weight="bold"/>.<fo:block/>
              Opción de recibo: <xsl:value-of select="Envio/Nombretercero/@value"/><fo:block/>
              Relación: <xsl:value-of select="Envio/Relaciontercero/@value"/><fo:block/>
              </fo:block>
	    </fo:inline></fo:block></fo:table-cell>
            </fo:table-row>
        </fo:table-body></fo:table>    


        </fo:flow>

     
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
