<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    
    <xsl:param name="imagenes2"/>
	<xsl:param name="imagenes1"/>
	<xsl:param name="imagenes3"/>
		
    <xsl:template match="wcorp.provisiones.utils.ProvisionesWrapper">
    	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="carta_landscape" page-width="21.59cm" page-height="27.94cm" margin-top="0.90in" margin-bottom="0.30in" margin-left="0.30in" margin-right="0.30in">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="carta_landscape" font-family="Arial, Helvetica, sans-serif">
                <fo:flow flow-name="xsl-region-body">
        			<fo:block>
        				<fo:block font-size="16pt" font-weight="bold" space-before.minimum="1em" space-before.optimum="1.5em"
        			              space-before.maximum="2em"> </fo:block>
  						<fo:block>
   		 					<fo:external-graphic src="url( {$imagenes3} )"/>
  						</fo:block>
					</fo:block>
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    
                    
                    
                    
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url( {$imagenes1} )" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell padding="2pt">										
                                        <fo:block text-align="left" font-family="Arial, Helvetica, sans-serif"  font-size="8pt"  >												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >Consulta Provisiones Grupales</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url( {$imagenes2} )" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	

                   
                   <fo:block>
						<fo:table  border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="56pt"/>	
                            <fo:table-column column-width="112pt"/>	
                            <fo:table-column column-width="112pt" />	
                            <fo:table-column column-width="112pt" />	                            
                            <fo:table-column column-width="56pt" />	
                            <fo:table-column column-width="112pt" />	
                            <fo:table-body>
                                <fo:table-row  background-color="#f0f0f0">		     
                                                    <fo:table-cell background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">
                                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                                            <fo:inline>
                                                                <xsl:text>Nombre</xsl:text>
                                                            </fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>                                    
                                                    <fo:table-cell number-columns-spanned="3" color="#006666" font-size="6pt" font-weight="normal" text-align="left" >
                                                        <fo:block padding-top="1pt" padding-bottom="1pt" start-indent="4pt"  font-family="Arial, Helvetica, sans-serif" >
                                                            <fo:inline >																											
                                                                <xsl:value-of select="EncabezadoConsultaVO/nombreCliente"/>																																																							
                                                            </fo:inline>																											
                                                        </fo:block>
                                                    </fo:table-cell>                                                    
                                                    <fo:table-cell background-color="#dedede" color="#000066" font-size="7pt" text-align="left" font-weight="bold">
                                                        <fo:block padding-top="1pt" padding-bottom="1pt">
                                                            <fo:inline>
                                                                <xsl:text>Calificación</xsl:text>
                                                            </fo:inline>
                                                        </fo:block>
                                                    </fo:table-cell>                                    
                                                    <fo:table-cell color="#006666" font-size="6pt" font-weight="normal" text-align="left">
                                                        <fo:block padding-top="1pt" padding-bottom="1pt" start-indent="4pt">
                                                            <fo:inline>                                               
                                                                <xsl:value-of select="EncabezadoConsultaVO/calificacion"/>		                                                
                                                            </fo:inline>																											
                                                        </fo:block>
                                                    </fo:table-cell>                                    
                                </fo:table-row >
                                <fo:table-row background-color="#f0f0f0">
                                    <fo:table-cell background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">
                                        <fo:block padding-top="1pt" padding-bottom="1pt">
                                            <fo:inline>
                                                <xsl:text>R.U.T.</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell color="#006666" font-size="6pt" font-weight="normal" text-align="left">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" start-indent="4pt">
                                            <fo:inline >
                                                
                                                <xsl:value-of select="EncabezadoConsultaVO/rutCliente"/>		
                                                <xsl:text>-</xsl:text>
                                                <xsl:value-of select="EncabezadoConsultaVO/digitoCliente"/>	
                                                
                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="#dedede" color="#000066" font-size="7pt"  text-align="left" font-weight="bold">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" >
                                            <fo:inline>
                                                
                                                <xsl:text>Deuda Comercial M$</xsl:text>
                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell color="#006666" font-size="6pt" font-weight="normal" text-align="left">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" start-indent="4pt">
                                            <fo:inline>
                                                
                                                <xsl:value-of select="EncabezadoConsultaVO/deudaComercial"/>
                                                
                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell background-color="#dedede" color="#000066" font-size="7pt"  text-align="left" font-weight="bold">
                                        <fo:block padding-top="1pt" padding-bottom="1pt">
                                            <fo:inline>
                                                <xsl:text>Garantía M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell color="#006666" font-size="6pt" font-weight="normal" text-align="left">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" start-indent="4pt">
                                            <fo:inline>
                                                
                                                
                                                <xsl:value-of select="EncabezadoConsultaVO/garantia"/>	
                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>    
                            </fo:table-body>								
                        </fo:table>
					 </fo:block>
                   
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>  
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url( {$imagenes1} )" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell padding="2pt">										
                                        <fo:block text-align="left" font-family="Arial, Helvetica, sans-serif"  font-size="8pt"  >												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >Riesgos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes2})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    
                    <fo:block>
                        <fo:table  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">														
                            <fo:table-column column-width="220pt"/>	
                            <fo:table-column column-width="1pt"/>	         
                            <fo:table-column column-width="50pt"/>	     
                            <fo:table-column column-width="1pt"/>	  
                             <fo:table-column column-width="118pt" />
                            <fo:table-column column-width="1pt"/>	     
                            <fo:table-column column-width="50pt" />	
                            <fo:table-column column-width="1pt"/>	  
                            <fo:table-column column-width="118pt" />	
                            <fo:table-body>
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="left" background-color="#dedede">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF" >
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    
                                    <fo:table-cell  number-columns-spanned="3" font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                           <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text>Provision BCI</xsl:text>																																																						
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                     
                                    <fo:table-cell  number-columns-spanned="3" font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                        <fo:block padding-top="1pt" padding-bottom="1pt"   font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text>Provision Leasing</xsl:text>																																																						
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>                                  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="left" background-color="#dedede">
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:text>%</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text>Monto</xsl:text>																																																						
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:text>%</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell   font-size="7pt" font-weight="bold" text-align="center" color="#000066" background-color="#dedede">
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text>Monto</xsl:text>																																																						
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="right" background-color="#f0f0f0">                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Matriz Comportamiento</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/comportamientoPorcentajeProvisionBci"/>	                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/comportamientoMontoProvisionBci"/>	
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/comportamientoPorcentajeProvisionLeasing"/>	
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/comportamientoMontoProvisionLeasing"/>																																																					
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="right" background-color="#f0f0f0" >                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Matriz Protestos</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/protestosPorcentajeProvisionBci"/>	                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/protestosMontoProvisionBci"/>	
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/protestosPorcentajeProvisionLeasing"/>	
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/protestosMontoProvisionLeasing"/>																																																					
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="right" background-color="#f0f0f0">                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Matriz Renegociados</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/renegociadosPorcentajeProvisionBci"/>	                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/renegociadosMontoProvisionBci"/>	
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0" >       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/renegociadosPorcentajeProvisionLeasing"/>	
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/renegociadosMontoProvisionLeasing"/>																																																					
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="right" background-color="#f0f0f0">                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Cuentas Especiales</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0" >       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/cuentasEspecialesPorcentajeProvisionBci"/>	                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/cuentasEspecialesMontoProvisionBci"/>	
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/cuentasEspecialesPorcentajeProvisionLeasing"/>	
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0" >       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/cuentasEspecialesMontoProvisionLeasing"/>																																																					
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  number-columns-spanned="9" color="#f0f0f0" font-size="6pt" font-weight="normal" text-align="center" background-color="#f0f0f0">
                                    <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                        <fo:inline >																											
                                            <xsl:text>_</xsl:text>																																																						
                                        </fo:inline>																											
                                    </fo:block>
                                </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="right" background-color="#dedede">                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total Provisión</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:text></xsl:text>                                   
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/totalMontoProvisionBci"/>	
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:value-of select="RiesgosVO/totalMontoProvisionLeasing"/>																																																					
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">		     
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="right" background-color="#dedede">                                            
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total Riesgo Individual</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/totalRiesgosPorcentajeProvisionBci"/>	                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#dedede">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text></xsl:text>
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="bold" text-align="center" background-color="#dedede">       
                                        <fo:block >
                                            <fo:inline >
                                                <xsl:value-of select="RiesgosVO/totalRiesgosPorcentajeProvisionLeasing"/>	
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  color="#006666" font-size="6pt" font-weight="normal" text-align="center" background-color="#dedede">       
                                        <fo:block padding-top="1pt" padding-bottom="1pt"  font-family="Arial, Helvetica, sans-serif" >
                                            <fo:inline >																											
                                                <xsl:text></xsl:text>																																																			
                                            </fo:inline>																											
                                        </fo:block>
                                    </fo:table-cell>  
                                </fo:table-row >
                            </fo:table-body>
                       </fo:table>														
                    </fo:block>      
                    
                    
                    
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>  
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes1})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell padding="2pt">										
                                        <fo:block text-align="left" font-family="Arial, Helvetica, sans-serif"  font-size="8pt"  >												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >Deudas </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes2})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    
                    <fo:block>
                        <fo:table  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">														
                            <fo:table-column column-width="108pt"/>	
                            <fo:table-column column-width="1pt"/>	
                            <fo:table-column column-width="108pt" />
                            <fo:table-column column-width="1pt" />                            
                            <fo:table-column column-width="50pt"/>	     
                            <fo:table-column column-width="1pt"/>	  
                            <fo:table-column column-width="118pt" />
                            <fo:table-column column-width="1pt"/>	     
                            <fo:table-column column-width="85pt" />	
                            <fo:table-column column-width="1pt"/>	  
                            <fo:table-column column-width="85pt" />	
                            
                            
                            <fo:table-body>
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="11" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                            <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Deuda BCI en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Mora 1</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Mora 2</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vencida</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                        <fo:table-cell  background-color="#FFFFFF">
                                            <fo:block >
                                                <fo:inline color="#FFFFFF" >
                                                    <xsl:text></xsl:text>
                                                </fo:inline>
                                            </fo:block>
                                        </fo:table-cell> 
                         
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Castigada</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCIVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCIMora1"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCIMora2"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCIVencida"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                     
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCICastigada"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaBCITotalVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="11" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Deuda Leasing BCI en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Mora 1</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Mora 2</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vencida</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Castigada</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCIVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCIMora1"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCIMora2"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCIVencida"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                     
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCICastigada"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/deudaLeasingBCITotalVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="11" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Renegociado BCI en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Monto </xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Saldo</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  number-columns-spanned="3" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                   <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Monto</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Saldo</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row ><fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Reprogramado </xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Reprogramado</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  number-columns-spanned="3" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Reprogramado</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Reprogramado</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/renegociadoBCIMontoReprogramado"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/renegociadoBCISaldoReprogramado"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  number-columns-spanned="3" background-color="#f0f0f0" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                     
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/renegociadoLeasingMontoReprogramado"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasVO/renegociadoLeasingSaldoReprogramado"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                </fo:table-row >
                                
                                
                                </fo:table-body>
                            </fo:table>														
                    </fo:block>
                    
                    
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>  
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes1})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell padding="2pt">										
                                        <fo:block text-align="left" font-family="Arial, Helvetica, sans-serif"  font-size="8pt"  >												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >Garantía</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes2})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    
                    <fo:block>
                        <fo:table  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">														
                            <fo:table-column column-width="188pt"/>	
                            <fo:table-column column-width="1pt"/>	
                      
                            <fo:table-column column-width="198pt" />
                            <fo:table-column column-width="1pt"/>	     
                            <fo:table-column column-width="85pt" />	
                            <fo:table-column column-width="1pt"/>	  
                            <fo:table-column column-width="85pt" />	
                            
                            
                            <fo:table-body>
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="7" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Garantía BCI en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>General</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Específica</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                  	
                                </fo:table-row > 
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/garantiaBCIGeneral"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/garantiaBCIEspecifica"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/garantiaBCITotal"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="7" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Garantía Leasing en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>General</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Específica</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Bienes</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                  	
                                </fo:table-row > 
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/deudaLeasingGeneral"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/deudaLeasingEspecifica"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/deudaLeasingBienes"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="GarantiasVO/deudaLeasingTotal"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                </fo:table-row >
                            </fo:table-body>
                        </fo:table>														
                    </fo:block>
                    
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block> 
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>  
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes1})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell padding="2pt">										
                                        <fo:block text-align="left" font-family="Arial, Helvetica, sans-serif"  font-size="8pt"  >												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >Sistema Financiero</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%" background-image="url({$imagenes2})" />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>
                    <fo:block>
                        <fo:table width="560pt" border="0" cellpadding="0" cellspacing="0">														
                            <fo:table-column column-width="100%"  />	
                            <fo:table-body>
                                <fo:table-row>							
                                    <fo:table-cell>										
                                        <fo:block text-align="left"   font-size="2pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>										
                                </fo:table-row >
                            </fo:table-body>								
                        </fo:table>
                    </fo:block>   	
                    
                    <fo:block>
                        <fo:table  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">														
                            <fo:table-column column-width="148pt"/>	
                            <fo:table-column column-width="1pt"/>	                      
                            <fo:table-column column-width="158pt" />
                            <fo:table-column column-width="1pt"/>	
                            <fo:table-column column-width="80pt" />	
                            <fo:table-column column-width="1pt"/>	    
                            <fo:table-column column-width="85pt" />	
                            <fo:table-column column-width="1pt"/>	  
                            <fo:table-column column-width="85pt" />	
                            
                            
                            <fo:table-body>
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="9" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Deuda Comercial en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Morosa</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vencida</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Castigada</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                  	
                                </fo:table-row > 
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaComercialVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaComercialMorosa"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaComercialVencida"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaComercialCastigada"/>                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaComercialTotal"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell number-columns-spanned="9" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Deuda Leasing en M$</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vigente</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Morosa</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Vencida</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Castigada</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Total</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                  	
                                </fo:table-row > 
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaLeasingVigente"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaLeasingMorosa"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaLeasingVencida"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaLeasingCastigada"/>                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>   
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/deudaLeasingTotal"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                        <fo:table-cell number-columns-spanned="9" >										
                                            <fo:block text-align="left"   font-size="1pt">												
                                                <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                            </fo:block>
                                        </fo:table-cell>	
                                    </fo:table-row >
                                <fo:table-row  background-color="#f0f0f0">  
                                    <fo:table-cell number-columns-spanned="9" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="left">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Protestos</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                      
                                </fo:table-row >
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">	
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Nro. Protestos</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text>Monto Protestos UF</xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  number-columns-spanned="5" background-color="#dedede" color="#000066" font-size="7pt" font-weight="bold" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>                                                                   	
                                </fo:table-row > 
                                <fo:table-row  background-color="#FFFFFF">		     
                                    <fo:table-cell number-columns-spanned="9" >										
                                        <fo:block text-align="left"   font-size="1pt">												
                                            <fo:inline  font-weight="bold"  color="#FFFFFF" >_</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>	
                                </fo:table-row > 
                                <fo:table-row  background-color="#f0f0f0">                               
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/protestoNumero"/>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="right">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline >
                                            
                                                <xsl:value-of select="DeudasSistemaFinancieroVO/protestoMonto"/>
                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell  background-color="#FFFFFF">
                                        <fo:block >
                                            <fo:inline color="#FFFFFF" >
                                                <xsl:text></xsl:text>
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell> 
                                    <fo:table-cell  number-columns-spanned="5"  background-color="#f0f0f0" color="#006666" font-size="7pt" font-weight="normal" text-align="center">                                        
                                        <fo:block padding-top="1pt" padding-bottom="1pt" font-family="Arial, Helvetica, sans-serif">
                                            <fo:inline>                                                
                                            </fo:inline>
                                        </fo:block>
                                    </fo:table-cell>  
                                   
                                </fo:table-row >
                                
                            </fo:table-body>
                        </fo:table>														
                    </fo:block>
                      
                    
                    
                    
                    
                    
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
                    
    </xsl:template>		
</xsl:stylesheet>