<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set><!-- A4-portrait -->
                <fo:simple-page-master master-name="Letter" page-height="29.7cm" 
                    page-width="21.0cm" margin="2cm">
                 <fo:region-body/>
                </fo:simple-page-master>
                </fo:layout-master-set>
                <fo:page-sequence master-reference="Letter">
                    <fo:flow flow-name="xsl-region-body">
                        <fo:block text-align="right">
                            <xsl:value-of select="root/fecha"></xsl:value-of>
                        </fo:block>
                        <fo:block>
                        	Señor (es) 
                        </fo:block>
                        <fo:block>
                        	<xsl:value-of select="root/nombreEmpresa"/>
                        </fo:block>
                        <fo:block>
                        	<xsl:value-of select="root/direccion"/>
                        </fo:block>
                        <fo:block>
                        	<xsl:value-of select="root/rut"/>
                        </fo:block>
						<fo:block space-before="15mm" space-after="15mm">
	                        <fo:table>
	                        <fo:table-column column-width="8cm"></fo:table-column>
	                        <fo:table-column column-width="8cm"></fo:table-column>
	                       		<fo:table-body>
								     <fo:table-row >
								      	<fo:table-cell >
	                        				<fo:block text-align="right">Número Operación</fo:block>
	                        			</fo:table-cell>
	                        			<fo:table-cell text-align="center">
	                        				<fo:block><xsl:value-of select="root/numeroOperacion"/></fo:block>
	                        			</fo:table-cell>
	                        		  </fo:table-row>
	                        		  <fo:table-row>
	                        			<fo:table-cell text-align="right">
	                        				<fo:block>Fecha de Operación</fo:block>
	                        			</fo:table-cell>
	                        			<fo:table-cell text-align="center">
	                        				<fo:block><xsl:value-of select="root/fechaOperacion"/></fo:block>
	                        			</fo:table-cell>
	                        		</fo:table-row>
	                        		 <fo:table-row>
	                        			<fo:table-cell text-align="right">
	                        				<fo:block>Tasa de cambio</fo:block>
	                        			</fo:table-cell>
	                        			<fo:table-cell text-align="center">
	                        				<fo:block><xsl:value-of select="root/tasaCambio"/></fo:block>
	                        			</fo:table-cell>
	                        		</fo:table-row>
	                        	</fo:table-body>
	                        </fo:table>
						</fo:block>
                        <fo:block>
                        	Estimado Señor (es)
                        </fo:block>
                        <fo:block>
                        	Comunicamos a usted(es) el detalle de la operación de la referencia
                        </fo:block>
                        
                        <fo:block font-size="10pt" font-weight="bold" space-after="5mm" space-before="15mm">                        
                        	ORIGEN DE LOS FONDOS
                        </fo:block>
						<fo:block space-after="1cm">
							<fo:table>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								
								<fo:table-body>
										
									 <fo:table-row >
										<fo:table-cell >
											<fo:block font-size="10">
												<xsl:value-of select="root/tipoCuentaOrigen"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="10" text-align="left">
												<xsl:value-of select="root/numeroCuentaOrigen"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="10" text-align="right">
												<xsl:value-of select="root/monedaOrigen"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block font-size="10" text-align="right">
												<xsl:value-of select="format-number(root/montoOrigen,'###,###.00')"/>
											</fo:block>
										</fo:table-cell>
									 </fo:table-row >
								 </fo:table-body>
							 </fo:table>
					     </fo:block>
                        <fo:block font-size="10pt" font-weight="bold" space-after="5mm">
                        	DESTINO DE LOS FONDOS
                        </fo:block>
                        <fo:block space-after="1cm">
							<fo:table>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-body>
									 <fo:table-row >
										<fo:table-cell >
											<fo:block font-size="10">
												<xsl:value-of select="root/tipoCuentaDestino"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="10" text-align="left">
												<xsl:value-of select="root/numeroCuentaDestino"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell >
											<fo:block  font-size="10" text-align="right">
												<xsl:value-of select="root/monedaDestino"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block  font-size="10" text-align="right">
												<xsl:value-of select="format-number(root/montoDestino,'###,###.00')"/>
											</fo:block>
										</fo:table-cell>
									 </fo:table-row >
								 </fo:table-body>
							 </fo:table>
					     </fo:block>
					     <xsl:if test="count(root/firmas/*) > 0" >
					     	<fo:block font-weight="bold" font-size="10pt" line-height="5">
					     		Lista de apoderados que firmaron
					     	</fo:block>
					     	
					     	 <fo:table width="14cm">
								 <fo:table-column column-width="4cm"></fo:table-column>
								<fo:table-column column-width="6cm"></fo:table-column>
								<fo:table-column column-width="4cm"></fo:table-column>
					     	 <fo:table-header>
					     	 	<fo:table-row>
					     	 		<fo:table-cell>
					     	 			<fo:block space-after="5mm">Rut Apoderado</fo:block>
					     	 		</fo:table-cell>
					     	 		<fo:table-cell>
					     	 			<fo:block space-after="5mm">Nombre Apoderado</fo:block>
					     	 		</fo:table-cell>
					     	 		<fo:table-cell>
					     	 			<fo:block space-after="5mm">Fecha Firma</fo:block>
					     	 		</fo:table-cell>
					     	 	</fo:table-row>
					     	 </fo:table-header>
                       		<fo:table-body>
                       		<xsl:for-each select="root/firmas/apoderado">
								
							     <fo:table-row >
							      	<fo:table-cell>
							            <fo:block font-size="10">
							            	<xsl:value-of select="rutApoderado"/>
							            </fo:block>
							        </fo:table-cell>
							        <fo:table-cell >
							            <fo:block  font-size="10">
							            	<xsl:value-of select="nombreCompleto"/>
							            </fo:block>
							        </fo:table-cell>
							        <fo:table-cell>
							        	<fo:block  font-size="10">
							        		<xsl:value-of select="fecha"/>
							        	</fo:block>
							        </fo:table-cell>
							     </fo:table-row >
							    </xsl:for-each>
						     </fo:table-body>
					     </fo:table>
					     </xsl:if>
                    	<fo:block line-height="5">
                    		Atentamente, Banco de Crédito e Inversiones
                    	</fo:block>
                    </fo:flow>
                    
                    
                    
                </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>