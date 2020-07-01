<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator='.' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    

    <xsl:template match="comprobantelem">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">
				<fo:table border-collapse="collapse" background-color="#FFFEE8" table-layout="fixed" >
                  <fo:table-column column-width="175.9mm" />
                  <fo:table-column column-width="20mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-weight="bold" font-size="20pt" text-align="left" vertical-align="middle" >Cuenta Corriente</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="35cm"/></fo:block>
                                    <fo:block font-weight="bold" text-align="left" vertical-align="middle" >Línea de Emergencia</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="35cm"/></fo:block>
                                    <fo:block font-size="15pt" font-weight="bold" text-align="left" vertical-align="middle"  background-color="#FFFEE8" >
                                          Felicitaciones
                                    </fo:block>
                                    <fo:block text-align="justify">						  
						  				El producto ha sido contratado con éxito 
						  			</fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  text-align="right" width="2cm" height="2cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="urltimbre"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
					</fo:table-body>
                </fo:table>

                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

				<fo:table border-collapse="collapse" text-align="left" table-layout="fixed" >
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black"  border-right="0.5pt solid black"/>
					<fo:table-body>
						<fo:table-row>
                            <fo:table-cell >
                                    <fo:block  font-size="16pt" font-weight="bold" text-align="left" vertical-align="middle" ><fo:leader leader-pattern="space" leader-length="2mm"/>Detalle del Producto</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" >

                                    </fo:block>
                            </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>

				 <fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					<fo:table-body>
						<fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Línea pre-aprobado:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
									 $ <xsl:value-of select='format-number(margen, "###.###.###","decimal")' />
                                    </fo:inline></fo:block>
                            </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                
                <fo:table border-collapse="collapse" text-align="left" table-layout="fixed" >
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					<fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Nombre:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" >
                                    <fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline font-weight="bold"><xsl:value-of select="nombre" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
					</fo:table-body>
				</fo:table>

				<fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					<fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Rut: </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="rut" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
					</fo:table-body>
				</fo:table>

                 <fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					<fo:table-body>
						<fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Comisión de renovación semestral:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
									<xsl:value-of select="comisionsemestral" /> UF
                                    </fo:inline></fo:block>
                            </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                
				<fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					<fo:table-body>
						<fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ></fo:block>
                            </fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
                
                <fo:block><fo:leader leader-pattern="space" leader-length="35cm"/></fo:block>
	
                 
                 <fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
					<fo:table-body>

			<fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>
                                    
                                    <fo:block font-size="11pt" font-weight="bold" text-align="left" >
                                        Cuenta
                                    </fo:block>
                                    
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>
                                    <fo:block font-size="11pt" font-weight="bold" text-align="left" >
                                        Monto
                                    </fo:block>
                                    
                                    </fo:block>
                            </fo:table-cell>
			</fo:table-row>
                    </fo:table-body>
				</fo:table> 


                 <fo:table border-collapse="collapse" text-align="left" table-layout="fixed">
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" />
					<fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
					<fo:table-body>

                       <xsl:for-each select="contratado/ctaAbono">

			<fo:table-row>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><xsl:value-of select="cuenta" /> </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/><xsl:value-of select="monto" /></fo:block>
                            </fo:table-cell>
			</fo:table-row>

                        </xsl:for-each>  
					</fo:table-body>
				</fo:table> 
                 
                 
              
			  </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
