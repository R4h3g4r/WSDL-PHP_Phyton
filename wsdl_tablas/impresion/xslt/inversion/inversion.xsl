<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
	
     <xsl:param name="imgExt"/>
	<xsl:template match="inversion/ObjetoCreaPDFVO">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta_landscape" page-height="27.94cm" page-width="21.59cm" margin-top="0.10in" margin-bottom="0.30in" margin-left="0.50in" margin-right="0.50in">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="carta_landscape" font-family="Times, Times New Roman">
				<fo:flow flow-name="xsl-region-body">					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="400pt"/>							
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="14pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Inversi�n y Ahorro </fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>						
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Sugerencias de inversi�n </fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="9pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Cliente: <xsl:value-of select="cliente"/></fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="9pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fecha: <xsl:value-of select="fecha"/></fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">En base a sus respuestas y al monto de su inversi�n, se recomienda: </fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>																	
							</fo:table-body>
						</fo:table>
					</fo:block>					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="500pt"/>
							<fo:table-body>					
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center">
											<fo:external-graphic height="171" width="493" src="url( {$imgExt} )"/>
										</fo:block>										
									</fo:table-cell>								
								</fo:table-row>									
							</fo:table-body>
						</fo:table>
					</fo:block>					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid gray">
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="236pt"/>
							<fo:table-column column-width="20pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="84pt"/>							
							<fo:table-body>
								<fo:table-row>									
									<fo:table-cell padding="1pt" background-color="#E7EAF0">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Productos Sugeridos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt" number-columns-spanned="2" background-color="#E7EAF0">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Caracacter�sticas</fo:inline>
										</fo:block>
									</fo:table-cell>								
									<fo:table-cell padding="1pt" background-color="#E7EAF0">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Porcentajes de Inversi�n</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt" background-color="#E7EAF0">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Monto</fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>								
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fondo Mutuo Bci Dep�sito Efectivo </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* De Inversi�n en Instrumentos de Deuda de Corto Plazo con Duraci�n Menor o Igual a 90 d�as, con inversiones solamente en Chile.</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Riesgo bajo </fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Remuneraci�n de Administraci�n de la serie de cuotas alfa: Hasta 0,34% anual m�s IVA.</fo:inline>
										</fo:block>
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Pago de Rescate: Solicit�ndolos con un d�a h�bil bancario de antelaci�n.</fo:inline>
										</fo:block>	
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"><xsl:value-of select="porcentajeDepositoEfectivo"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline   start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="montoDepositoEfectivo"/></fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>	
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fondo Mutuo Bci Personas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* De Inversi�n en Instrumentos de Deuda con Duraci�n m�nima de 366 d�as y m�xima de 1.460 d�as, con inversiones en el extranjero y posibilidad de usar derivados.</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Riesgo medio </fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Remuneraci�n de Administraci�n de la serie de cuotas alfa: Hasta 1,51% anual m�s IVA.</fo:inline>
										</fo:block>
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Pago del rescate: Solicit�ndolos con un d�a h�bil bancario de antelaci�n.</fo:inline>
										</fo:block>	
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"><xsl:value-of select="porcentajePersonas"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline   start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="montoPersonas"/></fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>	
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fondo Mutuo Bci Gran Ahorro</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* De inversi�n en instrumentos de deuda de mediano y largo plazo con duraci�n m�nima de 366 d�as y m�xima de 2.190 d�as, con posibilidad de invertir en el extranjero y usar instrumentos derivados.
											</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Riesgo medio
											</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Remuneraci�n de Administraci�n: Hasta un 1,00% anual IVA incluido.</fo:inline>
										</fo:block>
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Pago del rescate: Solicit�ndolos con un d�a h�bil bancario de antelaci�n.</fo:inline>
										</fo:block>
										
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"><xsl:value-of select="porcentajeGranAhorro"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline   start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="montoGranAhorro"/> </fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>	
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fondo Mutuo Bci Selecci�n Burs�til</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Fondo Mutuo de Inversi�n en instrumentos de capitalizaci�n de emisores nacionales. Considera adem�s la utilizaci�n de instrumentos derivados.
											</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Riesgo alto </fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Remuneraci�n de administraci�n: Hasta 3,0% anual (IVA incluido)
											</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Pago del rescate: en un plazo no mayor a 10 d�as contados desde la fecha de presentaci�n de la solicitud de rescate.
												
											</fo:inline>
										</fo:block>	
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"><xsl:value-of select="porcentajeSeleccionBursatil"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline   start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="montoSeleccionBursatil"/> </fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>	
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Fondo Mutuo Bci Am�rica Latina</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Fondo Mutuo Mixto. Considera adem�s la inversi�n en el extranjero y la utilizaci�n de instrumentos derivados.
											</fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">	
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Riesgo alto </fo:inline>
										</fo:block>	
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Remuneraci�n: Hasta 4,17% anual (IVA incluido)											</fo:inline>
										</fo:block>
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif">* Pago del rescate: en un plazo no mayor a diez d�as de presentaci�n de la solicitud de rescate.
											</fo:inline>
										</fo:block>
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"><xsl:value-of select="porcentajeAmericaLatina"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline   start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="montoAmericaLatina"/> </fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>				
								<fo:table-row>									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt" font-family="Arial, Helvetica, sans-serif"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">										
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline    start-indent="4pt" font-family="Arial, Helvetica, sans-serif"></fo:inline>
										</fo:block>	
										
									</fo:table-cell>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="rigth"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold" start-indent="4pt" font-family="Arial, Helvetica, sans-serif">Total</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold" start-indent="4pt" font-family="Arial, Helvetica, sans-serif">$ <xsl:value-of select="total"/> </fo:inline>
										</fo:block>
									</fo:table-cell>								
								</fo:table-row>			
							</fo:table-body>
						</fo:table>
					</fo:block>	
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid gray">
							<fo:table-column column-width="540pt"/>												
							<fo:table-body>
								<fo:table-row>									
									<fo:table-cell padding="1pt" background-color="#C6ECD9">
										<fo:block font-size="8pt" text-align="justify"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt" font-family="Arial, Helvetica, sans-serif">"Esta recomendacion se realiza en base a la informaci�n proporcionada por usted, sin responsabilidad alguna para el Banco y/o sus filiales. El perfil definido puede cambiar en el futuro, seg�n varien sus intereses y caracterisiticas personales u otras circunstancias, siendo de su exclusiva responsabilidad, su oportuna actualizacion. El rendimiento de las inversiones sugeridas es meramente referencial y no se encuentra garantizado" </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>									
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>		
</xsl:stylesheet>
