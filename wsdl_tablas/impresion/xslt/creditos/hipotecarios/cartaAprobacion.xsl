<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
   <xsl:variable name="lineas">#CCCCCC</xsl:variable>
   <xsl:variable name="txt">#000000</xsl:variable>
   <xsl:template match="preAprobacionComercial">
      <fo:root>
         <!-- layout for the first page -->
         <fo:layout-master-set>
            <!-- layout for the first page -->
            <fo:simple-page-master master-name="first" page-height="21cm" page-width="19cm" margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm" border="thick solid red">
               <fo:region-body margin-top="0cm" />
               <fo:region-before region-name="xsl-region-before" extent="5in" />
               <fo:region-after region-name="xsl-region-after" extent="0.8in" />
            </fo:simple-page-master>
            <fo:page-sequence-master master-name="basicPSM">
               <fo:repeatable-page-master-alternatives>
                  <fo:conditional-page-master-reference master-reference="first" page-position="first" />
               </fo:repeatable-page-master-alternatives>
            </fo:page-sequence-master>
         </fo:layout-master-set>
         <fo:page-sequence master-reference="basicPSM">
            <fo:static-content flow-name="xsl-region-after">
               <fo:block space-after="1mm">
                  <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm" />
               </fo:block>
               <!-- Separador -->
               <fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">Banco Crédito Inversiones</fo:block>
               <fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">Si Ud. requiere la pre aprobación de un Crédito Hipotecario para fines de postulación al Subsidio Habitacional debe comunicarse con su ejecutivo o concurrir en forma presencial a una de nuestras sucursales.</fo:block>
            </fo:static-content>
            <fo:flow flow-name="xsl-region-body">
               <fo:block font-family="Verdana,Helvetica" font-color="#686868" font-size="18pt" font-weight="100" text-align="">Carta de Aprobación</fo:block>
               <fo:block font-family="Verdana,Helvetica" font-color="#686868" font-size="10pt" font-weight="100" text-align="">
                  Fecha
                  <xsl:value-of select="fecha" />
               </fo:block>
               <fo:table font-family="Verdana,Helvetica" padding-top="5mm">
                  <fo:table-column column-width="140mm" />
                  <fo:table-body>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" number-columns-spanned="4">
                           <fo:block text-align="left" font-size="18pt" padding-bottom="1pt" font-weight="bold">
                              Estimado
                              <xsl:value-of select="nombreCompleto" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" number-columns-spanned="4">
                           <fo:block text-align="left" font-size="10pt" padding-bottom="1pt" font-weight="bold">
                              Rut:
                              <xsl:value-of select="rut" />
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" number-columns-spanned="4">
                           <fo:block text-align="justify" font-size="10pt" padding-bottom="1pt" font-weight="100">
                              Informamos a usted que hemos evaluado su solicitud y le informamos que tiene una Pre-Aprobación vigente en
                              <fo:inline font-weight="bold">
                                 <xsl:text>Banco de Crédito e Inversiones</xsl:text>
                              </fo:inline>
                              para acceder a un crédito hipotecario vivienda máximo de UF <xsl:value-of select="creditoUF" />, para financiar 
								  una vivienda de UF <xsl:value-of select="valorViviendaUF" />, a un plazo máximo de <xsl:value-of select="plazoMaximo" /> años y con un porcentaje de financiamiento hasta  <xsl:value-of select="porcentajeFinanciamiento" />
								  respecto del valor de la propiedad.
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
                     <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" number-columns-spanned="4">
                           <fo:block text-align="justify" font-size="10pt" padding-bottom="1pt" font-weight="100">
                              Esta Pre aprobación tendrá una vigencia de 90 días corridos desde la fecha de su emisión y no
                              <fo:inline font-weight="bold">
                                 <xsl:text>genera obligación</xsl:text>
                              </fo:inline>
                              al Banco de Crédito e Inversiones
                              <fo:inline font-weight="bold">
                                 <xsl:text>de aprobar definitivamente el crédito al solicitante individualizado precedentemente.</xsl:text>
                              </fo:inline>
                           </fo:block>
                        </fo:table-cell>
                     </fo:table-row>
					 <fo:table-row>
                        <fo:table-cell padding-top="1mm" padding-bottom="1mm" number-columns-spanned="4">
                           <fo:block text-align="justify" font-size="10pt" padding-bottom="1pt" font-weight="100">
						   <xsl:value-of select="informacionPreAprobacion" />
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