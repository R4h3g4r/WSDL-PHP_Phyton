<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="comprobante">
  <xsl:variable name="imagen"><xsl:value-of select="rutaImagen"/>sello_bci.gif</xsl:variable>
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
          <fo:region-body margin-top="3cm"/>
          <fo:region-before extent="3cm"/>
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
          <fo:region-body margin-top="2.5cm"/>
          <fo:region-before extent="2.5cm"/>
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



		<fo:block 
			border-top="dashed 0.5pt #FBD743"
			border-bottom="dashed 0.5pt #FBD743"
			border-right="dashed 0.5pt #FBD743"
			border-left="dashed 0.5pt #FBD743"
			padding-top="3pt" 
			text-align="center" 
			space-after.optimum="15pt" 
			line-height="24pt" 
			font-family="sans-serif" 
			font-size="12pt"> 
			
			<fo:table 		
			text-align="center">
			<fo:table-column column-width="14cm"/>
			<fo:table-column column-width="4cm"/>
			<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-top="5pt">		
							<fo:block margin-left="45pt">Comprobante</fo:block >
							<fo:block 
								text-align="center" 
								font-size="9pt"
								margin-left="25pt">
								Estimado Cliente, UD. será contactado a la brevedad								
								por uno de nuestros asistentes para activar el servicio.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="5pt">		
							<fo:external-graphic width="1.9cm"  height="1.9cm" left="10cm" text-align="right" position="relative" src="{$imagen}"/>
						</fo:table-cell>
					</fo:table-row>			
			</fo:table-body>
		</fo:table>
		</fo:block>

	<fo:block>
		Datos:
	</fo:block>
	<fo:block 
		border-top="dashed 0.5pt #000000"
		border-bottom="dashed 0.5pt #000000"
		border-right="dashed 0.5pt #000000"
		border-left="dashed 0.5pt #000000"
		padding-top="25pt"
		padding-left="25pt"
		padding-bottom="25pt"
		margin-left="5pt"
		margin-right="5pt"
		vertical-align="right">
	
		<fo:table 		
			margin-left="35pt"
			margin-right="5pt"
			padding-left="0.5pt"
			text-align="center">
			<fo:table-column column-width="1cm"/>
			<fo:table-column column-width="7cm"/>
			<fo:table-column column-width="7cm"/>
			

			<fo:table-body margin-left="0pt">
					<fo:table-row>
					<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#E5E5E5">
								
							</fo:block>
					</fo:table-cell>
						<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#E5E5E5">
								Número :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" background-color="#E5E5E5" font-weight="">
								<xsl:value-of select='numero'/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
					<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" background-color="#F9F9F9">
								
							</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#F9F9F9">
								Nombre Contrato :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" font-weight="" background-color="#F9F9F9">
								<xsl:value-of select='nombreContrato'/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>					
					<fo:table-row>
					<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#E5E5E5">
								
							</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#E5E5E5">
								Fecha :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" background-color="#E5E5E5" font-weight="">
								<xsl:value-of select='fecha'/>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>			
					<fo:table-row>
					<fo:table-cell  padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" background-color="#F9F9F9">
								
							</fo:block>
					</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="right" vertical-align="middle" font-size="9pt" background-color="#F9F9F9">
								Autorizado por :
							</fo:block>
						</fo:table-cell>
						<fo:table-cell padding-top="5pt">
							<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt" font-weight="" background-color="#F9F9F9">
								<xsl:value-of select='autorizado'/>
							</fo:block>
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
