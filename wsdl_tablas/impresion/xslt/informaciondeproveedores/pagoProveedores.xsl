<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:java="http://xml.apache.org/xslt/java"
    exclude-result-prefixes="java">
    <!--Variables-->
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
    <xsl:variable name="lineas">#CCCCCC</xsl:variable>
    <xsl:variable name="celda-background">#f8f8f8</xsl:variable>
    <xsl:variable name="txt">#000000</xsl:variable>
    <xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
    <xsl:variable name="txt-azul-claro">#000000</xsl:variable>
    <xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="cabecera-informe">#eeeeee</xsl:variable>
	<xsl:variable name="cabecera">#f3f3f3</xsl:variable>
	<xsl:variable name="azul">#2c47a2</xsl:variable>
	<xsl:variable name="blanco">#FFFFFF</xsl:variable>
	<xsl:variable name="espacio"> </xsl:variable>
    <xsl:variable name="salto-linea"><br/></xsl:variable>
    <xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
   
    <!-- Variables -->
    <xsl:template match="/" name="inicio">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="pagina" 
                    page-height="35.56cm" 
                    page-width="21.59cm" 
                    margin-top="5mm" 
                    margin-bottom="1cm" 
                    margin-left="2cm" 
                    margin-right="2cm">
                    <fo:region-body margin-top="0.5cm" margin-bottom="0.5cm" background-color="#ffffff"/>
                    <fo:region-before extent="0.5cm"/>
                    <fo:region-after extent="2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Propiedades pagina -->
            <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en"
                country="us">

                 

                <fo:static-content flow-name="xsl-region-before">
                       <fo:block>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="19cm"/>
                            <fo:table-body>
                                        <fo:table-row>
                                          <fo:table-cell>
											<fo:block font-size="6pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt-azul-claro}">
						  					<xsl:value-of select="pagoProveedores/cabecera/fecha-actual"/> 
											&#0160;&#0160;
											Página  &#0160; <fo:page-number></fo:page-number> 
											de  &#0160;<fo:page-number-citation ref-id="terminator"/>
					    					</fo:block>
										   </fo:table-cell>
										 </fo:table-row>
										
						          </fo:table-body>
							   </fo:table>
							</fo:block>  
                </fo:static-content>
               
			  
			    
				
                
				<fo:static-content flow-name="xsl-region-after">
                    <!-- Separador -->
                    <fo:block space-after="1mm">
                        <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
                    </fo:block>
                    <!-- Separador -->	
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body">
                    <fo:block>
                        <fo:table table-layout="fixed">
                            <fo:table-column column-width="18.59cm"/>
                            <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="cabecera-informe"/>
                                            </fo:table-cell>
                                        </fo:table-row>   
                                        <xsl:choose>

                                         <xsl:when test="count(pagoProveedores/detalles) > 0">
										 <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block /> <xsl:call-template name="items-cabecera"/>
                                            </fo:table-cell>
                                        </fo:table-row> 

                                         <fo:table-row>
                                                    <fo:table-cell>
                                                        <fo:block /> <xsl:call-template name="items-informe"/>
                                                    </fo:table-cell>
                                                </fo:table-row>
                                            </xsl:when>
                                        </xsl:choose>
                            </fo:table-body>
                        </fo:table>		            
                    </fo:block>		        
                </fo:flow> 
            </fo:page-sequence>
			
			<fo:page-sequence master-reference="pagina">
				<fo:flow>
             		<fo:block id="terminator"/>
             	</fo:flow>
			</fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template name="cabecera-informe">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="9cm"/>
                <fo:table-column column-width="5cm"/>               
                <fo:table-body>
                    
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block font-size="14pt" text-align="center" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                PAGO DE PROVEEDORES
                            </fo:block>              
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Rut: <xsl:value-of select="pagoProveedores/cabecera/rut"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                <xsl:value-of select="pagoProveedores/cabecera/cliente"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                Fecha Pago:<xsl:value-of select="pagoProveedores/cabecera/fecha-pago"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>   
                        <fo:table-row>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                               Nómina:<xsl:value-of select="pagoProveedores/cabecera/nomina"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="center" font-family="{$txt-font}" color="{$txt-azul-claro}">
                               
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block font-weight="bold" font-size="9pt" text-align="right" font-family="{$txt-font}" color="{$txt-azul-claro}">
                               Estado: <xsl:value-of select="pagoProveedores/cabecera/estado"/>
                            </fo:block>
                        </fo:table-cell>
                        
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                                        
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>
    
   
   
    <xsl:template name="cabecera-vacia">
        <fo:block>
            <fo:table table-layout="fixed">
                <fo:table-column column-width="16cm"/>
                <fo:table-column column-width="1.7cm"/>
                <fo:table-column column-width="1.7cm"/>                
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="3">
                            <fo:block>
                                <fo:external-graphic width="100px" height="42px">
                                    <xsl:attribute name="src">
                                        No Se Encuentran datos.
                                    </xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>  
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="17.59cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="17.59cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>            
        </fo:block>
    </xsl:template>
    

 <xsl:template name="items-cabecera">
       
            <fo:block space-before="1cm">
                <fo:table table-layout="fixed"  border="0.4pt solid #000000">
                    <fo:table-column column-width="1cm" />
                    <fo:table-column column-width="1.8cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="5.3cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
                    <fo:table-body>
					
                    <fo:table-row  space-before="0.5cm" background-color="{$cabecera-informe}" >
                            <fo:table-cell number-columns-spanned="1"  > 
                                <fo:block font-size="11pt" text-align="left" font-weight="bold" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  No
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-weight="bold" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                    Rut
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Nombre
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Forma de Pago
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                    Banco
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                    &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   Monto
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   Total
                                </fo:block>
                            </fo:table-cell>
					</fo:table-row>
					<fo:table-row space-before="0.2cm" background-color="{$cabecera-informe}">
                              <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}"  >
                                 &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   Dirección
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Sucursal
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   No.Cuenta
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Comuna
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Ciudad
                                </fo:block>
                            </fo:table-cell>
                    </fo:table-row>
					<fo:table-row space-before="0.2cm" background-color="{$cabecera-informe}">
                              <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}"  >
                                &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                 &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                   Documento
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                  Valor Documento
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                 &#0160;
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                                &#0160;
                                </fo:block>
							</fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" background-color="{$cabecera-informe}">
                               &#0160;
                                </fo:block>
                            </fo:table-cell>
                     </fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
    </xsl:template>


    <xsl:template name="items-informe">
        <xsl:for-each select="pagoProveedores/detalles/detalle">
            <fo:block space-before="0.3cm">
                <fo:table table-layout="fixed">
                    <fo:table-column column-width="1cm"/>
                    <fo:table-column column-width="1.8cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="5.3cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
                    <fo:table-body>
                   
                        <fo:table-row >
                            <fo:table-cell number-columns-spanned="1" > 
                                <fo:block font-size="10pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="id-documento"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="right" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="rut-proveedor"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160;<xsl:value-of select="nombre-proveedor"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="forma-pago"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="banco"/> 
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                   &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    &#0160; 	&#36;<xsl:value-of select="total"/> 
                                </fo:block>
                            </fo:table-cell>
						</fo:table-row>
						<fo:table-row >
                              <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}"  >
                                    &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="direccion-proveedor"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="sucursal"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="nro-cuenta"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="comuna"/> 
                                </fo:block>
                            </fo:table-cell>
							 <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="ciudad"/> 
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
 						
						<xsl:for-each select="documentos/documento">
						<fo:table-row>
                              <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}"  >
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="nro-documento"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                   &#0160; 	&#36;<xsl:value-of select="valor-documento"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                &#0160;
                                </fo:block>
                            </fo:table-cell> 
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
							 <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
						</xsl:for-each>						

						<fo:table-row>
                        <fo:table-cell number-columns-spanned="7">
                            <fo:block >
                                <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                     </fo:table-body>
                </fo:table>
				
            </fo:block>
           
        </xsl:for-each>
    </xsl:template>
    
<xsl:template name="items-documento">
      <xsl:for-each select="pagoProveedores/detalles/detalle/documentos/documento">
	     <fo:block>
		  <fo:table table-layout="fixed">
                    <fo:table-column column-width="1cm"/>
                    <fo:table-column column-width="1.8cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="5.3cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
					<fo:table-column column-width="2cm"/>
                    <fo:table-body>
						<fo:table-row>
                              <fo:table-cell number-rows-spanned="1"> 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}"  >
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                             <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                    <xsl:value-of select="nro-documento"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1"  > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                   &#0160;&#0036;<xsl:value-of select="valor-documento"/> 
                                </fo:block>
                            </fo:table-cell>
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                &#0160;
                                </fo:block>
                            </fo:table-cell> 
                               <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
							 <fo:table-cell number-rows-spanned="1" > 
                                <fo:block font-size="9pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
                                  &#0160;
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                     </fo:table-body>
                </fo:table>
            </fo:block>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>
