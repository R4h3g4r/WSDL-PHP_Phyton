<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 1.0 04/08/2008 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="ComprobantePagoCredito">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="30mm" />
                  <fo:table-column column-width="115.9mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="DatosImpresionComprobantePago/logoTopBci" />
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

			    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                <fo:block font-family="Helvetica" font-size="17pt" font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Liquidación de Cancelación</fo:block>
  			    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  
              <fo:table border-collapse="collapse">
				<fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell >
                      <fo:block font-family="Helvetica" font-size="13pt" font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>Consumo Recursos Propios Nuevo Multiuso Pesos</fo:block>
                    </fo:table-cell>
                 
                    <fo:table-cell >
                      <fo:table border-collapse="collapse">
        				<fo:table-column border-top="0.5pt solid black" />
                			<fo:table-body>
                  				<fo:table-row>
                  					<fo:table-cell >
                      					<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="10mm">Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select="DatosImpresionComprobantePago/oficina" /></fo:inline></fo:block>
                    				</fo:table-cell>
            					</fo:table-row>
                   				<fo:table-row>
                    				<fo:table-cell >
                      					<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="10mm">Fecha:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select="DatosImpresionComprobantePago/fechaEmisionDocumento" /></fo:inline></fo:block>
                    				</fo:table-cell>
                  				</fo:table-row>
                  		    </fo:table-body>
                  		</fo:table>
                  		</fo:table-cell>
                  		</fo:table-row>
                </fo:table-body>
              </fo:table>
				
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="10pt"  text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/nombreDeudor" /></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                            	<fo:table border-collapse="collapse" text-align="left">
				                  	<fo:table-column />
                  					<fo:table-column />
                  					<fo:table-body>
                            			<fo:table-row>
                           	 				<fo:table-cell >
                                    			<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><fo:inline font-weight="bold">RUT :<fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline></fo:block>
                                    	    </fo:table-cell>
                                    	    <fo:table-cell >
                                    			<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/rutDeudor, "###.###.###", "rut")' />-<xsl:value-of select="DatosImpresionComprobantePago/dvDeudor" /></fo:block>
                                    	    </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:table-cell>
                      </fo:table-row>
                      </fo:table-body>
                      <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            	<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DireccionDeudorBci/direccion" />, <xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /> <xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                            	<fo:table border-collapse="collapse" text-align="left">
				                	<fo:table-column />
                  					<fo:table-column />
                  					<fo:table-body>
                            			<fo:table-row>
                           	 				<fo:table-cell >
                                    			 <fo:block font-family="Helvetica" font-size="10pt"   text-align="right" line-height="4.5mm" margin-left="1mm"><fo:inline font-weight="bold">Fono :</fo:inline></fo:block>
                                    	    </fo:table-cell>
                                    	    <fo:table-cell >
                                    			<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DireccionDeudorBci/fono" /> <xsl:value-of select="DireccionDeudorBci/anexo" /></fo:block>
                                    	    </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              </fo:table>
              
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  
              <fo:table border-collapse="collapse" text-align="left">
			  	<fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-body>
                	<fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Ejecutivo Comercial :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/nombreejecutivo" /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">OPE :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/operacion" /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Tasa Interés :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/tasa, "###.###.##0,0000","decimal")'/> <xsl:value-of select="DatosImpresionComprobantePago/glosaTasaInteres" /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">CAN :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="right" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/can" /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
              </fo:table>
                <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" text-align="left">
			  	<fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-body>
                	<fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Valores Expresados En :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/valoresExpresadosEn" /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Fecha Colocación :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/fechaColocacion" /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Capital :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/capital, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Fecha Vencimiento :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/fechaVencimiento" /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
              </fo:table>
                <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black"  />
                  <fo:table-column border-top="0.5pt solid black"  />
              </fo:table>
              
               <fo:table border-collapse="collapse" text-align="left">
			  	<fo:table-column />
			  	<fo:table-column />
			  	<fo:table-column />
			  	<fo:table-column />
                <fo:table-body>
                	<fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Reajustes :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/reajustes, "###.###.##0,0000","decimal")'/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Intereses :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/interesesDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Gastos Generales :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/gastosGenerales, "###.###.##0,0000","decimal")'/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Comisiones :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/comisiones, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Valor Vencimiento :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/valorVencimiento, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                </fo:table-body>
              </fo:table>
                <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" />
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
               <fo:table border-collapse="collapse">
				<fo:table-column border-top="0.5pt solid black" />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell >
                      <fo:block font-family="Helvetica" font-size="14pt" font-weight="bold" text-align="left" ><fo:inline font-weight="bold"><fo:leader leader-pattern="space" leader-length="1mm"/>Detalle Liquidación</fo:inline></fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse" text-align="left">
			  	<fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-body>
                	<fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Fecha Cancelación :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/fechaCancelacion" /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Ven :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/numeroVencimiento" /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <xsl:variable name="mora" select="DatosImpresionComprobantePago/montoMoraDetalle" />
                    <xsl:if test="$mora > 0">
                    	<fo:table-row>
                    		<fo:table-cell >
                        		<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Tasa Mora :</fo:inline></fo:block>
                        	</fo:table-cell>
                        	<fo:table-cell >
                        		<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/tasaMoraDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        	</fo:table-cell>
                    	</fo:table-row>
                    </xsl:if>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Capital :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/capitalDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Reajustes :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/reajustesDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm">Forma de Pago (Aviso de </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm">Cargo)</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Intereses :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/interesesDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select="DatosImpresionComprobantePago/glosaCargo" /></fo:block>
                        </fo:table-cell>
                         <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/canceladoDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                       <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Gastos Generales :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/gastosGeneralesDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Comisiones :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/comisionesDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    
                    <xsl:variable name="montoMora" select="DatosImpresionComprobantePago/montoMoraDetalle" />
                    <xsl:if test="$montoMora > 0">
                    	<fo:table-row>
                    		<fo:table-cell >
                        		<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Monto Mora :</fo:inline></fo:block>
                        	</fo:table-cell>
                        	<fo:table-cell >
                        		<fo:block font-family="Helvetica" font-size="10pt" text-align="left" line-height="4.5mm" margin-left="1mm"><xsl:value-of select='format-number(DatosImpresionComprobantePago/montoMoraDetalle, "###.###.##0,0000","decimal")' /></fo:block>
                        	</fo:table-cell>
                    	</fo:table-row>
                    </xsl:if>
                    
                    <fo:table-row>
                    	<fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">Cancelado :</fo:inline></fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                        	<fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(DatosImpresionComprobantePago/canceladoDetalle, "###.###.##0,0000","decimal")' /></fo:inline></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column border-top="0.5pt solid black" />
                <fo:table-column border-top="0.5pt solid black" />
              </fo:table>
              
              </fo:flow>
              </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
