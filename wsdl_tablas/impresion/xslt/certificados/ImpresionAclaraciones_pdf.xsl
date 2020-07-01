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
          <fo:block padding-top="13pt" text-align="center" space-after.optimum="15pt" line-height="24pt" font-family="sans-serif" font-size="18pt" text-decoration="underline"> ACLARACIÓN DE DOCUMENTO </fo:block>
          <fo:block padding-left="3pt" text-align="left"  font-family="sans-serif" font-size="11pt" > Santiago, <xsl:value-of select='dia_actual'/> de <xsl:value-of select='mes_actual'/> del <xsl:value-of select='anho_actual'/> </fo:block>
		  <fo:block padding-right="3pt" text-align="right"  font-family="sans-serif" font-size="11pt" > Número Confirmatorio :</fo:block>
		  <fo:block padding-right="3pt" text-align="right"  font-family="sans-serif" font-size="11pt" > <xsl:value-of select='numero_conformacion'/> </fo:block>
          <fo:block padding-top="8pt" text-align="left" font-weight="bold" font-family="sans-serif" font-size="11pt" > Señores </fo:block>
          <fo:block text-align="left" font-weight="bold" font-family="sans-serif" font-size="11pt" > BOLETIN DE INFORMACIÓN COMERCIALES </fo:block>
		  <fo:block text-align="left" font-weight="bold" font-family="sans-serif" font-size="11pt" text-decoration="underline" > Presente </fo:block>
          <fo:block padding-top="15pt" text-align="right"  font-family="sans-serif" font-size="11pt" > Ref.: Aclaración de Documentos(s)</fo:block>

          <fo:block padding-top="20pt" text-align="justify"> Ponemos en su conocimiento que, <xsl:value-of select='glosa_consumo'/>, pertenecientes a el/la señor(a) <xsl:value-of select='nombres'/>
          <xsl:value-of select='apellidos'/>, Rut, <xsl:value-of select='rut'/>, se encuentra(n) cancelado(s) en esta institución a la fecha.</fo:block>

	<fo:block padding-top="25pt">		
      <fo:table >
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>
  <fo:table-column column-width="2.3cm"/>

  <fo:table-header>
    <fo:table-row>
      <fo:table-cell >
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Nº Dcto
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Monto
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
         Fec Prt/Aclar.
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
       Boletín Nº
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Página Nº
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Fecha Cancelación
        </fo:block>
      </fo:table-cell>
	  <fo:table-cell>
        <fo:block font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
       Nomina Nº
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-header>

  
  <fo:table-body>
    <xsl:for-each select="documentos/documento">
	    <fo:table-row>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='nmro_doc'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='moneda_monto'/><xsl:value-of select='monto_final'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='fecha_aclar'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='boletin'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='paginas'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='fecha_cancel'/>
		</fo:block>
	      </fo:table-cell>
		  <fo:table-cell padding-top="10pt">
		<fo:block text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='nomina'/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
    </xsl:for-each>        
  </fo:table-body>
 </fo:table>
</fo:block>


          <fo:block text-align="justify" padding-top="50pt"> Sirvase efectuar la(s) aclaración(es) correspondiente(s). </fo:block>
		  <fo:block text-align="justify" padding-top="15pt"> Saluda Atte. a Ud. </fo:block>

<fo:table >
  <fo:table-column/>
  <fo:table-column column-width="6cm"/>
          <fo:table-body>
              <fo:table-row>
              <fo:table-cell>1</fo:table-cell>
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
