<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>



    <xsl:template match="plantillaCartaCtaProtegida">
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
                                    SERVICIO DE CUENTA PROTEGIDA
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
                                    Por este acto las partes acuerdan contratar el Servicio Cuenta Protegida que
                                    opera en la cuenta corriente en el evento que el cliente no tenga asociada a ésta,
                                    una línea de sobregiro o teniéndola y habiendo utilizado el total de su cupo,
                                    sobregirare dicha cuenta por consecuencia de presentación a cobro de un cheque. En
                                    la prestación de este servicio, cada vez que se presente un sobregiro como el
                                    descrito, BCI considerará tal contingencia como una solicitud del cliente al Banco
                                    para proceder a analizar discrecionalmente la situación y, conforme a las
                                    facultades y políticas de créditos vigentes y antecedentes del cliente al momento
                                    de producirse el evento, pagar o no estos sobregiros. El cliente acepta desde ya el
                                    cargo en su cuenta por concepto del servicio de análisis requerido para aprobar
                                    dichos pagos, del monto del cheque, más la suma de intereses, a razón de la Tasa
                                    Máxima Convencional, más comisiones e impuestos, dejándose constancia que
                                    para adoptar tal decisión, el Banco deberá siempre evaluar, puntualmente, la
                                    operación en cuestión, todo ello, en el contexto de tratarse de un servicio que
                                    reviste el carácter de acto complejo.
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
                  <fo:table-column column-width="90mm" text-align="center" />
                  <fo:table-column column-width="90mm" text-align="center" />

                  <fo:table-body>
                      <fo:table-row>
                        <fo:table-cell>
                                <fo:block   font-size="10pt" font-weight="normal" text-align="center" vertical-align="middle" >
                                        __________________________________
                                </fo:block>

                                <fo:block   font-size="10pt" font-weight="normal" text-align="center" vertical-align="middle" >
                                        Firma y Timbre Ejecutivo
                                </fo:block>
                                <fo:block space-before="05mm" font-weight="bold" />
                        </fo:table-cell>
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