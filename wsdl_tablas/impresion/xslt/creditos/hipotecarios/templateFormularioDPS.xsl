<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
    <!--xsl:output method="fo:root" omit-xml-declaration="yes" doctype-public="-//W3C//DTD Xfo:root 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xfo:root1/DTD/xfo:root1-transitional.dtd" indent="yes" /-->
    <xsl:decimal-format name="numeracionCL" decimal-separator="," grouping-separator="."/>
    <xsl:template match="formularioDPSTO">
        <fo:root>
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first" page-height="29.7cm" page-width="19cm" border="thick solid red">
                    <fo:region-body margin-top="1cm" margin-left="1cm" margin-right="1cm" />
                    <fo:region-before extent="10cm" />
                    <fo:region-after extent="1cm" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                  </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="basicPSM">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block text-align="center" color="#000000" font-size="15pt" font-weight="100">DECLARACIÓN PERSONAL DE SALUD</fo:block>
                    
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="3" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DATOS ASEGURADO</fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DPS N° <xsl:value-of select="numeroDPS"/></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Nombre:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="nombreAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Nacionalidad:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="nacionalidad" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">RUT:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="rutAsegurado" />-<xsl:value-of select="digitoVerificadorAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Región:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="regionAsegurado" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Comuna:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="comunaAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Ciudad:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="ciudadAsegurado" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Domicilio:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="direccionAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Estado Civil:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="estadoCivilAsegurado" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Sexo:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="sexoAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Teléfono celular:</fo:block>
                                </fo:table-cell>
								<xsl:if test="substring(fonoAsegurado,1,1)='9'">
									<fo:table-cell>
										<fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="fonoAsegurado" /></fo:block>
									</fo:table-cell>
								</xsl:if>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Fecha Nacimiento:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">
                                        <xsl:variable name="datestring">
                                            <xsl:value-of select="substring-before(fechaNacimientoAsegurado,'T')" />
                                        </xsl:variable>
                                         <xsl:variable name="mes">
                                             <xsl:value-of select="substring($datestring,6,2)" />
                                         </xsl:variable>
                                         <xsl:variable name="dia">
                                            <xsl:value-of select="substring($datestring,9,2)" />
                                         </xsl:variable>
                                         <xsl:variable name="ano">
                                            <xsl:value-of select="substring($datestring,1,4)" />
                                         </xsl:variable>
                                         <xsl:value-of select="concat($dia,'/', $mes, '/', $ano)" />
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Teléfono fijo:</fo:block>
                                </fo:table-cell>
								<xsl:if test="substring(fonoAsegurado,1,1)!='9'">
									<fo:table-cell>
										<fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="fonoAsegurado" /></fo:block>
									</fo:table-cell>
								</xsl:if>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Correo Electrónico:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="emailAsegurado" /></fo:block>
                                </fo:table-cell>                                
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Tipo Deudor:</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Deudor</fo:block>
                                </fo:table-cell>
                                <!--fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Codeudor</fo:block>
                                </fo:table-cell-->
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Capital Asegurado (UF):</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="montoCredito" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Plazo (en años):</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="plazoCredito" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DATOS ENTIDAD CONTRATANTE</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Entidad Contratante : </fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="2">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="nombreContratante" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">RUT : <xsl:value-of select="rutContratante" />-<xsl:value-of select="digitoVerificadorContratante" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DATOS DEL EJECUTIVO</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2" background-color="#D8D8D8">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Nombre Completo</fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#D8D8D8">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Sucursal / Oficina</fo:block>
                                </fo:table-cell>
                                <fo:table-cell background-color="#D8D8D8">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Correo Electrónico</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="nombreEjecutivo" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="sucursal" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="emailEjecutivo" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>                    
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DATOS DEL CREDITO</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Tipo de crédito: Hipotecario</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Plazo: <xsl:value-of select="plazoCredito" /></fo:block>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">(en Años)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Monto de Crédito: <xsl:value-of select="montoCredito" /></fo:block>
                                    <fo:block text-align="center" color="#000000" font-size="10pt" font-weight="100">(en UF)</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Subsidio MINVU</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <!--xsl:for-each select="preguntasDPS[codigoCategoria = '1']">
                                <xsl:call-template name="subsidio"/>
                            </xsl:for-each-->
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">No</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE">
                                    <fo:block text-align="left" color="#000000" font-size="12pt" font-weight="100">CUESTIONARIO DECLARACION PERSONAL DE SALUD</fo:block>                                    
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Peso (Kgs.)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="pesoAsegurado" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Estatura (Cms.)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="tallaAsegurado" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="bold">Declaro estar en conocimiento acerca de que, en conformidad con la normativa legal vigente y con lo establecido en las condiciones generales de la póliza que rigen la cobertura (POL 2 2013 0678), es mi deber declarar sinceramente todas aquellas circunstancias relativas a mi estado pasado y actual de salud que puedan afectar el riesgo que asumiré la compañía y que pueden constituir una restricción, limitación o exclusión de cobertura.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100" padding-top="10pt">PREGUNTAS ACERCA DE ENFERMEDADES, DOLENCIAS Y/O SITUACIONES DE SALUD PREEXISTENTES</fo:block>                                    
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                   <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="bold" padding-bottom="5pt">Tenga presente que son enfermedades y dolencias preexistentes aquellas enfermedades, dolencias o situaciones de salud diagnosticadas o conocidas por usted con anterioridad a la fecha de firma de esta declaración de salud. Toda vez que las enfermedades preexistentes, dolencias preexistentes y/o situaciones de salud preexistentes no están cubiertas por el seguro, le preguntamos a usted lo siguiente: ¿Usted tiene, tuvo o ha tenido en el pasado, o se encuentra en tratamiento, o en proceso de diagnóstico, de alguna de las siguientes enfermedades, dolencias o situaciones de salud?</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <xsl:for-each select="preguntasDPS[codigoCategoria = '3']">
                                <xsl:call-template name="filaPregunta"/>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    <xsl:variable name="datestring2">
                        <xsl:value-of select="substring-before(fechaIngreso,'T')" />
                    </xsl:variable>
                    <xsl:variable name="mes2">
                        <xsl:call-template name="getMonth">
                            <xsl:with-param name="monthNbr" select="number(substring($datestring2,6,2))"/>
                        </xsl:call-template>
                    </xsl:variable>
                    <xsl:variable name="dia2">
                        <xsl:value-of select="substring($datestring2,9,2)" />
                    </xsl:variable>
                    <xsl:variable name="ano2">
                        <xsl:value-of select="substring($datestring2,1,4)" />
                    </xsl:variable>
                    <xsl:variable name="hora2">
                        <xsl:value-of select="substring(fechaIngreso,12,8)" />
                    </xsl:variable>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="3pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">ACEPTACIÓN:</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="bold">Otorgo mi consentimiento a que si la causa de un siniestro que me afecte fuese producto, derive o estuviese relacionada con alguna(s) de las enfermedades, dolencias o situaciones de salud antes indicadas, se consideren ellas como enfermedades, dolencias o situaciones de salud diagnosticadas o conocidas por mi antes de la contratación de este seguro, con la correspondiente exclusión de cobertura y liberación de la obligación de la compañía de pagar el siniestro. Estoy en conocimiento que el texto de la póliza contratada en forma colectiva contiene otras exclusiones de coberturas, adicionales a las que da cuenta este formulario y respecto de las cuales se me ha señalado que debo informarme adecuadamente.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100" padding-top="48pt">FECHA: <xsl:value-of select="$dia2"/>/<xsl:value-of select="$mes2" />/<xsl:value-of select="$ano2"/></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" padding-top="3pt">
                                        <fo:external-graphic height="15mm" width="50mm">
                                            <xsl:attribute name="src">
                                                tablas/impresion/imagenes/hipotecario/certificado_digital.jpg
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                    <fo:block text-align="right" color="#000000" font-size="10pt" font-weight="100">Firma Proponente Asegurado</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black" padding-top="5pt" padding-left="5pt" padding-right="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">AUTORIZACIÓN:</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="bold">Conforme a lo señalado en el artículo 61 del DFL N° 251 DE 1931, sobre actividad aseguradora autorizo a la compañía de seguros para requerir antecedentes adicionales sobre mi estado de salud y autorizo a instituciones hospitalarias, laboratorios, médicos y demás personas que me hayan asistido o examinado, a proporcionar -a solicitud de la compañía-, todos los datos o antecedentes clínicos que tengan o hayan conocido con motivo de haberme prestado atención o servicios de salud. Lo anterior, con el objeto que la aseguradora pueda evaluar esta solicitud o la procedencia del pago de un siniestro, y en cualquier momento que la compañía lo considere necesario para tal efecto, relevo a las personas mencionadas del secreto profesional, aceptando que proporcionen la información que se les solicite. Asimismo, conforme a lo señalado en la ley N° 19.628, relativa a la protección de la vida privada, por este acto vengo en facultar expresamente a la compañía aseguradora, o quien sus derechos represente, para hacer uso de mis datos de carácter personal así como también aquellos denominados como sensibles. Esta autorización faculta a la aseguradora para efectuar el tratamiento de dichos datos conforme lo expresa la norma legal señalada. De la misma forma, consiento expresamente para que la compañía aseguradora tenga acceso a los contenidos o copias de las recetas médicas, análisis o exámenes de laboratorios clínicos y servicios relacionados con la salud, según lo expresa el artículo 127 del código sanitario, modificado por la ley ya citada. Conforme a lo anterior, declaro haber sido informado que estos datos son para el exclusivo uso de la compañía aseguradora en el análisis del otorgamiento de seguros, modificaciones de coberturas, análisis de reclamos, investigaciones de siniestros y, en general todo aquello que diga relación con los contratos que celebre con la aseguradora, pudiendo estos datos ser comunicados a terceros, con estos mismos fines. El proponente asegurado declara haber leído las notas precedentes y firma en señal de conformidad y acuerdo.</fo:block>
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="bold">Declaro en forma expresa que esta declaración personal de salud la suscribo bajo toda mi responsabilidad legal, con la firma electrónica simple que el Banco BCI, contratante del seguro colectivo de desgravamen para créditos hipotecarios, me proporcionó para la suscripción de toda la documentación bancaria que sea necesaria para la obtención de este crédito y demás operaciones bancarias por vía electrónica.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100" padding-top="48pt">FECHA: <xsl:value-of select="$dia2"/>/<xsl:value-of select="$mes2" />/<xsl:value-of select="$ano2"/></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="right" padding-top="3pt">
                                        <fo:external-graphic height="15mm" width="50mm">
                                            <xsl:attribute name="src">
                                                tablas/impresion/imagenes/hipotecario/certificado_digital.jpg
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                    <fo:block text-align="right" color="#000000" font-size="10pt" font-weight="100">Firma Proponente Asegurado</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block text-align="left" color="#000000" font-size="8pt" font-weight="100" padding-top="10pt">N° Viaje:  <xsl:value-of select="codigoViaje" /></fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template name="getMonth">
        <xsl:param name="monthNbr"/>
        <xsl:choose>
            <xsl:when test="$monthNbr=1">Enero</xsl:when>
            <xsl:when test="$monthNbr=2">Febrero</xsl:when>
            <xsl:when test="$monthNbr=3">Marzo</xsl:when>
            <xsl:when test="$monthNbr=4">Abril</xsl:when>
            <xsl:when test="$monthNbr=5">Mayo</xsl:when>
            <xsl:when test="$monthNbr=6">Junio</xsl:when>
            <xsl:when test="$monthNbr=7">Julio</xsl:when>
            <xsl:when test="$monthNbr=8">Agosto</xsl:when>
            <xsl:when test="$monthNbr=9">Septiembre</xsl:when>
            <xsl:when test="$monthNbr=10">Octubre</xsl:when>
            <xsl:when test="$monthNbr=11">Noviembre</xsl:when>
            <xsl:when test="$monthNbr=12">Diciembre</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="subsidio">
        <fo:table-row>
            <fo:table-cell>
                <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="respuesta" /></fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

    <xsl:template name="filaPregunta">
        <fo:table-row>
            <fo:table-cell padding-top="3pt" padding-bottom="5pt" padding-left="5pt" padding-right="5pt" border="solid 0.1mm black">
                <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="glosaPregunta" /></fo:block>
                <xsl:text>&#x0A;</xsl:text>
                <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="respuesta" /></fo:block>
                <xsl:text>&#x0A;</xsl:text>
                <xsl:if test="normalize-space(respuestaAdicional)!=''">
                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of text-align="justify" select="glosaTextoAdicional"/></fo:block>
                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Indicar: <xsl:value-of select="respuestaAdicional"/></fo:block>
                </xsl:if>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

</xsl:stylesheet>
