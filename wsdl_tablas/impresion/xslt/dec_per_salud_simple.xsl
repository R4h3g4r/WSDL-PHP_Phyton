<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2013/08/26 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="dec_per_salud_simple">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="25mm" margin-right="20mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                  <fo:page-sequence master-reference="miCarta">
                          <fo:flow flow-name="xsl-region-body">

                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="40mm"/>
                                  <fo:table-column column-width="155mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block >
                                                  <fo:external-graphic  width="3cm" height="1cm"  vertical-align="middle">
                                                    <xsl:attribute name="src">
                                                    <xsl:value-of select="logoBciCorredoresSeguros"/>
                                                    </xsl:attribute>
                                                  </fo:external-graphic>
                                                </fo:block>
                                        </fo:table-cell>                                      
                                        <fo:table-cell >
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                              <fo:block font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" >DECLARACIÓN PERSONAL DE SALUD Y ACTIVIDADES</fo:block>
                                        </fo:table-cell>
                                        
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes enfermedades?</fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>1. Diabetes Mellitus tipo 1 o 2</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,4,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>2. Cáncer en todos sus estados (incluye leucemia, linfomas y melanoma maligno)</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,9,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                   
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>3. Enfermedades cardiacas, lesiones a las arterias y tratadas con by-pass coronario, enfermedades a las coronarias, soplos cardiacos, arritmias</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,14,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>4. Insuficiencia renal aguda y/o crónica</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,19,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>5. Trasplantado de corazón, pulmón, riñón, hígado, páncreas y médula ósea.</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,24,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>6. Usted ha sido dictaminado o se le ha otorgado o se encuentra tramitando su Invalidez por alguna Comisión Médica (AFP/Compin/Mutuales/Capredena) a causa de una enfermedad o accidente?</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,29,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Una respuesta afirmativa no permitirá la contratación del seguro solicitado (no se puede emitir cotización, ni propuesta ni póliza)</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>7. Hipertensión arterial esencial primaria y/o secundaria</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
			                                <fo:block>
			                                <xsl:variable name="preguntaCen" select="substring(glosa1,34,1)" />
			                                 <xsl:choose>
			                                   <xsl:when test="$preguntaCen = 'S'">
			                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
			                                    </xsl:when>
			                                    
			                                   <xsl:when test="$preguntaCen = 'N'">
			                                        <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
			                                    </xsl:when>                                    
			                                </xsl:choose>
			                                </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
								<fo:block>
								<xsl:variable name="preguntaCen" select="substring(glosa1,34,1)" />
								 <xsl:choose>
								   <xsl:when test="$preguntaCen = 'S'">
	                                <fo:table border-collapse="collapse" text-align="left">
	                                      <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                                      <fo:table-body>
	                                          <fo:table-row>
	                                                <fo:table-cell >
	                                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los tratamientos, consecuencias y/o complicaciones cardio/cerebro y/o renovasculares asociadas directa a indirectamente a enfermedad hipertensión arterial.</fo:block>
	                                                </fo:table-cell>                                                                                              
	                                          </fo:table-row>
	                                    </fo:table-body>
	                                </fo:table> 
								    </xsl:when>
								</xsl:choose>
								</fo:block>
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>8. Obesidad (Índice de masa corporal superior a 30%) con o sin cirugía (cualquier técnica)</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,39,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,39,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados, directa o indirectamente, por enfermedades, incapacidades, desordenes, lesiones, operaciones y/o tratamientos relacionados a obesidad</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>9. Enfermedades neurológicas : accidente vascular cerebral, epilepsia, aneurismas y/o tumor cerebral, esclerosis múltiple</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,44,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                   
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,44,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados, directa o indirectamente, por enfermedades, incapacidades, desórdenes, lesiones, operaciones y/o tratamientos relacionados con estas enfermedades neurológicas</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>10. Enfermedades musculo-esqueléticas: Hernias a la columna, artrosis, artritis, discopatías, lesiones a los ligamentos de cualquier tipo, meniscos con o sin cirugía</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,49,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,49,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados, directa o indirectamente, por enfermedades, incapacidades, desórdenes, lesiones, operaciones y/o tratamientos relacionados con estas enfermedades músculoesqueléticas</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>11. Depresión de cualquier tipo u otra enfermedad siquiátrica</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,54,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,54,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los tratamientos, consecuencias y/o complicaciones asociadas directa a indirectamente a enfermedad siquiátrica</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>12. Enfermedades respiratorias : Enfermedad pulmonar obstructiva crónicas (EPOC), fibrosis quística, bronquitis obstructiva crónica</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,59,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,59,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados, directa o indirectamente, por enfermedades, incapacidades, desórdenes, lesiones, operaciones y/o tratamientos relacionados a las enfermedades respiratorias declaradas.</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>13. Enfermedades gástricas: cirrosis hepática, hepatitis (B o C), úlcera gástrica o duodenal, pancreatitis, colitis ulcerosa</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa1,64,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa1,64,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados, directa o indirectamente, por enfermedades, incapacidades, desórdenes, lesiones, operaciones y/o tratamientos relacionados a las enfermedades gástricas declaradas</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block> 
                                                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>14. Hace uso de motocicleta o moto de cilindrada mayor a 250cc</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa2,4,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa2,4,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados directa e indirectamente como consecuencia del uso de moto declarada.</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block>                                 
                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>
                                  <fo:table-column column-width="5mm"/>
                                  <fo:table-column column-width="35mm"/>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>15. Practica en forma habitual o esporádica: Ski de nieve o agua; buceo; paracaidismo, piloto civil vuelos no regulares, pasajero de vuelos no regulares, labores en mina subterránea y a tajo abierto, labores que requieren uso o porte de armas, benji, parapente.</fo:block>
                                        </fo:table-cell>                                       
                                        <fo:table-cell >
                                                <fo:block vertical-align="middle"></fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block>
                                            <xsl:variable name="preguntaCen" select="substring(glosa2,9,1)" />
                                             <xsl:choose>
                                               <xsl:when test="$preguntaCen = 'S'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si: X <fo:leader leader-pattern="space" leader-length="2mm"/>No:___</fo:block>
                                                </xsl:when>
                                                
                                               <xsl:when test="$preguntaCen = 'N'">
                                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si:___<fo:leader leader-pattern="space" leader-length="2mm"/>No: X </fo:block>
                                                </xsl:when>                                    
                                            </xsl:choose>
                                            </fo:block>
                                        </fo:table-cell>                                    
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:table border-collapse="collapse">
                                  <fo:table-column column-width="140mm"/>>
                                    <fo:table-body>
                                      <fo:table-row>
                                        <fo:table-cell >
                                                <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Si la respuesta es afirmativa, puede continuar con el despliegue: Anexo de exclusión</fo:block>
                                        </fo:table-cell>                                                                           
                                      </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                <fo:block>
                                <xsl:variable name="preguntaCen" select="substring(glosa2,9,1)" />
                                 <xsl:choose>
                                   <xsl:when test="$preguntaCen = 'S'">
                                    <fo:table border-collapse="collapse" text-align="left">
                                          <fo:table-column column-width="140mm" border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                                          <fo:table-body>
                                              <fo:table-row>
                                                    <fo:table-cell >
                                                            <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Quedan excluidos y no serán cubiertos los siniestros causados directa e indirectamente como consecuencia de la practica o actividad riesgosa declarada</fo:block>
                                                    </fo:table-cell>                                                                                              
                                              </fo:table-row>
                                        </fo:table-body>
                                    </fo:table> 
                                    </xsl:when>
                                </xsl:choose>
                                </fo:block> 
                                                                
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                
                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compañía aseguradora información determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendrá derecho para rescindir el contrato, de acuerdo a lo dispuesto en el artículo 525 del Código de Comercio.</fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro estar dispuesto a someterme voluntariamente a exámenes y pruebas médicas, si la Compañía así lo requiere, con ocasión de la evaluación y/o suscripción del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente, autorizo expresamente a cualquier médico, profesional de la salud, institución de salud pública o privada, tribunales de justicia, jueces árbitros y a cualquier otra persona natural o jurídica, pública o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente con datos, información o antecedentes relativos a mi estado de salud física y psíquica; tales como fichas clínicas, antecedentes clínicos, informes médicos y análisis o exámenes de laboratorio clínicos, para entregar dichos datos, información o antecedentes a la Compañía, cuando esta lo solicite, para lo cual otorgo mi expreso consentimiento conforme lo dispone la Ley Nº19.628 y el artículo 127 del Código Sanitario. Además autorizo a la Compañía a realizar el tratamiento de la información antes señalada, todo ello conforme lo dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan en forma irrevocable y por toda la vigencia del seguro, incluyendo la etapa de evaluación y durante el procedimiento de liquidación de cualquier siniestro, autorizaciones que no se extinguirán en caso de muerte, conforme lo establece el artículo 2169 del Código Civil. Por otra parte la Compañía se obliga a guardar absoluta reserva y confidencialidad respecto de la información recibida.</fo:block>
                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">En mi calidad de asegurable acepto las exclusiones de cobertura originadas con motivo de la presente Declaración Personal Salud, las que formarán parte integrante de la póliza.</fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir conforme en este acto una copia del presente instrumento.</fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                                                             
                                <fo:block font-family="Helvetica" font-weight="bold" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Fecha:<fo:inline ><xsl:value-of select="dia" />/<xsl:value-of select="mes" />/<xsl:value-of select="anio" /></fo:inline></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-weight="bold" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Nombre del asegurable:<fo:inline ><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
                                <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                <fo:block font-family="Helvetica" font-weight="bold" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="0.5mm"/>Firma del asegurable:__________________________</fo:block>
                                
                          </fo:flow>
                  </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
