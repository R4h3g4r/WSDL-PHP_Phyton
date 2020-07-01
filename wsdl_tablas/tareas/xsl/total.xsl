<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:attribute-set name="ColHeader">
	<xsl:attribute name="class">subseccion</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="TITLE">
	<xsl:attribute name="class">subseccion</xsl:attribute>
	<xsl:attribute name="width">75</xsl:attribute>
	<xsl:attribute name="align">right</xsl:attribute>
	<xsl:attribute name="valign">top</xsl:attribute>
	<xsl:attribute name="height">30</xsl:attribute>
</xsl:attribute-set>

<xsl:attribute-set name="RowData">
	<xsl:attribute name="class">lineaimpar</xsl:attribute>
	<xsl:attribute name="align">right</xsl:attribute>
	<xsl:attribute name="valign">top</xsl:attribute>
</xsl:attribute-set>

	
<xsl:template name="ADDBCK">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDBCK">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASBCK)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASBCK"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>
  
  
  <xsl:template name="ADDCCE">
    <xsl:param name="node" select="."/>
       
       <xsl:variable name="sum-of-rest">
          <xsl:choose>
             <xsl:when test="$node/following-sibling::BEANDATA">
                <xsl:call-template name="ADDCCE">
                   <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                </xsl:call-template>
             </xsl:when>
             <xsl:otherwise>0</xsl:otherwise>
          </xsl:choose>
       </xsl:variable>
  
  	<xsl:choose>
  	<xsl:when test="number($node/FLTASCCE)">
  	<xsl:value-of select="$sum-of-rest +$node/FLTASCCE"/>
  	</xsl:when>
  	<xsl:otherwise>
  	<xsl:value-of select="$sum-of-rest + 0"/>
  	</xsl:otherwise>
  	</xsl:choose>
    </xsl:template>


<xsl:template name="ADDFVT">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDFVT">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASFVT)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASFVT"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>


<xsl:template name="ADDMRK">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDMRK">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASMRK)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASMRK"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>


<xsl:template name="ADDRGO">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDRGO">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASRGO)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASRGO"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>


<xsl:template name="ADDTEC">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDTEC">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASTEC)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASTEC"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>

<xsl:template name="ADDUAS">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDUAS">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASUAS)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASUAS"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>


<xsl:template name="ADDBOT">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDBOT">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTASBOT)">
	<xsl:value-of select="$sum-of-rest +$node/FLTASBOT"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>

<xsl:template name="ADDTOTAL">
  <xsl:param name="node" select="."/>
     
     <xsl:variable name="sum-of-rest">
        <xsl:choose>
           <xsl:when test="$node/following-sibling::BEANDATA">
              <xsl:call-template name="ADDTOTAL">
                 <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
              </xsl:call-template>
           </xsl:when>
           <xsl:otherwise>0</xsl:otherwise>
        </xsl:choose>
     </xsl:variable>

	<xsl:choose>
	<xsl:when test="number($node/FLTTOTAL)">
	<xsl:value-of select="$sum-of-rest +$node/FLTTOTAL"/>
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="$sum-of-rest + 0"/>
	</xsl:otherwise>
	</xsl:choose>
  </xsl:template>
  
  <xsl:template name="ADDALE">
    <xsl:param name="node" select="."/>
       
       <xsl:variable name="sum-of-rest">
          <xsl:choose>
             <xsl:when test="$node/following-sibling::BEANDATA">
                <xsl:call-template name="ADDALE">
                   <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                </xsl:call-template>
             </xsl:when>
             <xsl:otherwise>0</xsl:otherwise>
          </xsl:choose>
       </xsl:variable>
  
  	<xsl:choose>
  	<xsl:when test="number($node/FLTASALE)">
  	<xsl:value-of select="$sum-of-rest +$node/FLTASALE"/>
  	</xsl:when>
  	<xsl:otherwise>
  	<xsl:value-of select="$sum-of-rest + 0"/>
  	</xsl:otherwise>
  	</xsl:choose>
    </xsl:template>
    <xsl:template name="ADDBCI">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDBCI">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/FLTASBCI)">
    	<xsl:value-of select="$sum-of-rest +$node/FLTASBCI"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>


    <xsl:template name="ADDENC">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDENC">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/FLTASENC)">
    	<xsl:value-of select="$sum-of-rest +$node/FLTASENC"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>

    <xsl:template name="ADDWEB">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDWEB">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/FLTASWEB)">
    	<xsl:value-of select="$sum-of-rest +$node/FLTASWEB"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>

    <xsl:template name="ADDCING">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDCING">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/CLIENTING)">
    	<xsl:value-of select="$sum-of-rest +$node/CLIENTING"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>


    <xsl:template name="ADDING">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDING">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/NOCLIENTING)">
    	<xsl:value-of select="$sum-of-rest +$node/NOCLIENTING"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>


    <xsl:template name="ADDCSOL">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDCSOL">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/CLIENTSOL)">
    	<xsl:value-of select="$sum-of-rest +$node/CLIENTSOL"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>

    <xsl:template name="ADDSOL">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDSOL">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/NOCLIENTSOL)">
    	<xsl:value-of select="$sum-of-rest +$node/NOCLIENTSOL"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>

    <xsl:template name="ADDCCER">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDCCER">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/CLIENTCER)">
    	<xsl:value-of select="$sum-of-rest +$node/CLIENTCER"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>

    <xsl:template name="ADDCER">
      <xsl:param name="node" select="."/>
         
         <xsl:variable name="sum-of-rest">
            <xsl:choose>
               <xsl:when test="$node/following-sibling::BEANDATA">
                  <xsl:call-template name="ADDCER">
                     <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>0</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
    
    	<xsl:choose>
    	<xsl:when test="number($node/NOCLIENTCER)">
    	<xsl:value-of select="$sum-of-rest +$node/NOCLIENTCER"/>
    	</xsl:when>
    	<xsl:otherwise>
    	<xsl:value-of select="$sum-of-rest + 0"/>
    	</xsl:otherwise>
    	</xsl:choose>
      </xsl:template>
 
     <xsl:template name="INGRESADOS">
       <xsl:param name="node" select="."/>
          
          <xsl:variable name="sum-of-rest">
             <xsl:choose>
                <xsl:when test="$node/following-sibling::BEANDATA">
                   <xsl:call-template name="INGRESADOS">
                      <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                   </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>0</xsl:otherwise>
             </xsl:choose>
          </xsl:variable>
     
     	<xsl:choose>
     	<xsl:when test="number($node/INGRESADOS)">
     	<xsl:value-of select="$sum-of-rest +$node/INGRESADOS"/>
     	</xsl:when>
     	<xsl:otherwise>
     	<xsl:value-of select="$sum-of-rest + 0"/>
     	</xsl:otherwise>
     	</xsl:choose>
       </xsl:template>

      <xsl:template name="SOLUCIONADOS">
        <xsl:param name="node" select="."/>
           
           <xsl:variable name="sum-of-rest">
              <xsl:choose>
                 <xsl:when test="$node/following-sibling::BEANDATA">
                    <xsl:call-template name="SOLUCIONADOS">
                       <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                    </xsl:call-template>
                 </xsl:when>
                 <xsl:otherwise>0</xsl:otherwise>
              </xsl:choose>
           </xsl:variable>
      
      	<xsl:choose>
      	<xsl:when test="number($node/SOLUCIONADOS)">
      	<xsl:value-of select="$sum-of-rest +$node/SOLUCIONADOS"/>
      	</xsl:when>
      	<xsl:otherwise>
      	<xsl:value-of select="$sum-of-rest + 0"/>
      	</xsl:otherwise>
      	</xsl:choose>
        </xsl:template>

       <xsl:template name="CERRADOS">
         <xsl:param name="node" select="."/>
            
            <xsl:variable name="sum-of-rest">
               <xsl:choose>
                  <xsl:when test="$node/following-sibling::BEANDATA">
                     <xsl:call-template name="CERRADOS">
                        <xsl:with-param name="node" select="$node/following-sibling::BEANDATA[1]"/>
                     </xsl:call-template>
                  </xsl:when>
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
       
       	<xsl:choose>
       	<xsl:when test="number($node/CERRADOS)">
       	<xsl:value-of select="$sum-of-rest +$node/CERRADOS"/>
       	</xsl:when>
       	<xsl:otherwise>
       	<xsl:value-of select="$sum-of-rest + 0"/>
       	</xsl:otherwise>
       	</xsl:choose>
         </xsl:template>
  </xsl:stylesheet>
