<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/11/21 11:20 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

    <xsl:param name="IMG_URL"/>

    <xsl:template match="carta">

        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

            

            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="279.4mm" margin-top="20mm" margin-bottom="20mm" margin-left="30mm" margin-right="30mm">
                    <fo:region-body/>
                    <!-- <fo:region-before extent="3cm"/> -->
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">

                <fo:flow flow-name="xsl-region-body">
                    <!-- border="1pt solid black" -->
                    
                    <fo:block font-family="Times" text-align="right" font-size="10pt">
                        <fo:block text-align="left">
                            <fo:external-graphic src="url({$IMG_URL}/img_webcorp_normaliza.gif)"/>
                        </fo:block>
                        <fo:block>
                            <xsl:value-of select="direccionOficina" />
                        </fo:block>
                        <fo:block>
                            Fono <xsl:value-of select="telefono1" /> <xsl:value-of select="telefono2" /> Fax <xsl:value-of select="fax" />
                        </fo:block>
                        <fo:block>
                            Celular <xsl:value-of select="celular" />
                        </fo:block>
                    </fo:block>

                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="10mm" line-height="5mm">

                        <fo:block font-weight="bold">
                            Sr.(a):
                        </fo:block>
                        <fo:block font-weight="bold">
                            <xsl:value-of select="nombreDeudor" />
                        </fo:block>
                        <fo:block font-weight="bold">
                            <xsl:value-of select="direccionDeudor" />
                        </fo:block>
                        <fo:block font-weight="bold">
                            <xsl:value-of select="comunaDeudor" />
                        </fo:block>
                        <fo:block space-before="5mm">
                            Santiago, <xsl:value-of select="fecha" />
                        </fo:block>
                        <fo:block space-before="5mm" text-align="justify">
                            Estimado(a) Cliente, informamos a Ud. que a la fecha de hoy aún se encuentren impagas sus obligaciones con nuestra empresa mandante Banco de Crédito e Inversiones, con el siguiente detalle
                        </fo:block>
                    </fo:block>

                    <fo:block  space-before="5mm" text-align="center"  font-family="Times" font-weight="bold">
                        <fo:table>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-body>

                                <fo:table-row background-color="#CCCCCC" height="5mm">
                                    <fo:table-cell text-align="center" border="1pt solid black">
                                        <fo:block>
                                            Producto
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell text-align="left" border="1pt solid black">
                                        <fo:block>
                                            Nº Operación
                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell text-align="left" border="1pt solid black">
                                        <fo:block>
                                            Vencimiento
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left"  border="1pt solid black">
                                        <fo:block>
                                            Monto Mora (Pesos)
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row height="5mm">
                                    <fo:table-cell text-align="center">
                                        <fo:block>

                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell text-align="left">
                                        <fo:block>

                                        </fo:block>
                                    </fo:table-cell>

                                    <fo:table-cell text-align="left">
                                        <fo:block>

                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left">
                                        <fo:block>

                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <xsl:for-each select="productos/producto">
                                    <fo:table-row height="5mm">
                                        <fo:table-cell text-align="left" border="1pt solid black">
                                            <fo:block>
                                                <xsl:value-of select="nombre" />
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell text-align="left" border="1pt solid black">
                                            <fo:block>
                                                <xsl:value-of select="numeroOperacion" />
                                            </fo:block>
                                        </fo:table-cell>

                                        <fo:table-cell text-align="left" border="1pt solid black">
                                            <fo:block>
                                                <xsl:value-of select="vencimiento" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell text-align="right"  border="1pt solid black">
                                            <fo:block>
                                                <xsl:value-of select="montoMora" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>

                    <fo:block font-family="Times" text-align="justify" font-size="10pt" space-before="10mm" line-height="5mm">
                        A fin de evitar a Ud. las molestias, gastos adicionales y los negativos antecedentes comerciales que
                        lo señalado anteriormente le ocasiona, Banco de Crédito e Inversiones ha considerado oportuno
                        conceder a Ud. la posibilidad de regularizar su situación, con la finalidad de poder evitar el paso del
                        total de sus productos a Cartera Vencida y el inminente cobro por la vía judicial. Para lo cual deberá
                        concurrir a la brevedad, a nuestra oficina ubicada en <xsl:value-of select="direccionOficina" />. El
                        horario de atención es: Lunes a Viernes de <xsl:value-of select="horarioDeAtencion"/> .-
                    </fo:block>
                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="5mm" line-height="20mm">
                        Esperando contar con su presencia, le agradecemos su atención y saludamos atentamente.
                    </fo:block>
                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="5mm" line-height="5mm">
                        <xsl:value-of select="nombreCobrador"/>
                    </fo:block>
                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="1mm" line-height="2mm">
                        <xsl:value-of select="cargoCobrador"/>
                    </fo:block>
                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="1mm" line-height="6mm"  font-weight="bold">
                        NORMALIZA S.A.
                    </fo:block>

                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="5mm" line-height="5mm"  font-weight="bold">
                    </fo:block>

                    <fo:block font-family="Times" text-align="left" font-size="10pt" space-before="5mm" line-height="5mm"  font-weight="bold">
                        <fo:table>
                            <fo:table-column column-width="15mm"/>
                            <fo:table-column/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell text-align="left">
                                        <fo:block line-height="5mm">
                                            Nota:
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="justify">
                                        <fo:block line-height="5mm">
                                            Rogamos no considerar esta comunicación en el evento que Ud. haya regularizado su
                                            obligación con anterioridad a su recepción, así como disculpar las molestias que ésta le
                                            haya podido ocasionar.
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>

                    <!-- Separador -->
                    <!--
                    <fo:block space-after="10mm">
                        <fo:leader leader-alignment="center" leader-pattern="dots" leader-length="17cm"/>
                    </fo:block>
                    -->

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
