<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="comprobante">
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
  
  <fo:block padding-top="10pt">	
  <fo:table >  
  <fo:table-column column-width="10cm"/>
  <fo:table-column column-width="15cm"/>
  
  <fo:table-header>
    <fo:table-row>    
       <fo:table-cell >
          <fo:block padding-top="5pt" text-align="left">
               <!--<fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
                   <xsl:attribute name="src">
                   url('<xsl:value-of select="/comprobante/imgPathLogo" />
                   <xsl:text disable-output-escaping="yes">logo_bci.JPG</xsl:text>')
                   </xsl:attribute>
               </fo:external-graphic>  -->     
          </fo:block>
       </fo:table-cell>  
       <fo:table-cell >
      	 <fo:block padding-top="5pt" text-align="rigth" font-family="sans-serif" font-size="15pt" >Comprobante de Pagos </fo:block>
       </fo:table-cell>                      
    </fo:table-row>    
  </fo:table-header> 
    
  <fo:table-body>             
  </fo:table-body>
  
 </fo:table> 
 </fo:block>
  
  <fo:block padding-top="10pt">	
  <fo:table >  
  <fo:table-column column-width=""/>
  <fo:table-column column-width=""/>  
  <fo:table-column column-width=""/> 
  <fo:table-column column-width=""/> 
  <fo:table-column column-width=""/> 
  <fo:table-column column-width=""/>   
  <fo:table-column column-width=""/> 
  <fo:table-column column-width=""/>   
  <fo:table-header>
    <fo:table-row>    
       <fo:table-cell >
          <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Cliente</fo:block> 
       </fo:table-cell>  
       <fo:table-cell >
	 <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='usuario'/></fo:block> 
       </fo:table-cell>            
       <fo:table-cell>
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Fecha</fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='fecha'/></fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Hora</fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='hora'/></fo:block>        
       </fo:table-cell>   
    </fo:table-row>    
  </fo:table-header> 
  
  <fo:table-body>                
  </fo:table-body>
  
 </fo:table> 
 </fo:block>
   
  <fo:block padding-top="25pt">	
  <fo:table >  
  <fo:table-column column-width="4.5cm"/>
  <fo:table-column column-width="4.5cm"/>  
  <fo:table-column column-width="4.5cm"/> 
  <fo:table-column column-width="4.5cm"/>   
  <fo:table-header>
    <fo:table-row>    
       <fo:table-cell >
          <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Fecha</fo:block> 
       </fo:table-cell>  
       <fo:table-cell >
	 <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='fecha_pago'/></fo:block> 
       </fo:table-cell>            
       <fo:table-cell>
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Empresa</fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='empresa_pago'/></fo:block>        
       </fo:table-cell>      
    </fo:table-row>
    <fo:table-row>    
       <fo:table-cell >
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Monto</fo:block> 
       </fo:table-cell>  
       <fo:table-cell >
    	 <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='monto_pago'/></fo:block> 
       </fo:table-cell>            
       <fo:table-cell>
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Cuenta Cargo</fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='cuentaCargo_pago'/></fo:block>        
       </fo:table-cell>      
    </fo:table-row>
    <fo:table-row>    
       <fo:table-cell >
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Nº Transaccion</fo:block> 
       </fo:table-cell>  
       <fo:table-cell >
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='numeroTransaccion_pago'/></fo:block> 
       </fo:table-cell>            
       <fo:table-cell>
         <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">Estado</fo:block>        
       </fo:table-cell>  
       <fo:table-cell>
         <fo:block border-right-width="0.5pt" text-align="justify" vertical-align="middle" font-size="10pt"><xsl:value-of select='estado_pago'/>-<xsl:value-of select='error_pago'/></fo:block>
              
       </fo:table-cell>      
    </fo:table-row>
  </fo:table-header> 
  
  <fo:table-body>                
  </fo:table-body>
  
 </fo:table> 
 </fo:block>
           
  <fo:block padding-top="25pt">		
  <fo:table >
  
  <fo:table-column column-width="5cm"/>
  <fo:table-column column-width="5cm"/>
  <fo:table-column column-width="5cm"/>  

  <fo:table-header>
  <fo:table-row>
        <fo:table-cell >
        <fo:block font-weight="bold" text-align="justify" vertical-align="middle" font-size="10pt">
        Detalle del Pago
        </fo:block>
      </fo:table-cell>            
    </fo:table-row>   
    <fo:table-row>
      <fo:table-cell >
        <fo:block padding-top="5pt" font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Codigo del Detalle
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block padding-top="5pt" font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
        Cantidad
        </fo:block>
      </fo:table-cell>
      <fo:table-cell>
        <fo:block padding-top="5pt" font-weight="bold" text-align="center" vertical-align="middle" font-size="10pt">
         Monto del Detalle
        </fo:block>
      </fo:table-cell>
    </fo:table-row>
  </fo:table-header>

  
  <fo:table-body>
    <xsl:for-each select="detalles/detalle">
	    <fo:table-row>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='codigo'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='detalle_pago'/>
		</fo:block>
	      </fo:table-cell>
	      <fo:table-cell padding-top="10pt">
		<fo:block border-right-width="0.5pt" text-align="center" vertical-align="middle" font-size="9pt">
		<xsl:value-of select='monto'/>
		</fo:block>
	      </fo:table-cell>
	    </fo:table-row>
    </xsl:for-each>        
  </fo:table-body>
  
 </fo:table>
 
</fo:block>

<fo:block padding-top="10pt" text-align="right">
       <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt">
           <xsl:attribute name="src">
           url('<xsl:value-of select="/comprobante/imgPath" /><xsl:text disable-output-escaping="yes">sello.gif</xsl:text>')</xsl:attribute>
       </fo:external-graphic>       
   </fo:block>
          
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
