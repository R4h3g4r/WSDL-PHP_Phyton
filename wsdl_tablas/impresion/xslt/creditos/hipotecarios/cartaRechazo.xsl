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
            </fo:static-content>
            <fo:flow flow-name="xsl-region-body">
               <fo:block font-family="Verdana,Helvetica" font-color="#686868" font-size="18pt" font-weight="100" text-align="">Carta de Rechazo</fo:block>
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
                              Informamos a usted que su solicitud de aprobación para acceder a un crédito hipotecario vivienda de UF <xsl:value-of select="valorViviendaUF" /> , ha sido rechazada por el Banco Crédito e Inversiones. 
							  Sugerimos dirigirse a nuestras sucursales si desea entregarnos documentación adicional para una nueva evaluación 
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