<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <!-- xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' / -->


    <xsl:template match="SolicitudDeCreditoReducida">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

        <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">
           
              <fo:table border-collapse="collapse">
	   
             <fo:table-column column-width="70mm" />
             <fo:table-column column-width="120.9mm" />
	         <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell >
                         <fo:block vertical-align="middle">
							 <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                	 <xsl:attribute name="src">
                                         	 <xsl:value-of select="SolicitudDeCreditoReducidaVO/imagePath"/>
                                    	 </xsl:attribute>
                                     </fo:external-graphic>                                    
                         </fo:block>
                         <fo:block font-family="Helvetica" font-size="6pt" text-align="left" vertical-align="middle" line-height="4.5mm" >LA11</fo:block>

                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm"  font-weight="bold" ></fo:block>                         
                       </fo:table-cell>                      
                   </fo:table-row>
                    <fo:table-row>
                      <fo:table-cell >
                         <fo:block vertical-align="middle">                               
                         </fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm"  font-weight="bold" >SOLICITUD DE CREDITO</fo:block>          
                         <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block>               
                       </fo:table-cell>                      
                   </fo:table-row>                   
                </fo:table-body>
             </fo:table>
             
             <fo:table border-collapse="collapse">

             <fo:table-column column-width="110mm" />
             <fo:table-column column-width="28.9mm" />
             <fo:table-column column-width="52mm" />
                <fo:table-body>
                   <fo:table-row>
                      <fo:table-cell >
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm"  font-weight="bold" ></fo:block>
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>                             
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" >N°OPERACION</fo:block>
                          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" >OFICINA</fo:block>
                          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" >FECHA</fo:block>
                          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" >EJECUTIVO</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
		          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" ><xsl:value-of select="SolicitudDeCreditoReducidaVO/numeroCredito"/></fo:block>
		          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" ><xsl:value-of select="SolicitudDeCreditoReducidaVO/oficina" /></fo:block>
		          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" ><xsl:value-of select="SolicitudDeCreditoReducidaVO/fecha" /></fo:block>
		          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="left" vertical-align="middle" line-height="4.5mm" ><xsl:value-of select="SolicitudDeCreditoReducidaVO/ejecutivo" /></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm" border-top="1.5pt solid black" border-left="1.5pt solid black" border-right="1.5pt solid black" border-bottom="1.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >DATOS DEL SOLICITANTE</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><xsl:value-of select="SolicitudDeCreditoReducidaVO/nombreCliente" /></fo:block>     	          
	      	       </fo:table-cell>
	            </fo:table-row>
	             </fo:table-body>
              </fo:table>
	          
	          <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Nombre o razón social del cliente</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.49cm"/>
	      	 <fo:table-column column-width="3cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2.8cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="3.3cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/domicilioCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/comunaCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/ciudadCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fonoCliente" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm"/>
	      	 <fo:table-column column-width="0.49cm"/>
	      	 <fo:table-column column-width="3cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2.8cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="3.3cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Domicilio</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Comuna</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Ciudad</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fono</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
                            
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="6cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/rutCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/rutCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fechaNacimientoCliente" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/cuentaCorrienteCliente" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="6cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >RUT.</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Cédula Nacional de Identidad</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fecha de Nacimiento</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Cta. Cte. N°</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block>              
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm" border-top="1.5pt solid black" border-left="1.5pt solid black" border-right="1.5pt solid black" border-bottom="1.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >ANTECEDENTES DEL CREDITO</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block>
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="2.8cm"/>
	      	 <fo:table-column column-width="6cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="2.045cm"/>
	      	 <fo:table-column column-width="4.7cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fechaCurse" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/tipoCredito" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/montoSolicitado" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm"/>
	      	 <fo:table-column column-width="2.8cm"/>
	      	 <fo:table-column column-width="6cm"/>
	      	 <fo:table-column column-width="2.045cm"/>
	      	 <fo:table-column column-width="4.7cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fecha Curse</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Tipo de Crédito</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Monto Solicitado</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="1.59cm"/>
	      	 <fo:table-column column-width="9cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/formaDePago" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/garantiaOfrecida" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm"/>
	      	 <fo:table-column column-width="1.59cm"/>
	      	 <fo:table-column column-width="9cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Forma de Pago</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Garantía Ofrecida</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block> 
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="13cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="1.09cm"/>
	      	 <fo:table-column column-width="5.5cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/objetoDelCredito" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="13cm"/>
	      	 <fo:table-column column-width="1.09cm"/>
	      	 <fo:table-column column-width="5.5cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Objeto del Crédito</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse">
	      	      
 	      	 <fo:table-column column-width="2.7cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="1.5cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2.2cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2cm"  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>	 
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fechaPrimerVenc" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/vencimiento" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/diaDePago" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/numero" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/tasaSpread" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/tasaTotal" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="2.7cm"  />
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2cm"/>
	      	 <fo:table-column column-width="0.4cm"/>
	      	 <fo:table-column column-width="1.5cm"/>
	      	 <fo:table-column column-width="0.4cm"/>
	      	 <fo:table-column column-width="2.2cm"/>
	      	 <fo:table-column column-width="0.4cm"/>
	      	 <fo:table-column column-width="2.2cm"/>
	      	 <fo:table-column column-width="0.4cm"/>
	      	 <fo:table-column column-width="2.2cm"/>	 
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fecha 1er. Vcto.</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Vencimiento(1 solo vcto.)</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Día de Pago</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Número</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Tasa Spread</fo:block>
	      	       </fo:table-cell>
	      	        <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Tasa Total</fo:block>
	      	       </fo:table-cell>
	      	        <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >DL.3475</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="10.2cm"  />
	      	 <fo:table-column column-width="1.5cm"/>
	      	 <fo:table-column column-width="7.4cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="right" vertical-align="middle" line-height="4.5mm" margin-right="3mm">(Créd. Cuotas)</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/>Cuotas</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="10mm"/>(Inicial)</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
                          
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm" border-top="1.5pt solid black" border-left="1.5pt solid black" border-right="1.5pt solid black" border-bottom="1.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >DATOS DEL AVAL</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm" line-height="0.5mm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/nombreAval" /></fo:block>     	          
	      	       </fo:table-cell>
	            </fo:table-row>
	             </fo:table-body>
              </fo:table>
	          
	          <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Nombre Completo del Aval</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.49cm"/>
	      	 <fo:table-column column-width="3cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2.8cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="3.3cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/domicilioAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/comunaAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/ciudadAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fonoAval" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="9cm"/>
	      	 <fo:table-column column-width="0.49cm"/>
	      	 <fo:table-column column-width="3cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="2.8cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="3.3cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Domicilio</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Comuna</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Ciudad</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fono</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
                            
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="6cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/rutAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/rutAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/fechaNacimientoAval" /></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="left" vertical-align="middle" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="SolicitudDeCreditoReducidaVO/cuentaCorrienteAval" /></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="4cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="6cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4cm"/>
	      	 <fo:table-column column-width="0.5cm"/>
	      	 <fo:table-column column-width="4.1cm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >RUT.</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Cédula Nacional de Identidad</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Fecha de Nacimiento</fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Cta. Cte. N°</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Crédito e Inversiones, me comprometo a conservar incólume el patrimonio declarado en el o los estados de situación y me obligo a comunicarles por escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o extinguir mis cauciones o el valor declarado de mi patrimonio.</fo:block><fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Faculto expresamente al BANCO DE CREDITO E INVERSIONES para cargar en cualquiera de mi(s) cuenta(s) corriente(s) las sumas adeudadas provenientes del préstamo solicitado incluyendo capital, intereses y gastos, como así también, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s) cuenta(s) corriente(s), aplicar a su pago cualquier otro crédito a mi favor que exista en el BANCO, ya sean saldos en cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI Administradora de Fondos Mutuos S.A. etc.. Asimismo declaro bajo juramento que todos los antecedentes presentados son fidedignos y que conozco el texto del artículo 160 de la Ley General de Bancos.</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Autorizo al Banco de Crédito e Inversiones para pedir para su uso exclusivo. en los términos del articulo 4°
de la ley 19.628, a la Administradora de Fondos de Pensiones donde efectúe mis cot ciones
previsionales, y autorizo asimismo a esta, para entregar directamente al Banco o a traves de Previred SA.,
información sobre las aludidas cotizaciones de los últimos 12 meses precedentes a cualquiera solicitud de
cualquier tipo de crédito o de otro servicio bancario para los que tal información y la que derive de aquella.
pueda ser de utilidad para evaluar el otorgamiento del préstamo o servicio, sea de la naturaleza que fuere.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>	            
	      	 </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
            <fo:table border-collapse="collapse">  
            <fo:table-column column-width="19.59cm"/>
	           <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm">1 - 2</fo:block>
                      </fo:table-cell>                      
                   </fo:table-row>
               </fo:table-body>
             </fo:table>
              
              
              
        </fo:flow>
     </fo:page-sequence>
     
     <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">
           
              <fo:table border-collapse="collapse">
	   
	      <fo:table-column column-width="195.9mm"/>
	         <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell >
                         <fo:block vertical-align="middle">
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                	 <xsl:attribute name="src">
                                         	 <xsl:value-of select="SolicitudDeCreditoReducidaVO/imagePath"/>
                                    	 </xsl:attribute>
                                     </fo:external-graphic>                                    
                         </fo:block>
                         <fo:block font-family="Helvetica" font-size="6pt" text-align="left" vertical-align="middle" line-height="4.5mm" >LA11</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="195.9mm"/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >En este acto otorgamos mandato mercantil especial y gratuito al Banco de Crédito e
Inversiones para que en su nombre y representacion, incluso con facultades expresas para autocontratar y
obrando a través de cualquiera de sus apoderados o en quien el Banco delegue, suscribe ylo complete uno
o más pagarés, y reconozca deudas en bene?cio y a la orden del Banco de Crédito e Inversiones. todo ello
con el propósito de documentar en esta forma el o los saldos deudores. por los montos de capital,
intereses, costas y comisiones, que se originen con motivo del cobro de boletas de garantia tomadas por el
suscrito y emitidas por el Banco. al amparo de la Linea de Crédito vigente. El o los pagarés que se
suscriben en virtud de este mandato podrán extenderse a la vista o a plazo y en caso de no pago
devengarán la tasa de interés maxima convencional para operaciones de crédito de dinero en moneda
nacional. Asimismo. por el presente instrumento facultamos al Banco de Crédito e Inversiones. 
para que. en conformidad a lo previsto en el Articulo 11 y 107 de la Ley 18092 del año 1982
sobre Letra de Cambio y Pagaré, incorpore en el o los instrumentos mercantiles que documenten los
créditos otorgados en virtud de esta solicitud de crédito o el Contrato de Apertura de Linea de Credito
destinada a cubrir eventuales pagos de boletas de garantía. la totalidad de las menciones exigidas por la
Ley, como por ejemplo, su fecha de emisión. de vencimiento. la cantidad adeudada, la tasa de interés u otras.
determinando en el nuestra obligación de pagar la cantidad de dinero solicitada en este acto o aquella que
en definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Líberamos al
Banco de Crédito e Inversiones de la obligación de rendir cuenta de su gestión.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>	               	            
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Faculto (facultamos)  al Banco para aceptar instrucciones o solicitudes que yo imparta a través medios remotos, especialmente vía red internet u otros, vía electrónica, satelital o telefónica, que estén disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye manifestación expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se presta el servicio, como también de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y de la información contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia física, asimilando como medio válido de autorización cuando así lo requiera, a la firma electrónica, mi clave secreta que es confidencial, personal e intransferible.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Reconozco(reconocemos) haber recibido por parte del Banco de Crédito e Inversiones información detallada de las comisiones que el Banco cobra por concepto de otorgamiento de crédito y procesos asociados a éste, como en el caso de reprogramación, prórroga y reestructuración entre otros.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Declaro (Declaramos) haber recibido información detallada y aceptar que existen recargos en caso de mora o simple retardo en el pago de la obligación de crédito de dinero de que da cuenta la presente solicitud y además por concepto de la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se indica más adelante, los cuales serán cobrados por la empresa "Servicios de Normalización y Cobranza -Normaliza S.A." o por aquella que el BANCO designare en su oportunidad la que actuará en nombre y en representación e interés del BANCO en las gestiones de cobranza extrajudicial.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >La cobranza extrajudicial se efectuará en horario de 8:00 a 20:00 horas.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Declaro (Declaramos) conocer, y desde luego acepto (aceptamos), que para la empresa designada al efecto pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa, antecedentes tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén asociados a éstos, como de los antecedentes comerciales de los deudores, tales como, nombres y apellidos, cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etcétera.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Los honorarios y gastos por las gestiones de cobranza ascenderán a los porcentajes que seguidamente se indican, aplicados sobre el total de la deuda, o la cuota vencida según el caso, conforme a la siguiente escala progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes indicados se aplicarán como sigue: Créditos de Consumo/Tarjetas de Crédito - Persona Naturales: Después de transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la obligación. Créditos Comerciales - General/Tarjetas De Crédito - Personas Jurídicas: Después de transcurridos 5 días corridos de atraso (mora) desde el día del vencimiento de la obligación.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	            <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Las tarifas anteriores podrán ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de pago exceda de un año, siempre que tales cambios se avisen con una anticipación mínima de dos períodos de pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la fiel interpretación de la reglamentación legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y además normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por concepto de la cobranza extrajudicial de los créditos impagos, incluyendo honorarios y costas podrán ser cobrados con cargo directo en alguna de la (s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s) mantenida(s) por mí (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u obligación morosa o impaga.</fo:block>
	      	          <fo:block ><fo:leader leader-pattern="space" leader-length="10cm"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
             
             <fo:table border-collapse="collapse">
             <fo:table-column column-width="85.9mm"/>
             <fo:table-column column-width="110mm"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="left"><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1cm">Nombre y Firma Aval</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" >Nombre y Firma(s) Solicitante o Representante Legal</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table> 

           
              
        </fo:flow>
     </fo:page-sequence>
     
     <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">
           
         <fo:table border-collapse="collapse">
	   
	      <fo:table-column column-width="9.8cm"/>
	      <fo:table-column column-width="9.79cm"/>
	         <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell >
                         <fo:block vertical-align="middle">
				     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                	 <xsl:attribute name="src">
                                         	 <xsl:value-of select="SolicitudDeCreditoReducidaVO/imagePath"/>
                                    	 </xsl:attribute>
                                     </fo:external-graphic>                                   
                         </fo:block>
                         <fo:block font-family="Helvetica" font-size="6pt" text-align="left" vertical-align="middle" line-height="4.5mm" >LA11</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm" >Nº de Operación: <xsl:value-of select="SolicitudDeCreditoReducidaVO/numeroCredito"/></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm" >Fecha de suscripción: <xsl:value-of select="SolicitudDeCreditoReducidaVO/fechaSuscripcion" /></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm" >Monto: <xsl:value-of select="SolicitudDeCreditoReducidaVO/montoSolicitado" /></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm" >Deudor: <xsl:value-of select="SolicitudDeCreditoReducidaVO/nombreCliente" /></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm" >RUT: <xsl:value-of select="SolicitudDeCreditoReducidaVO/rutCliente" /></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             
             <fo:table border-collapse="collapse">
	   
	      <fo:table-column column-width="195.9mm"/>
	         <fo:table-body>
                    <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold" line-height="4.5mm">VISACION CLIENTE</fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.5mm" color="black"/></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             
         <fo:table border-collapse="collapse">
	   
	       <fo:table-column column-width="195.9mm"/>
	          <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.5mm" color="black"/></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
            
         <fo:table border-collapse="collapse">
             <fo:table-column column-width="10.95cm"/>
             <fo:table-column column-width="9cm"/>
	         <fo:table-body>
                   <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" font-weight="bold" line-height="4.5mm">Resolución / Recomendación:</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" font-weight="bold" line-height="4.5mm">Monto Aprobado $</fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             
         <fo:table border-collapse="collapse">
	   
	       <fo:table-column column-width="195.9mm"/>
	          <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block><fo:leader leader-length="195.9mm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
         <fo:table border-collapse="collapse">
	   
	       <fo:table-column column-width="4cm"/>
	       <fo:table-column column-width="5.975cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	       <fo:table-column column-width="5.975cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	       <fo:table-column column-width="4cm"/>
	          <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm">Ej.Comercial</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm">Jefe Oficina</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="4.5mm"></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             <fo:table border-collapse="collapse">
	   
	       <fo:table-column column-width="4cm"/>
	       <fo:table-column column-width="5.975cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	       <fo:table-column column-width="5.975cm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.5pt solid black"/>
	       <fo:table-column column-width="4cm"/>
	          <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="9mm"></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="9mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="9mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" vertical-align="middle" line-height="9mm"></fo:block>
                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
             <fo:table border-collapse="collapse">
	   
	       <fo:table-column column-width="19.59cm"/>
	          <fo:table-body>
                  <fo:table-row>
                      <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm">V° B°  Fecha  <!--<xsl:value-of select="SolicitudDeCreditoReducidaVO/fecha" />--></fo:block>
                          <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm">2 - 2</fo:block>
                      </fo:table-cell>                      
                   </fo:table-row>
                </fo:table-body>
             </fo:table>
             
        </fo:flow>
     </fo:page-sequence>  

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
