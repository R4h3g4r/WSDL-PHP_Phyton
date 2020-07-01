<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="certificado">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <!-- layout for the first page -->
        <fo:simple-page-master master-name="first"
                  page-height="29.7cm"
                  page-width="21cm"
                  margin-top="1cm"
                  margin-bottom="2cm"
                  margin-left="2.5cm"
                  margin-right="2.5cm" border="thick solid red">
          <fo:region-body margin-top="1cm"/>
          <fo:region-before extent="1cm"/>
          <fo:region-after extent="1.5cm"/>
        </fo:simple-page-master>
        <!-- layout for the other pages -->
        <fo:simple-page-master master-name="rest"
                  page-height="29.7cm"
                  page-width="21cm"
                  margin-top="1cm"
                  margin-bottom="2cm"
                  margin-left="2.5cm"
                  margin-right="2.5cm" border="thick solid red">
          <fo:region-body margin-top="1.5cm"/>
          <fo:region-before extent="1.5cm"/>
          <fo:region-after extent="1.5cm"/>
        </fo:simple-page-master>
        <fo:page-sequence-master master-name="basicPSM" >
          <fo:repeatable-page-master-alternatives>
            <fo:conditional-page-master-reference master-reference="first"
          page-position="first" />
            <fo:conditional-page-master-reference master-reference="rest"
          page-position="rest" />
            <!-- recommended fallback procedure -->
            <fo:conditional-page-master-reference master-reference="rest" />
          </fo:repeatable-page-master-alternatives>
        </fo:page-sequence-master>
      </fo:layout-master-set>
      <!-- end: defines page layout -->
      <!-- actual layout -->
      <fo:page-sequence master-reference="basicPSM">
        <fo:flow flow-name="xsl-region-body">
        <fo:external-graphic width="100px">
			     <xsl:attribute name="src">
				      <xsl:value-of select='urlLogo'/>
			     </xsl:attribute>
			   </fo:external-graphic>
          <fo:block padding-top="13pt" text-align="center" space-after.optimum="15pt" line-height="24pt" font-family="sans-serif" font-size="18pt" text-decoration="underline">CERTIFICADO</fo:block>

          <fo:block padding-top="20pt" text-align="justify">El Banco de Crédito e Inversiones 
           deja constancia que, el/la señor(a): <fo:inline font-weight="bold"><xsl:value-of select='nombres'/></fo:inline>
           <xsl:text>&#160;</xsl:text><fo:inline font-weight="bold"><xsl:value-of select='apellidos'/></fo:inline>, 
           Rol Único Tributario Nº <fo:inline font-weight="bold"><xsl:value-of select='rut'/></fo:inline>,
           mantiene a la fecha la(s) siguiente cuenta(s) vigente(s), en esta institución. </fo:block>

	<fo:block padding-top="25pt">		
      <fo:table >
  <fo:table-column column-width="5cm"/>
  <fo:table-column column-width="5cm"/>
  <fo:table-column column-width="5cm"/>

  <fo:table-header>
    <fo:table-row>
      <fo:table-cell >
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Tipo Cuenta
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Cuenta Nº
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
         Fecha Apertura
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-header>

    <fo:table-body>
	<xsl:for-each select="cuentas/cuenta">
	    <fo:table-row>
		<fo:table-cell padding-top="5pt">
		    <fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
          <xsl:value-of select='tipo_cuenta'/>
		    </fo:block>
		</fo:table-cell>
		<fo:table-cell padding-top="5pt">
		    <fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
          <xsl:value-of select='nro_cuenta'/>
		    </fo:block>
		</fo:table-cell>
		<fo:table-cell padding-top="5pt">
		    <fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		    <xsl:value-of select='fecha_apertura'/>
		    </fo:block>
		</fo:table-cell>
	    </fo:table-row>
	</xsl:for-each>
  </fo:table-body>
 </fo:table>
</fo:block>


          <fo:block text-align="justify" padding-top="50pt">Se extiende el presente certificado a petición del interesado,
		   para los fines que estime conveniente, sin ulterior responsabilidad para este Banco. </fo:block>
		  
		   <fo:block text-align="justify" padding-top="30pt">Santiago, <xsl:value-of select='dia_actual'/> de
		   <xsl:value-of select='mes_actual'/> de <xsl:value-of select='anho_actual'/></fo:block>
		  

    
<fo:table >
  <fo:table-column/>
  <fo:table-column column-width="6cm"/>
          <fo:table-body>
              <fo:table-row>
              <fo:table-cell></fo:table-cell>
              <fo:table-cell>
                  <fo:block padding-top="20pt" text-align="center" font-family="sans-serif" font-size="9pt">
        <fo:external-graphic  width="140px" scaling="uniform">
                <xsl:attribute name="src">
                <xsl:value-of select='urlFirma'/>
                </xsl:attribute>
              </fo:external-graphic>
        <fo:block font-size="10pt"><xsl:value-of select='nombreFirma'/></fo:block>
        <fo:block><xsl:value-of select='textoFirma1'/></fo:block>
        <fo:block><xsl:value-of select='textoFirma2'/></fo:block>
            </fo:block>
              </fo:table-cell>
              </fo:table-row>
    </fo:table-body>
</fo:table>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
