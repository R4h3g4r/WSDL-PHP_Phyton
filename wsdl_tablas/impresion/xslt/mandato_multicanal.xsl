<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="mandato_multicanal">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" >CONTRATO MULTICANAL</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >Hoja : 1 - 4</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>



                            <!-- a convertir primera tabla -->
                           <!-- <fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">En <fo:leader leader-length="7.2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, a <fo:leader leader-length="1.61cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> de <fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> de <fo:leader leader-length="2.06cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>  -->

                            <!-- primera tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="7mm"  />
                                <fo:table-column column-width="70mm" />
                                <fo:table-column column-width="5mm"  />
                                <fo:table-column column-width="15mm" />
                                <fo:table-column column-width="5mm"  />
                                <fo:table-column column-width="45mm" />
                                <fo:table-column column-width="5mm"  />
                                <fo:table-column column-width="26mm" />

                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >En</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ciudadContrato" /></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold">, a </fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"></fo:inline> de </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>
                                                          <xsl:variable name="mes" select="OperacionCredito/mes" />
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

                                                  </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"> de </fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><fo:leader leader-pattern="space" leader-length="1mm"/>
                                                  <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- primera tabla convertida -->



                            <!-- a convertir segunda tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">don(a) <fo:leader leader-length="18.23cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->

                            <!-- segunda tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="15mm"  />
                                <fo:table-column column-width="180mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >don(a)</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- segunda tabla convertida -->





                            <!-- a convertir tercera tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">de profesi�n o actividad <fo:leader leader-length="14.98cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->

                            <!-- tercera tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="45mm"  />
                                <fo:table-column column-width="150mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >de profesi�n o actividad </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/profesionCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- tercera tabla convertida -->



                            <!-- a convertir cuarta  tabla -->
                           <!-- <fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">Domiciliado(a) en <fo:leader leader-length="16.16cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->
                            <!-- cuarta tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="35mm"  />
                                <fo:table-column column-width="160mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Domiciliado(a) en </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,32)" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- cuarta tabla convertida -->








                            <!-- a convertir quinta  tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">Comuna <fo:leader leader-length="7.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> Ciudad <fo:leader leader-length="9.1cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->
                            <!-- quinta tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="20mm" />
                                <fo:table-column column-width="70mm" />
                                <fo:table-column column-width="15mm" />
                                <fo:table-column column-width="90mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Comuna</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Ciudad</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- quinta tabla convertida -->







                            <!-- a convertir sexta   tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">C�dula identidad N� <fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> Nacionalidad <fo:leader leader-length="9.13cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->
                            <!-- sexta tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="40mm" />
                                <fo:table-column column-width="40mm" />
                                <fo:table-column column-width="25mm" />
                                <fo:table-column column-width="30mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >C�dula identidad N� </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Nacionalidad</fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nacionalidadCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- sexta tabla convertida -->




                            <!-- a convertir septima tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">Estado Civil <fo:leader leader-length="6.35cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/> Tel�fono <fo:leader leader-length="9.1cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->
                            <!-- septima tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="23mm" />
                                <fo:table-column column-width="65mm" />
                                <fo:table-column column-width="17mm" />
                                <fo:table-column column-width="40mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Estado Civil </fo:block>
                                          </fo:table-cell>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/estadoCivilCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Tel�fono</fo:block>
                                          </fo:table-cell>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/telefonoCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- septima tabla convertida -->




                            <!-- a convertir octava  tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">E-mail <fo:leader leader-length="10.37cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>por s� o en representaci�n de la sociedad </fo:block>-->
                            <!-- octava tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="15mm"  />
                                <fo:table-column column-width="100mm" />
                                <fo:table-column column-width="80mm"  />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >E-mail </fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/emailCliente" /></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >por s� o en representaci�n de la sociedad </fo:block>
                                          </fo:table-cell>


                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- octava tabla convertida -->




                            <!-- a convertir novena  tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" ><fo:leader leader-length="19.91cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>-->
                            <!-- novena tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column column-width="5mm"  />
                                <fo:table-column column-width="70mm" />
                                <fo:table-column column-width="70mm" />
                                <fo:table-column column-width="70mm" />


                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/sucursal" />--></fo:inline></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ></fo:block>
                                          </fo:table-cell>
                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:inline font-weight="bold"><!--<xsl:value-of select="OperacionCredito/sucursal" />--></fo:inline></fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- novena tabla convertida -->




                            <!-- a convertir decima  tabla -->
                            <!--<fo:block font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm">de su mismo domicilio, en adelante indistintamente "el mandante", declaro:</fo:block>-->
                            <!-- decima tabla convertida-->

                            <fo:table border-collapse="collapse" text-align="left" >
                                <fo:table-column />

                                <fo:table-body>
                                    <fo:table-row>

                                          <fo:table-cell >
                                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >de su mismo domicilio, en adelante indistintamente "el mandante", declaro:</fo:block>
                                          </fo:table-cell>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                            <!-- decima tabla convertida -->




                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">PRIMERO.-</fo:inline> Declaro ser cliente del Banco de Cr�dito e Inversiones, en adelante tambi�n llamado "el Banco", designaci�n que para estos efectos incluye tambi�n a sus sociedades filiales. Es mi decisi�n operar, en cuanto ello sea t�cnicamente posible, a trav�s de instrucciones que impartir� por medios remotos, especialmente internet y por cualquier otro sistema de transmisi�n de esa naturaleza; v�a electr�nica, satelital o telef�nica, que est�n disponibles en el Banco.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" ><fo:inline font-weight="bold">SEGUNDO.-</fo:inline> Declaro asimismo conocer los productos y servicios que proporciona actualmente el Banco y sus sociedades filiales, as� como el texto de sus respectivas condiciones generales y contratos, los que se encuentran publicados en la p�gina web del Banco, a la cual declaro tener acceso; en las sucursales del Banco y adem�s, protocolizadas en la Cuadrag�sima Notar�a de Santiago, de don Alberto Moz� Aguilar, documentos que forman parte integrante del presente contrato.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" ><fo:inline font-weight="bold">TERCERO.-</fo:inline> Mediante el presente instrumento, otorgo mandato al Banco de Cr�dito e Inversiones para que --con relaci�n a los productos y servicios en que decidiere operar-- en mi nombre y representaci�n los suscriba, junto a la documentaci�n adicional que fuere menester para la prestaci�n de los mismos. Entre dichos productos se hallan, desde luego, y a t�tulo meramente enunciativo, cuentas corrientes de dep�sito, l�neas de sobregiro, cr�ditos de cualquiera naturaleza; captaciones e inversiones de todo tipo -incluidos fondos mutuos y acciones-- y el traspaso de fondos entre diversas cuentas. Con respecto a este �ltimo servicio, declaro contar con la autorizaci�n de los terceros titulares de las cuentas involucradas con los abonos, y libero al Banco de toda responsabilidad relacionada con lo anterior.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >En general, autorizo al Banco para que me provea en forma remota, cualquiera que sea el canal empleado al efecto, todos aquellos productos y servicios que hoy provee en sus sucursales f�sicas o en forma manual, asimilando como medio v�lido de autorizaci�n cuando as� se requiera, la firma electr�nica.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Con relaci�n a los cr�ditos de cualquiera naturaleza,en moneda nacional o extranjera, reajustables o no, otorgo adem�s en este mismo acto, mandato especial, para que a�n autocontratando, y a trav�s de cualesquiera de sus apoderados actuando indistintamente, firme las solicitudes de cr�dito y dem�s documentos relacionados o necesarios para lo anterior y suscriba y/o complete los pagar�s a la orden del Banco de Cr�dito e Inversiones, por las sumas que en definitiva resultare adeud�ndole por cualquier concepto, con expresa facultad de delegar estas atribuciones. El Banco de Cr�dito e Inversiones o quien �ste designe al efecto, se encontrar� adem�s facultado para completar en dichos documentos y pagar�s los datos relativos a mi individualizaci�n, cantidad adeudada, plazos, tasas de inter�s, fechas de pago de capital e intereses, y dem�s condiciones acordadas que sean necesarias para que los respectivos t�tulos re�nan los requisitos legales para su validez en conformidad a la Ley 18.092 sobre letras de cambio y pagar�s y para que tengan m�rito ejecutivo, incluidas las autorizaciones de firmas por un notario p�blico, pudiendo tambi�n delegar en terceros, la facultad de suscribir pagar�s a su orden con relaci�n a las antedichas deudas.</fo:block>


                    </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >Hoja : 2 - 4</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Declaro conocer que est� sancionado penalmente, el suministro de datos falsos con el prop�sito de obtener cr�ditos. El Banco contratar� seguros para todos los cr�ditos que me curse y tan pronto como esto ocurra, cualquiera que sea la naturaleza de dichos cr�ditos, como tambi�n otros seguros o coberturas que yo le instruyere, pudiendo determinar el intermediario y la compa��a aseguradora, a menos que le instruyere expresamente en sentido contrario, pudiendo desde luego suscribir y completar las propuestas de seguros que corresponden a los formularios y dem�s documentos asociados a la contrataci�n de los mismos.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Declaro desde ya que es mi voluntad contar con seguros de desgrav�men para todos los cr�ditos que me curse el Banco y reconozco que no es condici�n para el otorgamiento de los cr�ditos que solicite, la contrataci�n de aquellos.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Declaro estar en conocimiento que puedo contratar dichos seguros directamente y por mi cuenta en cualquier entidad aseguradora y a trav�s de cualquier corredor de seguros y que he tomado conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y de la compa��a aseguradora. Las partes dejan expresa constancia que el no ejercicio del presente mandato por parte del Banco, no le acarrear� responsabilidad de ning�n tipo, ni ser� motivo para reclamar perjuicios ni da�os de ninguna especie.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Reconozco expresamente que la ejecuci�n del presente mandato estar� sujeta a la decisi�n del Banco de otorgar el cr�dito solicitado, pudiendo negarse si estimare que mis condiciones comerciales o patrimoniales no califican para su otorgamiento, seg�n sus criterios comerciales o pol�ticas de cr�dito vigentes.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Para los efectos del pago del Impuesto de Timbres y Estampillas que grave la operaci�n efectuada de conformidad a lo expresado en este n�mero y con el objeto de enterar dicho tributo en arcas fiscales, el Banco se entender� facultado para deducir del cr�dito otorgado, el monto del impuesto aludido, o para cargar dicho monto en mi cuenta corriente o en cualquiera otra acreencia que mantenga en el Banco.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Asimismo, el Banco o qui�n �ste designe estipular� en los pagar�s o letras de cambio que todas las obligaciones que de ellos emanen ser�n solidarias para mi y dem�s obligados al pago de tales efectos de comercio e indivisibles para sus herederos o sucesores a cualquier t�tulo, conforme a lo dispuesto en los art�culos 1526 N�4 y 1528 del C�digo Civil. El mandato que otorgo por el presente instrumento, por cuanto est� convenido en beneficio e inter�s del Banco ya que su otorgamiento ha sido condici�n indispensable para que el Banco suscriba con el mandante el presente mandato. Sin perjuicio de lo anterior,el mandato s�lo podr� ser revocado mediante notificaci�n al Banco por escrito, por intermedio de un Notario P�blico de la circunstancia de haber convenido expresamente el mandante con el Banco ponerle t�rmino. El presente Mandato podr� tambi�n ser ejecutado en todas sus partes por el Banco o por quien �ste designe, despu�s de mi muerte, de conformidad a lo previsto en el art�culo 2169 del C�digo Civil. Se conviene expresamente que todas y cada una de las obligaciones se�aladas en el presente contrato y en los pagar�s que con arreglo al mismo se suscriban en mi representaci�n, tendr�n el car�cter de indivisibles, de modo que su cumplimiento podr� exigirse a cualquiera de mis herederos, de acuerdo a lo dispuesto en los art�culos 1526 N� 4 y 1528 del C�digo Civil.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">CUARTO.-</fo:inline> Con respecto a nuevos productos y servicios que el Banco ofrezca en lo sucesivo y que sean susceptibles de ser operados a trav�s de medios remotos, declaro expresamente que el solo hecho de hacer uso de los mismos, constituir� expresa manifestaci�n de voluntad de mi parte en t�rminos de suscribirlos y de obligarme con relaci�n a ellos, cuyas condiciones generales ser�n publicadas en alguna de las formas estipuladas en la cl�usula segunda.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">QUINTO.-</fo:inline> Otorgo mandato al Banco para que cargue mi(s) cuenta(s) corriente(s), cuenta(s) a la vista, cuenta(s) de ahorro u otras que t�cnicamente lo permitieren, los impuestos, comisiones y dem�s costos, actualmente existentes o que se aplicaren o instauraren en los sucesivo, que devenguen los servicios que se me prestan o prestar�n en virtud del presente contrato. Tales comisiones y tarifas as� como su instauraci�n y/o modificaci�n se publicar�n en la p�gina web del Banco a la cual declaro tener acceso, o alternativamente se hallar�n disponibles en las sucursales del Banco, y por lo mismo con esa publicaci�n me dar� por satisfactoriamente enterado.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">SEXTO.-</fo:inline> Declaro conocer que para operar a trav�s de medios remotos, los servicios que se prestan en virtud de este mandato, incluyendo las comunicaciones y transacciones v�a internet, requieren identificaci�n mediante claves personales o una firma electr�nica. Para estos efectos, revestir�n tal car�cter los denominados "pin", "password", "medio de autentificaci�n y/o autorizaci�n", "claves de acceso", "claves secretas", acordando las partes la equivalencia jur�dica de ellos a la firma electr�nica registrada en los sistemas del Banco, y de igual forma, solemnidad y efecto como si se tratara de mi firma manuscrita.</fo:block>
                    </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >Hoja : 3 - 4</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >Dicha connotaci�n la provee cualquier tipo de elemento, sonido, s�mbolo, o proceso electr�nico que permita al Banco validar al menos formalmente mi identidad y desde luego, aqu�lla que legalmente se defina como firma electr�nica o aquel mecanismo de seguridad de acceso y/u operativo que el Banco o los operadores de los canales hubiesen establecido o que establezcan en el futuro, importando para todos los efectos legales que correspondea a la expresa manifestaci�n de mi voluntad. Sin perjuicio de lo anterior,si legal o reglamentariamente o por disposici�n de autoridad se exigieren otras certificaciones para la validez de estas firmas, deber� en todo caso operar con �stas y reconozco as� tambi�n que los medios remotos o electr�nicos de comunicaci�n constituyen una forma automatizada de acceso a los servicios del Banco, de manera que si por cualquier eventualidad no estuvieran disponibles, acceder� a los medios alternativos definidos por aquel. El Banco no ser� responsable de los da�os y perjuicios que llegaren a caus�rseme por la falta de disponibilidad de los medios electr�nicos de comunicaci�n. El Banco se reserva el derecho a modificar aquellos m�todos de acceso, inhibirlos y/o restringir la habilitaci�n o uso a determinadas funcionalidades y/o servicios actuales o que en un futuro se habiliten.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >Asumo la obligaci�n de no divulgar los elementos que constituyen o conforman las claves personales o de firma electr�nica antedichas, oblig�ndome as� tambi�n a actuar en el uso de las mismas con el mayor sigilo a fin de que nadie se imponga de aqu�llas. Libero desde ya al Banco de Cr�dito e Inversiones de toda responsabilidad relacionada con una o m�s de las operaciones a que se refiere este mandato, realizadas mediante el uso de mis claves personales, o respecto de aqu�llas que en cada caso impartiere, as� se derivaren en mi contra consecuencias de �ndole civil, patrimonial o penal.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >El Banco se entender� especial y ampliamente facultado Por el presente acto, confiero poder especial al Banco pero tan amplio como en derecho se requiera para que en mi nombre y representaci�n concurra, solicite y obtenga de alguna entidad prestadora de servicios de certificaci�n de firma electr�nica acreditada por la Subsecretar�a de Econom�a, Fomento y Reconstrucci�n o quien cumpla la funci�n de acreditaci�n, una firma electr�nica avanzada en los t�rminos establecidos en la Ley sobre Documentos Electr�nicos, Firma Electr�nica y Servicios de Certificaci�n de dicha Firma, sus Reglamentos y posteriores modificaciones.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >En el cumplimiento del presente mandato, el Banco podr� firmar y suscribir todos los documentos e instrumentos, realizar todos los actos y presentar todos los instrumentos p�blicos y/o privados requeridos por el Certificador y/o la Subsecretar�a de Econom�a, Fomento y Reconstrucci�n o quien lo reemplace con el objeto de obtener efectivamente para m�, la firma electr�nica avanzada. En caso que el procedimiento establecido para obtener firma electr�nica avanzada demandare mi comparecencia personal, esta dicha circunstancia no obstar� para que el Banco, en su calidad de mandatario, ejecute, realice, firme y suscriba todos los actos, contratos, documentos,instrumentos p�blicos y/o privados que no requieran necesariamente de mi comparecencia f�sica.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >Todos los actos y contratos otorgados o celebrados por m�, suscritos con firma electr�nica ser�n v�lidos de la misma manera y producir�n los mismos efectos que los celebrados por escrito y en soporte papel.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">SEPTIMO.-</fo:inline> Faculto al Banco de Cr�dito e Inversiones para que grabe las voces y conversaciones con las cuales se impartir�n las instrucciones a que se refiere el presente instrumento o cree los registros inform�ticos que estime oportunos, pudiendo reproducir tales grabaciones o registros s�lo cuando sea menester aclarar o precisar una o m�s �rdenes, o probar, judicial o extrajudicialmente, el hecho de haberse impartido las referidas instrucciones. As� tambi�n lo faculto para que pueda proporcionar toda la informaci�n relacionada con mi(s) cuenta(s) corriente(s), cuenta(s) a la vista, cuenta(s) de ahorro, de dep�sitos, inversiones y dem�s productos y/o servicios que me proporciona el Banco, a otras empresas, relacionadas o no con el Banco, y que �ste contratare para el desarrollo de sus servicios, as� se trate de aquella informaci�n sujeta a secreto o reserva bancarios. Me obligo a proporcionar al Banco todos los antecedentes que �ste le requiriere, relacionados con el origen de los fondos objeto de dep�sitos o transacciones de cualquiera naturaleza, que se hagan a trav�s de �ste, pudiendo el Banco objetar la transacci�n y en definitiva no cursarla, si yo no quisiere o no pudiere demostrar el se�alado origen, o �ste fuere insatisfactorio o no se cumpliere con lo requerido por el Banco, el que no estar� obligado a entregar raz�n de tal rechazo.</fo:block>
                    </fo:flow>
                </fo:page-sequence>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >Hoja : 4 - 4</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >OCTAVO.- El presente contrato tendr� una duraci�n indefinida y los mandatos que �l contiene expirar�n, asimismo, si fueren revocados por m�, para cuyo efecto deber� dar aviso por escrito al Banco, con una anticipaci�n de, a lo menos 30 d�as antes de la fecha en el cual deban terminar. Con todo, en lo relativo a todos aquellos servicios, operaciones o transacciones formalizados a trav�s de este mandato y cuya ejecuci�n interesare al Banco, en particular los relativos a contrataci�n de cr�ditos y suscripci�n de pagar�s, con arreglo a lo prescrito en el art�culo 241 del C�digo de Comercio; La suscripci�n del presente instrumento no revoca otros otorgados al Banco de Cr�dito e Inversiones con anterioridad a �ste, si los hubiese.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Para el evento de que decidiere operar alg�n producto del Banco en forma conjunta con otro cliente, dicho cliente deber� tambi�n suscribir un mandato como el presente, situaci�n que comunicaremos al Banco.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >En tal caso desde ya confiero mandato irrestricto a dicho tercero, quien a su vez habr� de otorgarme mandato en las mismas condiciones, para que uno cualquiera de nosotros, en representaci�n de todos, operemos en forma individual en todos los productos y servicios del Banco, pudiendo en consecuencia impartir instrucciones en dicha forma al Banco, girar cheques y en general oblig�ndonos solidariamente en los cr�ditos contra�dos por cualquiera de nosotros, cualquiera sea la naturaleza de �stos.</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >El Banco podr� en cualquier tiempo modificar las condiciones, modalidades u operatoria de los canales remotos, con el objeto de obtener un mejor aprovechamiento de �stos, lo cual me ser� comunicado por cualquier medio remoto con anticipaci�n a su entrada en vigencia. Importar� aceptaci�n expresa la realizaci�n por mi parte de alguna transacci�n, operaci�n o servicio objeto de modificaci�n, procedimiento que acepto desde ya.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">NOVENO.-</fo:inline> Para todos los efectos derivados del presente contrato, fijo mi domicilio en la ciudad y comuna indicada en la comparecencia, y me someto a la jurisdicci�n de sus tribunales de justicia.</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:inline font-weight="bold">PERSONERIA.-</fo:inline> La personer�a del compareciente por su representada consta de la escritura p�blica otorgada ante la Notar�a de don <fo:leader leader-length="13.4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  ><fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>, con fecha <fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>(no debe completarse si el suscriptor del mandato act�a por s�).</fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"  >El presente contrato se firma en dos ejemplares de id�ntico tenor, quedando uno en poder de cada una de las partes</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:table border-collapse="collapse" font-family="Courier" font-size="10pt" text-align="left">
                                <fo:table-column />
                                <fo:table-column />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell >
                                        </fo:table-cell>
                                        <fo:table-cell >
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" ><fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                            <fo:block font-family="Helvetica" font-size="12pt" text-align="center" >Mandante</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>






                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >USO EXCLUSIVO BCI:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-length="19.93cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Canal capturador:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-length="19.93cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Recibe, Nombre / Timbre / Cargo / Firma:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-length="19.93cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >Autoriza, Nombre / Timbre / Cargo / Firma:</fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block font-family="Helvetica" font-size="12pt" text-align="left" ><fo:leader leader-length="19.93cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>




                    </fo:flow>
                </fo:page-sequence>




        </fo:root>
    </xsl:template>
</xsl:stylesheet>
