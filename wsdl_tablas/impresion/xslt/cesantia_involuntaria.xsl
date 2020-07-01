<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="cesantia_involuntaria">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="miCarta">

                <fo:flow flow-name="xsl-region-body">


              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="30mm" />
                  <fo:table-column column-width="115.9mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>




                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" >SEGUROS COLOCACIONES</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >PROPUESTA SEGUROS GENERALES</fo:block>
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>DATOS ENTIDAD CONTRATANTE</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left" >
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Entidad Contratante: Banco Cr�dito e Inversiones</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sucursal" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Ejecutivo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ejecutivo" />  </fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>Jefe Sucursal/Oficina:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/jefeOficina" />--></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>ASEGURABLE</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="150mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="2mm" >Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="2mm" >Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="75mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="45mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="75.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="2mm" >Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,0,4)" /></fo:inline>
                                    <xsl:variable name="mes" select="substring(OperacionCredito/fechaNacCliente,4,2)" />
                                    <fo:inline font-weight="bold">
                                        <xsl:if test="$mes = 01">Enero</xsl:if>
                                        <xsl:if test="$mes = 02">Febrero</xsl:if>
                                        <xsl:if test="$mes = 03">Marzo</xsl:if>
                                        <xsl:if test="$mes = 04">Abril</xsl:if>
                                        <xsl:if test="$mes = 05">Mayo</xsl:if>
                                        <xsl:if test="$mes = 06">Junio</xsl:if>
                                        <xsl:if test="$mes = 07">Julio</xsl:if>
                                        <xsl:if test="$mes = 08">Agosto</xsl:if>
                                        <xsl:if test="$mes = 09">Septiembre</xsl:if>
                                        <xsl:if test="$mes = 10">Octubre</xsl:if>
                                        <xsl:if test="$mes = 11">Noviembre</xsl:if>
                                        <xsl:if test="$mes = 12">Diciembre</xsl:if>
                                    </fo:inline>
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,6,5)" /></fo:inline>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="2mm" >Sexo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/sexoCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="2mm" >Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/estadoCivilCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="2mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,32)" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="2mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="2mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="2mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/telefonoCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt"   font-weight="bold" text-align="center" ><fo:leader leader-pattern="space" leader-length="2mm"/>PRODUCTOS Y/O COBERTURAS A CONTRATAR EN BCI SEGUROS GENERALES S.A.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="justify">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" margin-right="2mm" margin-left="1mm">Por el presente instrumento, solicito la incorporaci�n del asegurable identificado anteriormente, a la p�liza Colectiva respectiva de BCI Seguros Generales S.A., seg�n producto identificado a continuaci�n:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="91.56mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="42.78mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="26.5mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="35mm" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >Producto</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >Capital Asegurado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >Prima Bruta</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >�nica UF</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >Comisi�n de</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >Intermediaci�n</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="center">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="4mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="87.56mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="42.78mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="26.5mm"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" column-width="35mm" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >x</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" >CESANT�A INVOLUNTARIA</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" >(POL 1 90 031, POL 1 91 057, CAL 1 93 037)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" >Hasta 4 cuotas del</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" >cr�dito individualizado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/primaBrutaCesantiaInvoluntaria, "###.###.##0,0000","decimal")'/></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" >15%</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>VIGENCIA DE LOS SEGUROS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell  >
                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" >Desde: la fecha del otorgamiento del cr�dito.</fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" >Hasta: el d�a en que se produzca cualquiera de las dos circunstancias siguientes:</fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" >1) Que el asegurado cumpla la edad de permanencia de cada cobertura,</fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" >2) Que se extinga el cr�dito que dio origen al seguro.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>FORMA DE PAGO</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  line-height="4.5mm" text-align="justify" margin-right="2mm" margin-left="1mm"><fo:leader leader-pattern="space" leader-length="1mm"/>Autorizo que el monto de las primas correspondientes al seguro elegido, sea cargada en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>CARACTERISTICAS DEL PRODUCTO</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="2mm"><fo:inline font-weight="bold">Periodo de actividad m�nima para invocar al seguro:</fo:inline> 6 meses con contrato indefinido con un mismo empleador. <fo:inline font-weight="bold">Carencia:</fo:inline> 60 d�as desde la contrataci�n del cr�dito o dos cuotas mensuales. Periodo de <fo:inline font-weight="bold">Cesant�a/Incapacidad cubierto:</fo:inline> Cuatro cuotas mensuales. <fo:inline font-weight="bold">Edad de ingreso:</fo:inline> entre 18 y 64 a�os. <fo:inline font-weight="bold">Permanencia:</fo:inline> Hasta los 65 a�os 364 d�as.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"    />
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:leader leader-pattern="space" leader-length="0.5mm"/>1.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" >Cobertura:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/>a)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm" ><fo:inline font-weight="bold">Trabajadores Dependientes</fo:inline>   cesant�a involuntaria por alguna de las causales de los n�meros 1 y 6 del art�culo 159 o el inciso 1 del art�culo 161, ambos del C�digo del Trabajo. En presencia de la situaci�n prevista en el art�culo 159 nro. 1, ser� necesario acreditar en el finiquito respectivo el pago de al menos 2/3 (dos tercios) de la indemnizaci�n que hubiese correspondido en caso de haberse imputado la causal establecida en el inciso 1 del art�culo 161 del mismo c�digo</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>b)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm" ><fo:inline font-weight="bold">Trabajadores Independientes</fo:inline>   incapacidad temporal producida por una enfermedad de origen infeccioso o accidente que cause el otorgamiento de una licencia m�dica de reposo superior a 30 d�as. El n�mero de cuotas a indemnizar se regir� de acuerdo a la tabla que se presenta a continuaci�n:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  text-decoration="underline" >Tiempo de Reposo:</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" >De 31 a 60 d�as <fo:leader leader-pattern="space" leader-length="3mm"/>: 1 cuota</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" >De 61 a 90 d�as <fo:leader leader-pattern="space" leader-length="3mm"/>: 2 cuotas</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" >De 91 a 120 d�as<fo:leader leader-pattern="space" leader-length="2mm"/>: 3 cuotas</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" >M�s de 121 d�as <fo:leader leader-pattern="space" leader-length="2mm"/>: 4 cuotas</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"   border-bottom="0.5pt solid black" column-width="6mm"/>
                  <fo:table-column border-bottom="0.5pt solid black" border-right="0.5pt solid black"  column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>2.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm" ><fo:inline text-decoration="underline">Plazo M�ximo de presentaci�n de antecedentes:</fo:inline> Para la acreditaci�n inicial del siniestro, en caso de trabajadores dependientes el plazo ser� 180 d�as corridos contados desde la fecha de t�rmino de la relaci�n laboral o fecha de inicio de licencia m�dica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 d�as corridos posteriores a la fecha de facturaci�n de cada cuota reclamada.</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="65.2333mm" />
                  <fo:table-column column-width="65.2333mm" />
                  <fo:table-column column-width="65.2333mm"/>
                  <fo:table-body>
                      <fo:table-row>

                           <!-- <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>-->
                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  </xsl:attribute>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Asegurable</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
                                                  </xsl:attribute>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Corredor</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


                </fo:flow>
            </fo:page-sequence>
            <!-- FIN de pagina 1-->


            <!-- inicio de pagina 2-->
            <fo:page-sequence master-reference="miCarta">
                <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="30mm" />
                  <fo:table-column column-width="115.9mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="3cm" height="1.5cm"  vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" >SOLICITUD DE INCORPORACION</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" >SEGUROS COLOCACIONES</fo:block>
                            </fo:table-cell>



                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left"  >
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>3.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="left" ><fo:inline text-decoration="underline">Antecedentes requeridos para la acreditaci�n del siniestro y el pago de cuotas:</fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/>a)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm" >En caso de Trabajador Dependiente: Copia de finiquito firmado en original ante notario, certificado de cotizaciones de la AFP o INP con las doce ultimas cotizaciones (posterior al 20 del mes a cobrar), inscripci�n en el registro municipal de cesantes y/o solicitud de pago del subsidio de cesant�a. Por cada una de las cuotas en que se solicite el pago del seguro, se debe presentar el Certificado de la AFP o INP se�alado anteriormente, �ltima colilla del pago de subsidio de cesant�a. Autorizo que el monto de las primas correspondientes al seguro elegido, sea cargada en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>b)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm">En caso de trabajador independiente: licencia m�dica con el n�mero de d�as de reposo, copia de la documentaci�n presentada al sistema de salud previsional, declaraci�n jurada simple de su estado de salud. No se cubrir�n las licencias m�dicas curativas extendidas con anterioridad a la contrataci�n de la cobertura o derivadas de continuaci�n de tratamiento, tampoco se cubren licencias m�dicas maternales ni licencias m�dicas por complicaciones de embarazos y tampoco por enfermedad de hijos menores de 1 a�o.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>4.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:inline text-decoration="underline">Exclusiones:</fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="183.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>-</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm">Clientes del banco BCI que habiendo jubilado no realizan actividad profesional documentada en contrato de trabajo o de prestaci�n de servicios.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="183.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>-</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-right="2mm">Trabajadores del Banco BCI y de sus filiales.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="183.8mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>-</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-right="2mm">Funcionarios de las Fuerzas Armadas, de Orden y Seguridad (Carabineros y Polic�a de Investigaciones).</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" ><fo:leader leader-pattern="space" leader-length="2mm"/>COMO ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>1.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" line-height="4.5mm" font-family="Helvetica" font-size="11pt" text-align="justify" margin-right="2mm" >Que la indemnizaci�n a que d� lugar la cobertura de <fo:inline font-weight="bold">Cesant�a Involuntaria</fo:inline> ser� pagada �ntegramente al Banco de Cr�dito de Inversiones. Acepto estas condiciones conforme a los t�rminos prescritos en la Norma de Car�cter General 124 de la S.V.S. del 22 de noviembre del 2001.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>2.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" margin-right="2mm" >Que la presente Solicitud de Incorporaci�n de estos seguros se hace a petici�n del suscrito y en ning�n caso ha sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s) ofrecido(s) o solicitado(s); y adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente Solicitud.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>3.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-right="2mm" >  Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y compa��a aseguradora.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-left="0.5pt solid black"  column-width="6mm"/>
                  <fo:table-column border-right="0.5pt solid black" column-width="189.9mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>4.</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   line-height="4.5mm" text-align="justify" margin-right="2mm" >Aceptar que esta solicitud, no otorga cobertura hasta haber sido aceptada por BCI Seguros Generales S.A. Que en caso que la tasa de desempleo de los �ltimos 12 meses m�viles contados desde la fecha del mes anterior al de ocurrencia del siniestro, informada por el Instituto Nacional de Estad�sticas (INE) sea superior al 10%, el monto asegurado ser� reducido a dos (2) cuotas de cr�dito como tope m�ximo de indemnizaci�n.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="left" >AUTORIZACION</fo:block>
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   line-height="4.5mm" text-align="justify" ><fo:leader leader-pattern="space" />Autorizar al Banco, para remitir a Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas compa��as.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>




              <!--    ESTO ES VARIABLE DE ACUERDO A COMO VIENE EL CERTIFICADO DE COBERTURA ....  -->
              <!--                               DESDE AQUI HASTA ....                           -->

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column border-bottom="0.5pt solid black" border-right="0.5pt solid black" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >

                               <!-- <xsl:if test="certificado"> -->
                                   <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" line-height="4.5mm" text-align="left" >La presente solicitud de incorporaci�n ser� aceptada por BCI Seguros Generales S.A. en forma inmediata y otorgar� cobertura, una vez que la operaci�n crediticia individualizada sea aceptada por el Banco de Cr�dito e Inversiones.</fo:block>
                               <!-- </xsl:if> -->

                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

               <!--   ................................  ACA .................................... -->




              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>




              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="67.966mm" />
                  <fo:table-column column-width="67.966mm" />
                  <fo:table-column column-width="67.966mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  </xsl:attribute>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                            <fo:table-cell >
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" vertical-align="middle" >Firma del Asegurable</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                      <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                                  <xsl:attribute name="background-image">
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
                                                  </xsl:attribute>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                        <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Corredor</fo:block>
                                      </fo:block-container>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column border-bottom="0.5pt solid black" border-right="0.5pt solid black" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" >INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251</fo:block>

                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="center" >
                  <fo:table-column border-left="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" >BCI corredores de seguros S.A., Rut 87.826.800-8, en mi calidad de Corredor de seguros y en cumplimiento a la ley, informo que durante el a�o calendario anterior intermedi� contratos de seguros con las siguientes C�as. de seguros: En Seguros Generales el 82.15% en BCI Seguros Generales S.A., el 7.29% con Aseguradora Magallanes S.A., el 2.01% con Cruz del Sur S.A., el 1.72% con Liberty Cia. de Seguros Generales y otras 6.83%; En Seguros de Vida, el 94.13% con BCI seguros de Vida S.A., el 3.19% en la Interamericana Vida S.A. y otras 6.83%. BCI Corredores de seguros S.A., se encuentra amparada por la P�liza de Seguros de Garant�a N� 196767-3 de BCI Seguros Generales S.A. y la P�liza de Responsabilidad Civil N� 304-05-00011613 de Mapfre Seguros generales S.A.</fo:block>
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
