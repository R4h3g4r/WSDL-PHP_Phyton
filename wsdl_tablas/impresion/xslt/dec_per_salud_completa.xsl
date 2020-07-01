<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2013/08/26 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="dec_per_salud_completa">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

				              <fo:table border-collapse="collapse">
				                  <fo:table-column column-width="50mm" />
				                  <fo:table-column column-width="125mm" />
				                  <fo:table-column column-width="20mm"/>
				                  <fo:table-body>
				                      <fo:table-row>
                                            <fo:table-cell >
                                                    <fo:block >
                                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                                        <xsl:attribute name="src">
                                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                                        </xsl:attribute>
                                                      </fo:external-graphic>
                                                    </fo:block>
                                            </fo:table-cell>
                                            				                      
				                            <fo:table-cell >
				                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >DECLARACI�N PERSONAL DE SALUD</fo:block>
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" line-height="4.5mm" >Folio N�: <xsl:value-of select="numOperacion" /></fo:block>
				                            </fo:table-cell>
				
				                            <fo:table-cell >
				                            </fo:table-cell>
				                      </fo:table-row>
				                </fo:table-body>
				                </fo:table>
				                
				                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
				                
					            <fo:table border-collapse="collapse" text-align="left">
					                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
					                  <fo:table-column column-width="110mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					                  <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
					                  
					                  <fo:table-body>
					                      <fo:table-row>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo</fo:block>
					                            </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline ><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
                                                </fo:table-cell>					                            
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
					                            </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="rutCompletoCliente" /></fo:inline></fo:block>
                                                </fo:table-cell>					                            
					                      </fo:table-row>
					                </fo:table-body>
					            </fo:table>
					              
					            <fo:table border-collapse="collapse" text-align="left">
					                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="22mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="26mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="42mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
					                  <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>                  
					                  <fo:table-body>
					                      <fo:table-row>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento<fo:leader leader-pattern="space" leader-length="1mm"/>
					                                    </fo:block>
					                            </fo:table-cell>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt">
						                                    <fo:inline><xsl:value-of select="substring(fechaNacCliente,0,4)" /></fo:inline>
						                                    <fo:inline><xsl:value-of select="substring(fechaNacCliente,4,2)" /></fo:inline>
						                                    <fo:inline><xsl:value-of select="substring(fechaNacCliente,6,5)" /></fo:inline>
					                                    </fo:block>
					                            </fo:table-cell>                            
					
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono</fo:block>
					                            </fo:table-cell>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="telefonoCliente" /></fo:inline></fo:block>
					                            </fo:table-cell>
					                            
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Capital Asegurado (UF)</fo:block>
					                            </fo:table-cell>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="montoCredito" /></fo:inline></fo:block>
					                            </fo:table-cell>                            
					                            
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Plazo</fo:block>
					                            </fo:table-cell>
					                            <fo:table-cell >
					                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="plazoCredito" /></fo:inline></fo:block>
					                            </fo:table-cell>                           
					                      </fo:table-row>
					                </fo:table-body>
					            </fo:table>				              
              
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="68mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-column column-width="42mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="50mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Peso (Kgs.)</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estatura (Cms.)</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">1.�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes situaciones de salud o enfermedades: diabetes, enfermedades al ri��n, enfermedades a los huesos o m�sculos como hernias a la columna, artrosis, discopat�as, lumbago, lumboci�tica, o cualquier otra enfermedad de los componentes del sistema osteomuscular, enfermedades cardiacas, bypass, hipertensi�n arterial, enfermedades cardiacas, infarto del miocardio, enfermedades coronarias, angina de pecho, enfermedades reum�ticas, soplo al coraz�n, arritmias, accidentes cerebrovasculares, aneurismas, varices, flebitis, �lceras varicosas o cualquier otra enfermedad al coraz�n, arterias, venas o sistema circulatorio, enfermedades al sistema respiratorio, c�ncer, hepatitis (excepto tipo A), enfermedades gastrointestinales, como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, enfermedades hematol�gicas como leucemia, linfoma o anemia, desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurol�gicas, como epilepsia, enfermedad de Alzheimer, alcoholismo o drogadicci�n, sobrepeso u obesidad con o sin cirug�a?</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                              
              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="90mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-column column-width="45mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="25mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Enfermedad</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha del Diagn�stico</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">M�dico Tratante</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                                                               
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                              
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">2. �Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta anterior?<fo:leader leader-pattern="space" leader-length="10mm"/>Si:<fo:leader leader-pattern="space" leader-length="10mm"/>No:</fo:block>
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Detalle de Enfermedad:________________________________________________________________</fo:block>
                                                        <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">M�dico Tratante y especialidad :_________________________________________________________</fo:block>
                                                        <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">�A la fecha de la presente declaraci�n se ha practicado ex�menes m�dicos recientes cuyos resultados est�n pendientes o usted no conozca?</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>              
              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Examen (es):________________________________________________________________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Fecha de realizaci�n:__________________________________________________________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                                
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">3.�Ha estado en bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                  
                                      
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                                                      
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Diagn�stico</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                                                               
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Tipo de tratamiento</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                                                               
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="90mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-column column-width="45mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="25mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">M�dico Tratante</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">4. �Ingiere o le ha sido prescrito la ingesta de alg�n tipo de medicamento en forma habitual?</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                  
                                      
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre del o los medicamentos:________________________________________________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>.�Ha estado en bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                      
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                      
                                              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                          </fo:flow>
                  </fo:page-sequence>
                  
                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                              <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="50mm" />
                                  <fo:table-column column-width="125mm" />
                                  <fo:table-column column-width="20mm"/>
                                  <fo:table-body>
                                      <fo:table-row>
                                            <fo:table-cell >
                                                    <fo:block >
                                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                                        <xsl:attribute name="src">
                                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                                        </xsl:attribute>
                                                      </fo:external-graphic>
                                                    </fo:block>
                                            </fo:table-cell>
                                                                                  
                                            <fo:table-cell >
                                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >DECLARACI�N PERSONAL DE SALUD</fo:block>
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" line-height="4.5mm" >Folio N�: <xsl:value-of select="numOperacion" /></fo:block>
                                            </fo:table-cell>
                
                                            <fo:table-cell >
                                            </fo:table-cell>
                                      </fo:table-row>
                                </fo:table-body>
                                </fo:table>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>5.- Usted ha sido dictaminado o se le ha otorgado alg�n grado de Invalidez por alguna Comisi�n M�dica (AFP/Compin/Mutuales/Capredena ) a causa de una enfermedad o accidente?</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si :_______ No:_________</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>En caso de respuesta afirmativa, detalle:</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Causa (as) de Invalidez y fecha de dictamen :______________________________________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Porcentaje de Invalidez otorgado:________________________________________________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>6.- Se encuentra tramitando una Invalidez por accidente o por enfermedad, en alguna de las Comisiones antes mencionada ?.</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si :_______ No:_________</fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>En caso afirmativo indicar causal y comisi�n en la que present� los antecedentes:__________________</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>           
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" text-align="justify" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compa��a aseguradora informaci�n determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendr� derecho para rescindir el contrato, de acuerdo a lo dispuesto en el art�culo 525 del C�digo de Comercio.</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo requiere, con ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente, autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de salud p�blica o privada, tribunales de justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica, p�blica o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente con datos, informaci�n o antecedentes relativos a mi estado de salud f�sica y ps�quica; tales como fichas cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio cl�nicos, para entregar dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo mi expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s autorizo a la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan en forma irrevocable y por toda la vigencia del seguro, incluyendo la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar absoluta reserva y confidencialidad respecto de la informaci�n recibida.</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                                
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-size="11pt" text-align="center" start-indent="0.2in"><fo:leader leader-pattern="space" leader-length="100mm"/>________________________</fo:block>
                                                <fo:block font-size="11pt" text-align="center" start-indent="0.3in"><fo:leader leader-pattern="space" leader-length="100mm"/>Firma y RUT Asegurable</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-size="11pt" text-align="left" font-weight="bold" start-indent="0.3in">FECHA:___/_____/___</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                          </fo:flow>
                  </fo:page-sequence>
                  
                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                              <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="50mm" />
                                  <fo:table-column column-width="125mm" />
                                  <fo:table-column column-width="20mm"/>
                                  <fo:table-body>
                                      <fo:table-row>
                                            <fo:table-cell >
                                                    <fo:block >
                                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                                        <xsl:attribute name="src">
                                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                                        </xsl:attribute>
                                                      </fo:external-graphic>
                                                    </fo:block>
                                            </fo:table-cell>
                                                                                  
                                            <fo:table-cell >
                                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >DECLARACI�N PERSONAL DE SALUD</fo:block>
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" line-height="4.5mm" >Folio N�: <xsl:value-of select="numOperacion" /></fo:block>
                                            </fo:table-cell>
                
                                            <fo:table-cell >
                                            </fo:table-cell>
                                      </fo:table-row>
                                </fo:table-body>
                                </fo:table>
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
				                <fo:table border-collapse="collapse" text-align="center">
				                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
				                  <fo:table-body>
				                      <fo:table-row>
				                            <fo:table-cell >
				                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N DE DEPORTES Y ACTIVIDADES</fo:block>
				                            </fo:table-cell>
				                      </fo:table-row>
				
				                </fo:table-body>
				                </fo:table>
                                               
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="110mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline ><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
                                                </fo:table-cell>                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="rutCompletoCliente" /></fo:inline></fo:block>
                                                </fo:table-cell>                                                
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                  
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="22mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="26mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="42mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                                      <fo:table-column column-width="15mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>                  
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento<fo:leader leader-pattern="space" leader-length="1mm"/>
                                                        </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt">
                                                            <fo:inline><xsl:value-of select="substring(fechaNacCliente,0,4)" /></fo:inline>
                                                            <fo:inline><xsl:value-of select="substring(fechaNacCliente,4,2)" /></fo:inline>
                                                            <fo:inline><xsl:value-of select="substring(fechaNacCliente,6,5)" /></fo:inline>
                                                        </fo:block>
                                                </fo:table-cell>                            
                    
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="telefonoCliente" /></fo:inline></fo:block>
                                                </fo:table-cell>
                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Capital Asegurado (UF)</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="montoCredito" /></fo:inline></fo:block>
                                                </fo:table-cell>                            
                                                
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Plazo</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="plazoCredito" /></fo:inline></fo:block>
                                                </fo:table-cell>                           
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">�Practica Ud. alguna de las actividades o deportes indicados a continuaci�n aunque lo haga en forma ocasional y/o espor�dica: inmersiones subacu�ticas, alas delta, parapente, paracaidismo, benji, monta�ismo, boxeo, carreras de auto, moto, embarcaciones acu�ticas, bicicleta, ski de nieve; esqu� en helic�ptero, manta ray, polo, kite surf, carreras de caballo, rodeo, bombero, piloto o pasajero de aviaci�n civil, pasajero en aviaci�n comercial en vuelos no regulares o de itinerario no establecido (Charter).</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                              
              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">INDIQUE</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">7. �Hace uso de motocicletas?</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                 
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">INDIQUE</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="45mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="45mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-column column-width="105mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">DECLARACI�N DE OCUPACI�N</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Profesi�n o Actividad</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                                 
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                 
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="70mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="125mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Cargo que ocupa</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 

                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="70mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="125mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Lugar donde desempe�a su actividad</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                                                 
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">�En raz�n de su profesi�n o actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o a gran altura, manejar sustancias: corrosivas, t�xicas, �cidos, pesticidas, petr�leos; entrar en contacto con sustancias radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos con elementos de mediana o alta tensi�n, manejar maquinaria o implementos de corte en general, portar armas, realizar labores de guardia y/o vigilancia, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o helic�pteros privados o en vuelos no regulares o de itinerario no establecido?.</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                              
              
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="10mm" border-left="0.5pt solid black"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
                                  <fo:table-column column-width="30mm"/>
                                  <fo:table-column column-width="10mm"/>
                                  <fo:table-column column-width="4mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>                                  
                                  <fo:table-column column-width="137mm" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">SI</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm" font-weight="bold">NO</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/></fo:block>
                                        </fo:table-cell>                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table> 
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si su respuesta es afirmativa especifique</fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                                      <fo:table-column column-width="160mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">INDIQUE</fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"></fo:block>
                                                </fo:table-cell>                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                
                                <fo:table border-collapse="collapse" text-align="left">
                                      <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                      <fo:table-body>
                                          <fo:table-row>
                                                <fo:table-cell >
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compa��a aseguradora informaci�n determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendr� derecho para rescindir el contrato, de acuerdo a lo dispuesto en el art�culo 525 del C�digo de Comercio.</fo:block>
                                                        <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo requiere, con ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente, autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de salud p�blica o privada, tribunales de justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica, p�blica o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente con datos, informaci�n o antecedentes relativos a mi estado de salud f�sica y ps�quica; tales como fichas cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio cl�nicos, para entregar dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo mi expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s autorizo a</fo:block>
                                                </fo:table-cell>                                                                                              
                                          </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                          </fo:flow>
                  </fo:page-sequence>
                  
                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                              <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="50mm" />
                                  <fo:table-column column-width="125mm" />
                                  <fo:table-column column-width="20mm"/>
                                  <fo:table-body>
                                      <fo:table-row>
                                            <fo:table-cell >
                                                    <fo:block >
                                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                                        <xsl:attribute name="src">
                                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                                        </xsl:attribute>
                                                      </fo:external-graphic>
                                                    </fo:block>
                                            </fo:table-cell>
                                                                                  
                                            <fo:table-cell >
                                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >DECLARACI�N PERSONAL DE SALUD</fo:block>
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="right" vertical-align="middle" line-height="4.5mm" >Folio N�: <xsl:value-of select="numOperacion" /></fo:block>
                                            </fo:table-cell>
                
                                            <fo:table-cell >
                                            </fo:table-cell>
                                      </fo:table-row>
                                </fo:table-body>
                                </fo:table>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan en forma irrevocable y por toda la vigencia del seguro, incluyendo la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar absoluta reserva y confidencialidad respecto de la informaci�n recibida.</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1mm" margin-right="1mm"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Declaro recibir conforme en este acto una copia del presente instrumento.</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>           

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-size="11pt" text-align="center" start-indent="0.2in"><fo:leader leader-pattern="space" leader-length="100mm"/>________________________</fo:block>
                                                <fo:block font-size="11pt" text-align="center" start-indent="0.3in"><fo:leader leader-pattern="space" leader-length="100mm"/>Firma y RUT Asegurable</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block font-size="11pt" text-align="left" font-weight="bold" start-indent="0.3in">FECHA:___/_____/___</fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                                                                                                                            
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="195mm" border-top="0.5pt solid black"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                        </fo:table-cell>
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                          </fo:flow>
                  </fo:page-sequence>                  
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
