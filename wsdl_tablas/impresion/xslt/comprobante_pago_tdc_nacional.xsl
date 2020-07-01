<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format">
 <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
 <xsl:variable name="lineas">#CCCCCC</xsl:variable>
 <xsl:variable name="txt">#000000</xsl:variable>
 <xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
 <xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
 <xsl:variable name="alto-filas">5mm</xsl:variable>
 <xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
 <xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
 <xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
 <xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
 <xsl:variable name="espacio-celda-top">2mm</xsl:variable>
 <xsl:variable name="size-fuente-margen">7pt</xsl:variable>
 <xsl:decimal-format name="peso" decimal-separator="," grouping-separator="."/>
 <xsl:decimal-format name="latin" decimal-separator=','  grouping-separator="."/>

 <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
 
 <xsl:template match="/">
   <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

    
    <fo:layout-master-set>
      <fo:simple-page-master master-name="comprobante" page-height="27.9cm" page-width="21.1cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
          <fo:region-body/>
          <fo:region-before extent="3cm"/>
      </fo:simple-page-master>
   </fo:layout-master-set>

    <fo:page-sequence master-reference="comprobante">
        <fo:flow flow-name="xsl-region-body">
	   <xsl:call-template name="logo"/>
           <xsl:apply-templates select="//encabezado"/>
	   <xsl:apply-templates select="//encabezado/detalle"/>
       </fo:flow>
     </fo:page-sequence>
   </fo:root>
 </xsl:template>
 
 <xsl:template name="logo">
	
 </xsl:template>

 <xsl:template match="encabezado">
   <fo:block text-align="right" line-height="30pt">
 	     <fo:external-graphic>
	         <xsl:attribute name="src">
				<xsl:value-of select="rutalogo"/>02-logo-bci-1.gif
	         </xsl:attribute>
	     </fo:external-graphic>
        </fo:block>
   <fo:block font-weight="bold" font-size="15pt" color=" black">
          Comprobante de pago de Tarjeta de Crédito Nacional
   </fo:block>
   <fo:block font-size="10pt" font-family="serif" line-height="30pt" >
   <fo:table table-layout="fixed">
     <fo:table-column column-width="7cm" />
		<fo:table-column column-width="6.7cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block font-weight="bold"  color=" black">
							Comprobante N°: <xsl:value-of select="numero"/>
						</fo:block>		
					</fo:table-cell>
				<fo:table-cell>
       	        <fo:block font-weight="bold"  color=" black" text-align="right">
                    <xsl:value-of select="fecha"/>
                </fo:block>
            </fo:table-cell>
       </fo:table-row>   
   </fo:table-body>
   </fo:table>
 </fo:block>
 </xsl:template>

<xsl:template match="encabezado/detalle">
        <fo:block font-weight="bold" font-size="10pt" color=" black" line-height="30pt">
               Datos del Comprobante
        </fo:block>
	<fo:block font-size="8pt" font-family="serif">
		<fo:table table-layout="fixed">
		    <fo:table-column column-width="6cm" />
		    <fo:table-column column-width="5cm" />
		    <fo:table-body>
		       <fo:table-row >
		            <fo:table-cell>
		                <fo:block font-weight="bold"  color=" black" text-align="right">
		                     Cliente:
		                </fo:block>
		            </fo:table-cell>
		            <fo:table-cell>
		                <fo:block font-weight="bold"  color=" black">
		                     <xsl:value-of select="cliente"/>
		                </fo:block>
		            </fo:table-cell>
		        </fo:table-row>
				
				<fo:table-row >
                    <fo:table-cell>
                        <fo:block font-weight="bold"  color=" black" text-align="right">
                             Rut Empresa:
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block font-weight="bold"  color=" black">
							 <xsl:value-of select="rutempresa"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
			  
		        <fo:table-row>
		            <fo:table-cell>
		                <fo:block font-weight="bold"  color=" black" text-align="right">
		                     Usuario Tarjeta de Cr&#233;dito:
		                </fo:block>
		             </fo:table-cell>
		             <fo:table-cell>
		                <fo:block font-weight="bold"  color=" black">
		                     <xsl:value-of select="usuario"/>
		                </fo:block>
		             </fo:table-cell>
		        </fo:table-row>

		        <fo:table-row>
		              <fo:table-cell>
		                  <fo:block font-weight="bold"  color=" black" text-align="right">
		                      Tarjeta de Crédito:
		                  </fo:block>
		              </fo:table-cell>
		              <fo:table-cell>
		                  <fo:block font-weight="bold"  color=" black">
		                       XXXX-<xsl:value-of select="numerotdc"/>-<xsl:value-of select="usuario"/> 
		                  </fo:block>
		              </fo:table-cell>
		        </fo:table-row> 
		        
		        <fo:table-row>
		               <fo:table-cell>
		                  <fo:block font-weight="bold"  color=" black" text-align="right">
		                       Cuenta de Cargo: 	
		                  </fo:block>
		               </fo:table-cell>
		               <fo:table-cell>
		                  <fo:block font-weight="bold"  color=" black" >
		                       <xsl:value-of select="ctacargo"/>
		                  </fo:block>
		               </fo:table-cell>
		         </fo:table-row>
		         
	         	<fo:table-row>
	               <fo:table-cell>
	                   <fo:block font-weight="bold"  color=" black" text-align="right">
	                       Monto Pagado:
	                   </fo:block>
	               </fo:table-cell>
	               <fo:table-cell>
	                   <fo:block font-weight="bold"  color=" black">
	                       $<xsl:value-of select="monto"/>
	                   </fo:block>
	               </fo:table-cell>
	            </fo:table-row>
	            
	            </fo:table-body>
		</fo:table>
	</fo:block>
       <fo:block text-align="right">
	       <fo:external-graphic>
	           <xsl:attribute name="src">
		       <xsl:value-of select="rutafirma"/>sello_bci.gif
	           </xsl:attribute>
	       </fo:external-graphic>
       </fo:block>
</xsl:template>

</xsl:stylesheet>