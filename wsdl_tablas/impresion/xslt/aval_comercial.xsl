<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/04/26 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="aval_comercial">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm">                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" font-size="9pt" font-family="Helvetica">
           
           <!--   AQUI COMIENZA COPIA BANCO  -->
           <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">
           
            <fo:table border-collapse="collapse" text-align="right">
                <fo:table-column column-width="200mm" />

                <fo:table-body text-align="left">
                    <fo:table-row>
	
                          <fo:table-cell text-align="left">
                                  <fo:block >
                                    <fo:external-graphic height="15mm" width="30mm" vertical-align="middle">
                                      <xsl:attribute name="src">
                                      <xsl:value-of select="logoBciSomosDiferentes"/>
                                      </xsl:attribute>
                                    </fo:external-graphic>
                                  </fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>           
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="right" >
              En<fo:leader leader-pattern="space" leader-length="50mm"/>,<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="dia" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="anio" /></fo:inline>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" >  <fo:inline font-weight="bold">Anexo:</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">Responsabilidades del avalista, fiador y codeudor solidario</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Yo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoAval" /></fo:inline></fo:block>
              <xsl:if test="simboloMoneda != '$'">
                      <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >C.I. N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>declaro por este acto, haber tomado conocimiento de mi calidad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de la deuda por UF<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>suscrita por<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
              </xsl:if>
               
              <xsl:if test="simboloMoneda != 'UF'">       
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >C.I. N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>declaro por este acto, haber tomado conocimiento de mi calidad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de la deuda por $<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>suscrita por<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>        
              </xsl:if>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>para con el Banco (Bci; Bci-Nova)<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >En cumplimiento de lo previsto en el artículo <fo:inline font-weight="bold">17 j) de la ley Nº 20.555</fo:inline>, declaro estar en conocimiento de los deberes y responsabilidades, de quien pretende constituir una garantía personal y declaro expresamente que:</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">a)</fo:inline> Mi responsabilidad de avalista, fiador y codeudor solidario, está expresada en los mismos términos y condiciones del deudor directo, y en caso de incumplimiento de éste, deberé responder por la obligación anteriormente indicada, más intereses, costas y gastos de cobranza. El Banco podrá cobrar, en ese caso, al deudor directo y/o al avalista.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">b)</fo:inline> Acepto los plazos, prórrogas y/o modificaciones de las condiciones del crédito que se acordaren entre el deudor y el Bci.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">c)</fo:inline> Mi responsabilidad es de carácter indivisible, por lo que la obligación del monto anteriormente indicado, es exigible a mis herederos y/o sucesores, según lo dispuesto en los artículos 1526 Nº 4 y 1528 del Código Civil.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">d</fo:inline>) No podré retractarme de mi condición de avalista y/o fiador solidario mientras esté pendiente el pago de la obligación principal.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">e)</fo:inline> Producto de la morosidad en la obligación principal puedo ser objeto de la respectiva cobranza judicial en mi contra, en calidad de avalista y/o codeudor solidario, proceso que inicialmente el Banco efectúa a través de su plataforma telefónica de cobranza, y de no prosperar esta gestión, se interpondrá una demanda ejecutiva con el mérito del pagaré ante los Tribunales de Justicia. El Banco efectúa la cobranza directamente, por medio de abogados externos y/o a través de su filial Servicios de Normalización y Cobranza -Normaliza S.A.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Avalista, fiador y codeudor solidario.</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Recibo:</fo:inline> declaro haberme impuesto del contenido de esta carta y haber recibido con esta misma fecha el original de la misma.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="20cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.3mm" color="black"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Copia Banco</fo:block>
	          </fo:flow>
	          </fo:page-sequence>              
            <!--   AQUI TERMINA COPIA BANCO  -->  
            
            <!--   AQUI COMIENZA COPIA CLIENTE  -->  
            <fo:page-sequence master-reference="miCarta">
            <fo:flow flow-name="xsl-region-body">          
            <fo:table border-collapse="collapse" text-align="right">
                <fo:table-column column-width="200mm" />

                <fo:table-body text-align="left">
                    <fo:table-row>
                          <fo:table-cell text-align="left">
                                  <fo:block >
                                    <fo:external-graphic  height="15mm" width="30mm" vertical-align="middle">
                                      <xsl:attribute name="src">
                                      <xsl:value-of select="logoBciSomosDiferentes"/>
                                      </xsl:attribute>
                                    </fo:external-graphic>
                                  </fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>           
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="right" >
              En<fo:leader leader-pattern="space" leader-length="50mm"/>,<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="dia" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="anio" /></fo:inline>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" >  <fo:inline font-weight="bold">Anexo:</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">Responsabilidades del avalista, fiador y codeudor solidario</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >Yo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoAval" /></fo:inline></fo:block>                            
              <xsl:if test="simboloMoneda != '$'">
                      <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >C.I. N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>declaro por este acto, haber tomado conocimiento de mi calidad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de la deuda por UF<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>suscrita por<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
              </xsl:if>
              
              <xsl:if test="simboloMoneda != 'UF'">       
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >C.I. N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutAval, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvAval" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>declaro por este acto, haber tomado conocimiento de mi calidad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">AVAL, FIADOR y CODEUDOR SOLIDARIO,</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de la deuda por $<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="montoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>suscrita por<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>        
              </xsl:if>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT N°:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="dvCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>para con el Banco (Bci; Bci-Nova)<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >En cumplimiento de lo previsto en el artículo <fo:inline font-weight="bold">17 j) de la ley Nº 20.555</fo:inline>, declaro estar en conocimiento de los deberes y responsabilidades, de quien pretende constituir una garantía personal y declaro expresamente que:</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">a)</fo:inline> Mi responsabilidad de avalista, fiador y codeudor solidario, está expresada en los mismos términos y condiciones del deudor directo, y en caso de incumplimiento de éste, deberé responder por la obligación anteriormente indicada, más intereses, costas y gastos de cobranza. El Banco podrá cobrar, en ese caso, al deudor directo y/o al avalista.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">b)</fo:inline> Acepto los plazos, prórrogas y/o modificaciones de las condiciones del crédito que se acordaren entre el deudor y el Bci.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">c)</fo:inline> Mi responsabilidad es de carácter indivisible, por lo que la obligación del monto anteriormente indicado, es exigible a mis herederos y/o sucesores, según lo dispuesto en los artículos 1526 Nº 4 y 1528 del Código Civil.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">d</fo:inline>) No podré retractarme de mi condición de avalista y/o fiador solidario mientras esté pendiente el pago de la obligación principal.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">e)</fo:inline> Producto de la morosidad en la obligación principal puedo ser objeto de la respectiva cobranza judicial en mi contra, en calidad de avalista y/o codeudor solidario, proceso que inicialmente el Banco efectúa a través de su plataforma telefónica de cobranza, y de no prosperar esta gestión, se interpondrá una demanda ejecutiva con el mérito del pagaré ante los Tribunales de Justicia. El Banco efectúa la cobranza directamente, por medio de abogados externos y/o a través de su filial Servicios de Normalización y Cobranza -Normaliza S.A.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>   
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column />
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Avalista, fiador y codeudor solidario.</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Recibo:</fo:inline> declaro haberme impuesto del contenido de esta carta y haber recibido con esta misma fecha el original de la misma.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="20cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.3mm" color="black"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Copia Cliente</fo:block>              
            </fo:flow>
            <!--   AQUI TERMINA COPIA CLIENTE  -->            
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>