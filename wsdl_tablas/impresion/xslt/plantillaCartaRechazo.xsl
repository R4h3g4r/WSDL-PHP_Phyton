<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>



    <xsl:template match="plantillaCartaRechazo">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="DetalleCartaTO" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="DetalleCartaTO">

           <fo:flow flow-name="xsl-region-body">
           <fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                            <fo:block text-align="right"  width="12">
                                      <fo:external-graphic>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="DetalleCartaTO/imgPath"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
            </fo:block>


            <fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" >
                                        Carta de renuncia a Cuenta Protegida
                                </fo:block>
                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
            <fo:block space-before="6mm" font-weight="bold" />
            <fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                        Santiago, <xsl:value-of select="DetalleCartaTO/dia"/> de <xsl:value-of select="DetalleCartaTO/mes"/> de <xsl:value-of select="DetalleCartaTO/anno"/>
                                </fo:block>

                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
                <fo:block space-before="15mm" font-weight="bold" />

                <fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                    Señores
                                </fo:block>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                    Bci
                                </fo:block>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                    Presente
                                </fo:block>
                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>

                <fo:block space-before="10mm" font-weight="bold" />

             <fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="justify" vertical-align="middle" >
                                    A través de la presente, declaro haber tomado conocimiento de la existencia de
                                    'cuenta protegida' y, por la presente vengo en renunciar al servicio de análisis
                                    ofrecido en carta enviada por Bci con fecha diciembre de 2008. Asimismo,
                                    declaro entender que la no suscripción de este servicio provocará que todo
                                    cheque presentado a cobro en el Banco, cuyo importe exceda los saldos
                                    disponibles en mi cuenta corriente, o los cupos disponibles en su respectiva
                                    línea de sobregiro, según corresponda, será protestado por falta de fondos e
                                    informado al Boletín de Informaciones Comerciales de la Cámara de Comercio
                                    de Santiago
                                </fo:block>

                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>

                <fo:block space-before="10mm" font-weight="bold" />

                <fo:block>
              <fo:table>
                  <fo:table-column column-width="100mm"/>
                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="bold" text-align="justify" vertical-align="middle" >
                                    Número de Cuenta Corriente
                                </fo:block>
                                <fo:block space-before="02mm" font-weight="bold" />
                                <fo:block font-size="10pt" font-weight="normal" text-align="justify" vertical-align="middle" >
                                        <xsl:value-of select="DetalleCartaTO/ctaCorriente"/>
                                </fo:block>
                                <fo:block space-before="05mm" font-weight="bold" />
                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>

                <fo:block space-before="10mm" font-weight="bold" />

                <fo:block>
                <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />
                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block  font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                        Nombre      : <xsl:value-of select="DetalleCartaTO/nombreEmpresa"/>
                                </fo:block>
                                <fo:block space-before="05mm" font-weight="bold" />
                                <fo:block   font-size="10pt" font-weight="normal" text-align="left" vertical-align="middle" >
                                         Rut        : <xsl:value-of select="DetalleCartaTO/rut"/>
                                </fo:block>
                        </fo:table-cell>
                        </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>

                <fo:block space-before="25mm" font-weight="bold" />

                <fo:block>
                <fo:table border-collapse="collapse">
                  <fo:table-column column-width="175mm"  />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="center" vertical-align="middle" >
                                        __________________________________
                                </fo:block>

                                <fo:block   font-size="10pt" font-weight="normal" text-align="center" vertical-align="middle" >
                                         Firma Cliente
                                </fo:block>
                                <fo:block space-before="05mm" font-weight="bold" />
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