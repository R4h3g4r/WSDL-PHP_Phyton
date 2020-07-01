<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">

    <xsl:template match="tabla">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- layout for the first page -->
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-height="29.7cm"
                    page-width="21cm"
                    margin-top="1cm"
                    margin-bottom="2cm"
                    margin-left="1.5cm"
                    margin-right="1.5cm" border="thick solid red">
                    <fo:region-body margin-top="0cm"/>
                    <fo:region-before extent="0cm"/>
                    <fo:region-after extent="0cm"/>
                </fo:simple-page-master>                
                <fo:page-sequence-master master-name="basicPSM" >
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="basicPSM">
	    <fo:flow flow-name="xsl-region-body">
	    
	 <fo:block font="9pt Helvetica" text-align="center" font-weight="bold" padding-top="20pt" space-after="5mm">
	 Claves Entregadas
	 </fo:block>    
	
	<fo:table>
      <fo:table-column column-width="20mm"/>  
      <fo:table-column column-width="30mm"/>
      <fo:table-column column-width="30mm"/>
      <fo:table-column column-width="20mm"/>
      <fo:table-column column-width="30mm"/>
      <fo:table-column column-width="30mm"/>
      <fo:table-column column-width="20mm"/>
              
     <fo:table-header>
	    <fo:table-row>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Rut</fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Nombre Cliente</fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Canal</fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Fecha Entrega</fo:block></fo:table-cell>
		   <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Usuario</fo:block></fo:table-cell>
		   <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Tipo Entrega</fo:block></fo:table-cell>
		   <fo:table-cell border-style="solid" text-align="center" display-align="center">
		   <fo:block font-size="8pt" font-family="sans-serif">Nro Serial</fo:block></fo:table-cell>		   
		</fo:table-row>
	</fo:table-header>
	<fo:table-body>
	<xsl:for-each select="fila">
		<fo:table-row>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='rut'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='nombre'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='canal'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='fechaEntrega'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='usuario'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='tipoEntrega'/></fo:block></fo:table-cell>
		  <fo:table-cell border-style="solid" text-align="center" display-align="center">
		    <fo:block font-size="8pt" font-family="sans-serif"><xsl:value-of select='serial'/></fo:block></fo:table-cell>		    
		</fo:table-row>
		</xsl:for-each>
	 </fo:table-body>
    </fo:table>
    </fo:flow>
  </fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>