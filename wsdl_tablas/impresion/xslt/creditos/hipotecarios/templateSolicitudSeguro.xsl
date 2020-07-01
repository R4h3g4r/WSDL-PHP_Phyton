<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
    <!--xsl:output method="fo:root" omit-xml-declaration="yes" doctype-public="-//W3C//DTD Xfo:root 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xfo:root1/DTD/xfo:root1-transitional.dtd" indent="yes" /-->
    <xsl:decimal-format name="numeracionCL" decimal-separator="," grouping-separator="."/>
    <xsl:template match="solicitudSeguroTO">
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

                    <fo:block><xsl:text>&#x0A;</xsl:text></fo:block>
                    <fo:block text-align="left">
                        <fo:external-graphic height="10mm" width="20mm">
                            <xsl:attribute name="src">
                                tablas/impresion/imagenes/hipotecario/logoBCI_SD.jpg
                            </xsl:attribute>
                        </fo:external-graphic>
                    </fo:block>

                    <fo:table font-family="Arial,Verdana,Helvetica" border="solid 0.1mm black">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" border="solid 0.1mm black">
                                    <fo:block text-align="center" color="#000000" font-size="12pt" font-weight="100">SOLICITUD DE SEGUROS ADICIONALES A CREDITO HIPOTECARIO</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#D8D8D8" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">ANTECEDENTES DEL ASEGURABLE(Datos Para Seguro de Desgravamen)</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DEUDOR DIRECTO</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">DATOS DEL ASEGURABLE</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Nombre Asegurable (Persona Natural)</fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="2" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="nombreAsegurable" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">RUT</fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="3" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="rutAsegurable" />-<xsl:value-of select="dvAsegurable" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Correo Electronico</fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="3" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="emailAsegurable" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">MATERIA ASEGURADA(para seguro incendio y adicionales)</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Dirección del Riesgo</fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="3" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="direccion" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Comuna</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="comuna" /></fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Ciudad</fo:block>
                                </fo:table-cell>
                                <fo:table-cell padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100"><xsl:value-of select="ciudad" /></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="2" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Tipo de Propiedad</fo:block>
                                </fo:table-cell>
                                <fo:table-cell number-columns-spanned="2" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Tipo de Construcción</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <xsl:call-template name="propiedad"/>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="center" color="#000000" font-size="10pt" font-weight="100">Uso de la Vivienda</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <xsl:call-template name="vivienda"/>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">SEGUROS SOLICITADOS</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">Solicito a la(s) aseguradora(s) que se mencionan, el aseguramiento del (los) riesgo(s) especificado(s) a continuación. La presente solicitud será intermediada por Bci Corredores de Seguros S.A. El cliente solicita contratar los seguros que se marcan a continuación:</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">SEGUROS COLECTIVOS</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="3" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="bold">Uso Habitacional o Prestación de Servicios Profesionales:</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">X Seguro Colectivo Incendio y Sismo con BCI Seguros Generales S.A. (POL 1 2013 1490)</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                            <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">X Seguro Colectivo Desgravamen con BICE Vida Compañía de Seguros S.A., (POL 2 2013 0678)</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">El detalle de los riesgos cubiertos, las exclusiones, los deducibles y demás condiciones se encuentran en el Informativo Cliente, documento que forma parte integrante de ésta Solicitud de Seguros.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">Declaro haber sido debida y oportunamente informado acerca de las diferencias entre el seguro colectivo de incendio y el de desgravamen contratado por el Banco y los seguros individuales que me han sido ofrecidos, coberturas, exclusiones, comisiones y costos entre uno y otro y mi derecho a elegir en cualquier momento aquél que sea de mi preferencia.</fo:block>
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">Autorizo al BCI para proporcionar a con BICE Vida Compañía de Seguros S.A., y/o a la entidad reaseguradora respectiva, antecedentes de carácter personal o antecedentes comerciales con la finalidad de obtener una exitosa contratación del seguro de Desgravamen relacionado al crédito hipotecario que solicito al BCI, declarando que lo anterior no constituye infracción al art 154 de la Ley General de Bancos ni a la Ley N° 19.628 sobre protección de datos de carácter personal.</fo:block>
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">Declaro en forma expresa que esta solicitud de seguros la suscribo bajo toda mi responsabilidad legal, con la firma electrónica simple que el Banco BCI, contratante del seguro colectivo de desgravamen para créditos hipotecarios, me proporcionó para la suscripción de toda la documentación bancaria que sea necesaria para la obtención de este crédito y demás operaciones bancarias por vía electrónica.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" background-color="#BEBEBE" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">NOTAS IMPORTANTES</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">COMPAÑÍA QUE CUBRE EL RIESGO: BICE Vida Compañía de Seguros S.A., BCI Seguros Generales S.A., según corresponda.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">CLASIFICACIÓN DE RIESGO: AA+ según Fitch Chile y AA+ según I.C.R. para con BICE Vida Compañía de Seguros S.A., AA según Fitch Chile y AA según I.C.R para BCI Seguros Generales S.A.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">INTERMEDIARIO: Bci Corredores de Seguros S.A. - RUT: 78.950.951-1 Bci Corredores de Seguros S.A., Bci Seguros Generales S.A., y Banco Crédito e Inversiones, forman parte del mismo grupo empresarial.</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                                    <fo:block text-align="justify" color="#000000" font-size="10pt" font-weight="100">LA MATERIA ASEGURADA: Corresponderá a la propiedad que se individualice en la escritura de compraventa y mutuo hipotecario que se suscribirá</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
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

                    <fo:table font-family="Arial,Verdana,Helvetica" padding-top="5pt">
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-column column-width="auto" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100" padding-top="60pt">FECHA: <xsl:value-of select="$dia2"/>/<xsl:value-of select="$mes2" />/<xsl:value-of select="$ano2"/></fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="center" padding-top="15pt">
                                        <fo:external-graphic height="15mm" width="50mm">
                                            <xsl:attribute name="src">
                                                tablas/impresion/imagenes/hipotecario/certificado_digital.jpg
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                    <fo:block text-align="center" color="#000000" font-size="10pt" font-weight="100">Firma Asegurable</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block text-align="left" padding-top="15pt">
                                        <fo:external-graphic height="15mm" width="50mm">
                                            <xsl:attribute name="src">
                                                tablas/impresion/imagenes/hipotecario/firma_corredor.jpg
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:block>
                                    <fo:block text-align="center" color="#000000" font-size="10pt" font-weight="100">Firma Corredor</fo:block>
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

    <xsl:template name="propiedad">
        <fo:table-row>
            <fo:table-cell number-columns-spanned="2" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt" border="solid 0.1mm black">
                <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">
                    <xsl:if test="tipoPropiedad='Casa'">
                        Casa X &#0160;&#0160;&#0160;&#0160; Departamento _  &#0160;&#0160;&#0160;&#0160; Otro _
                    </xsl:if>
                    <xsl:if test="tipoPropiedad='Departamento'">
                        Casa _ &#0160;&#0160;&#0160;&#0160; Departamento X  &#0160;&#0160;&#0160;&#0160; Otro _
                    </xsl:if>
                    <xsl:if test="tipoPropiedad='Otro'">
                        Casa _ &#0160;&#0160;&#0160;&#0160; Departamento _ &#0160;&#0160;&#0160;&#0160; Otro X
                    </xsl:if>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell number-columns-spanned="2" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">
                <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">Sólido X &#0160;&#0160;&#0160;&#0160; Ligero _</fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

    <xsl:template name="vivienda">
        <fo:table-row>
            <fo:table-cell number-columns-spanned="4" padding-top="3pt" padding-bottom="3pt" padding-left="3pt" padding-right="3pt">            
                <fo:block text-align="left" color="#000000" font-size="10pt" font-weight="100">
                    <xsl:if test="usoVivienda!='Uso comercial'">
                        Uso habitacional X &#0160;&#0160;&#0160;&#0160; Uso Comercial _
                    </xsl:if>
                    <xsl:if test="usoVivienda='Uso comercial'">
                        Uso habitacional _ &#0160;&#0160;&#0160;&#0160; Uso Comercial X
                    </xsl:if>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>

</xsl:stylesheet>
