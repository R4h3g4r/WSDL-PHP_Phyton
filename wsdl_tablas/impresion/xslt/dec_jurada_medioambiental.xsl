<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/04/26 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="dec_jurada_medioambiental">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="20mm" margin-right="20mm"><fo:region-body/>
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

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="center" ><fo:inline font-weight="bold">DECLARACIÓN JURADA MEDIOAMBIENTAL</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" font-weight="bold">Señores</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" font-weight="bold">Banco BCI</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">De nuestra consideración:</fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Confirmamos a Uds.:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">&#160;  1.   Que nuestra empresa (persona)  no mantiene litigios ni demandas pendientes con  las autoridades</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"><fo:leader leader-pattern="space" leader-length="7mm"/>medioambientales  ni laborales que  hayan trasgredido la legislación correspondiente, ni &#160;tampoco</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"><fo:leader leader-pattern="space" leader-length="7mm"/>mantenemos  pendientes deudas ni litigios  en curso, con las  Instituciones &#160;Previsionales ni de</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"><fo:leader leader-pattern="space" leader-length="7mm"/>Salud.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">&#160;  2.   Que los fondos a recibir por nuestra empresa (persona) se solicitan para financiar la operación /</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"><fo:leader leader-pattern="space" leader-length="7mm"/>proyectos que están acorde con la legislación medioambiental y laboral vigente actualmente en</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"><fo:leader leader-pattern="space" leader-length="7mm"/>Chile.</fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Saluda atentamente a Ud.</fo:block>
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
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>               
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Nombre:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">RUT:<fo:leader leader-pattern="space" leader-length="6mm"/><fo:inline font-weight="bold"><xsl:value-of select="rutCompletoCliente" /></fo:inline></fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">------------------------------------------------------------------------------------------------------------------------------------------------</fo:block>            
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="14pt" text-align="center" ><fo:inline font-weight="bold">USO EXCLUSIVO DEL BANCO</fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Numero de la Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="numeroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Monto:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="simboloMoneda" /><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="montoCredito" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">Plazo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="plazoCredito" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">meses</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify">RUT:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="rutCompletoCliente" /></fo:inline></fo:block>
	          </fo:flow>
	          </fo:page-sequence>              
            <!--   AQUI TERMINA COPIA BANCO  -->  
            
        </fo:root>
    </xsl:template>
</xsl:stylesheet>