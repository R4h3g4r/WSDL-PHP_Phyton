<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"></xsl:output>

<xsl:decimal-format name="de" decimal-separator=","    grouping-separator="." />
<xsl:decimal-format name="fr" decimal-separator=","    grouping-separator=" " />
<xsl:decimal-format name="ru" decimal-separator=","    grouping-separator=" " />
<xsl:decimal-format name="uk" decimal-separator="."    grouping-separator="," />
<xsl:decimal-format name="us" decimal-separator="."    grouping-separator="," />



	<xsl:template name="formatDate"> 
		<xsl:param name="dateTime" />
		<xsl:variable name="date" select="substring-before($dateTime, 'T')" /> 
		<xsl:variable name="year" select="substring-before($date, '-')" /> 
		<xsl:variable name="month" select="substring-before(substring-after($date, '-'), '-')" />
		<xsl:variable name="day" select="substring-after(substring-after($date, '-'), '-')" /> 
		<xsl:value-of select="concat($day, ' ', $month, ' ', $year)" />
	 </xsl:template>

 <!-- necessary global maximum/minimum of exponent 'stuffer', set to 100-->
<xsl:variable name="max-exp">
  <xsl:value-of
select="'0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'"/>
</xsl:variable>

<xsl:template name="convertSciToNumString">
  <xsl:param name="myval" select="''"/>
  <xsl:variable name="useval">
    <xsl:value-of select="translate(string($myval),'e','E')"/>
  </xsl:variable>

  <xsl:choose>
    <xsl:when test="not(number($useval))">
      <xsl:choose>
        <xsl:when test="number(substring-before($useval, 'E'))">

          <xsl:choose>
            <xsl:when test="number(substring-after($useval, 'E'))">
              <xsl:if test="number(substring-before($useval, 'E')) &lt; 0">
                <xsl:call-template name="realConvertSciToNumString">
                  <xsl:with-param name="vnum" select="substring-after($useval, '-')"/>
                  <xsl:with-param name="vsgn" select="'-'"/>
                </xsl:call-template>
              </xsl:if>
              <xsl:if test="number(substring-before($useval, 'E')) &gt; 0">
                <xsl:call-template name="realConvertSciToNumString">
                  <xsl:with-param name="vnum" select="$useval"/>
                </xsl:call-template>
              </xsl:if>
            </xsl:when>

            <xsl:otherwise>
              <xsl:value-of select="$useval"/>
            </xsl:otherwise>

          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$useval"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="number($useval)"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="realConvertSciToNumString" >
  <xsl:param name="vnum" select="0"/>
  <xsl:param name="vsgn" select="''" />
  <xsl:choose>
    <xsl:when test="number(vnum)">
      <xsl:value-of select="$vnum"/>
    </xsl:when> 
    <xsl:otherwise>
		<xsl:variable name="vmantisa">
			<xsl:value-of select="number(substring-before($vnum, 'E'))"/>
		</xsl:variable>
		<xsl:variable name="vexponent">
			<xsl:value-of select="number(substring-after($vnum, 'E'))"/>
		</xsl:variable>

			
            <!--  handle 0.9.... $vmantisa < 1 -->
            <xsl:if test="$vmantisa &lt; 1">
				<!-- handle 0.9E-9 -->
				<xsl:if test="$vexponent &lt; 0">
					<xsl:variable name="voffset">
						<xsl:value-of select="string-length(substring-before($vmantisa, '.'))"/>
					</xsl:variable>
					<xsl:value-of select="concat($vsgn, '0', '.',substring($max-exp, 1, ($vexponent * -1) - $voffset),substring-before($vmantisa,'.'), substring-after($vmantisa,'.'))"/>
				</xsl:if>
				
				  <!-- handle 0.9E9 -->
				<xsl:if test="$vexponent &gt; 0">
					<xsl:variable name="voffset">
						<xsl:value-of select="string-length(substring-after($vmantisa, '.'))"/>
					</xsl:variable>
					<xsl:choose>
						<!-- handle .932E1 -->
						<xsl:when test="$voffset &gt; $vexponent">
							<xsl:value-of select="concat($vsgn, substring(substring-after($vmantisa, '.'), 1, $vexponent), '.',
							substring(substring-after($vmantisa, '.'), $vexponent + 1, string-length($vmantisa) - $vexponent))"/>
						</xsl:when>
						<!-- handle .9E3 -->
						<xsl:when test="$voffset &lt; $vexponent">
							<xsl:value-of select="concat($vsgn, substring-after($vmantisa, '.'), substring($max-exp, 1, ($vexponent - $voffset)))"/>
						</xsl:when>
						<!-- handle .9E1 -->
						<xsl:when test="$voffset = $vexponent">
							<xsl:value-of select="concat($vsgn, substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="NaN"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:if>
            </xsl:if>			
			
			
			
            <!-- handle 9.9.... $vmantisa >= 1 -->
            <xsl:if test="$vmantisa &gt;= 1">

              <!-- handle 9.9E-9 -->
              <xsl:if test="$vexponent &lt; 0">
                <xsl:variable name="voffset">
					<xsl:value-of select="string-length(substring-before($vmantisa, '.'))"/>
				</xsl:variable>
                <xsl:choose>
						<!-- really handle 923.9E-1 -->
						<xsl:when test="$voffset &gt; $vexponent * -1">
							<xsl:value-of select="concat($vsgn, substring(substring-before($vmantisa, '.'), 1, string-length(substring-before($vmantisa, '.')) + $vexponent), '.',
				substring(substring-before($vmantisa, '.'), string-length(substring-before($vmantisa, '.')) + $vexponent + 1, $vexponent * -1), substring-after($vmantisa, '.'))"/>
						</xsl:when>

					  <!-- really handle 9.9E-9 -->
						<xsl:when test="$voffset &lt; $vexponent * -1 and $voffset &gt; 0">
							<xsl:value-of select="concat($vsgn, '0', '.', substring($max-exp, 1, ($vexponent * -1) - $voffset), substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
						</xsl:when>

					  <!-- handle 9.9E-1 -->
					  <xsl:when test="$voffset = $vexponent * -1 and $voffset &gt; 0">
						  <xsl:value-of select="concat($vsgn, '0', '.', substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
					  </xsl:when>

					  <!-- handle 9E-9 -->
					  <xsl:when test="$voffset = 0 and string-length($vmantisa) &lt; $vexponent * -1">
						  <xsl:value-of select="concat($vsgn, '0', '.', substring($max-exp, 1, ($vexponent * -1) - string-length($vmantisa)), $vmantisa)"/>
					  </xsl:when>

					  <!-- handle 999E-1-->
					  <xsl:when test="$voffset = 0 and string-length($vmantisa) &gt; $vexponent * -1">
						  <xsl:value-of select="concat($vsgn,
				substring($vmantisa, 1, string-length($vmantisa) + $vexponent), '.', substring($vmantisa, string-length($vmantisa) + $vexponent + 1, $vexponent * -1))"/>
					  </xsl:when>
					  <xsl:otherwise>
						  <xsl:value-of select="'NaN'"/>
					  </xsl:otherwise>
                </xsl:choose>
              </xsl:if>

			  	<!-- ****************************** -->
				<!-- MODIFICACION NUEVA  -->
				<!-- ****************************** -->		
				<!-- handle 9.9E9 -->
				<xsl:if test="$vexponent &gt; 0">
					<xsl:variable name="voffset">
						<xsl:value-of select="string-length(substring-after($vmantisa, '.'))"/>
					</xsl:variable>
					<xsl:variable name="afterMantisa">
						<xsl:value-of select="substring-after($vmantisa, '.')"/>
					</xsl:variable>					
					
					 <xsl:choose>
							<xsl:when test="string-length($afterMantisa) &gt;= $vexponent">
								<xsl:value-of select="concat($vsgn, substring-before($vmantisa, '.'), substring($vmantisa, 3,$vexponent)   , substring($max-exp, 1, ($vexponent  - $voffset)) )"/>
							</xsl:when>
							  
							<xsl:when test="string-length($afterMantisa) &lt; $vexponent">
								<xsl:value-of select="concat($vsgn, substring-before($vmantisa, '.'), substring-after($vmantisa, '.'), substring($max-exp, 1, ($vexponent - $voffset)))"/>
							</xsl:when>
							
							<xsl:otherwise>
								<xsl:value-of select="'NaN'"/>
							</xsl:otherwise>
					  
					  </xsl:choose>					
				</xsl:if>
			
            </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
	 
	 
	 
	<xsl:template match="/">


		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta" page-height="11.0in" page-width="8.5in" margin-top="0.10in" margin-bottom="0.20in" margin-left="0.5in" margin-right="0.5in">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:setLocale value="es_CL"></fo:setLocale>
			<fo:page-sequence master-reference="carta" font-family="Arial, Helvetica, sans-serif">
				<fo:flow flow-name="xsl-region-body">
					
					<fo:block font-size="10pt">
						<fo:table table-layout="fixed" column-width="6.5in" border="2">
							<fo:table-column column-width="6.5in"></fo:table-column>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block text-align="right">
										<xsl:text>Banco Crédito e Inversiones</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block text-align="center">
											<fo:inline start-indent="4pt"  font-weight="bold">ESTADO FINANCIERO - BALANCE IFRS BANCARIO </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="126pt"/>
								<fo:table-body>
									<fo:table-row>
		                            	<fo:table-cell>
											<fo:block>
												<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
						<fo:table-column column-width="535pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell>
										<fo:block background-color="#D8D8D8" padding="3px">
											<fo:inline font-weight="bold" start-indent="4pt">DATOS GENERALES</fo:inline>
										</fo:block>
								   </fo:table-cell>
   								</fo:table-row>
							</fo:table-body>
					</fo:table>
					</fo:block>
					<fo:block font-size="7pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="70pt"/>
							<fo:table-column column-width="240pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell>
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell>
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                	        <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Nombre Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/nombreCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									<fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/ejecutivo"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">IdC Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/idCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									
									<fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo del Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/ejecutivoCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Tipo de Balance:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<xsl:if test="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto/bco_gen_tip_fcu='C'">Consolidado</xsl:if>
											<xsl:if test="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto/bco_gen_tip_fcu='I'">Individual</xsl:if>
										</fo:block>
									</fo:table-cell> 
								
									<fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Tipo de Cambio:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/tipoMoneda"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
								</fo:table-row>

							<fo:table-row> 
								<fo:table-cell padding="2pt" border="" text-align="left">
									<fo:block padding="1pt" text-decoration="underline">
										<fo:inline font-weight="bold">BALANCE</fo:inline>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell padding="2pt" border="" text-align="left">
									<fo:block padding="1pt" text-decoration="underline">
										<fo:inline font-weight="bold">AUDITOR</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<!-- Columna Balance y Auditor-->
							<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
								<fo:table-row>
									<fo:table-cell padding="2pt" border="">
										<fo:block>
											<xsl:value-of select="str_bco_gen_pdo_fcu" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" border="">
									<fo:block>
										<xsl:value-of select="bco_gen_nom_adt" />
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>	
					
						</fo:table-body>
						</fo:table>
					</fo:block>	
					<fo:block font-size="6pt">
					
		<!-- *********************************************************************************-->		
		<!-- *********************************     ESTADO DE SITUACION       *****************-->
		<!-- *********************************************************************************-->		
					
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="17pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="17pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="17pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="17pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="17pt"/>
							<fo:table-body>
							
								<fo:table-row >
		                	       	<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row background-color="#D8D8D8">>
		                	  		<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">ESTADO DE SITUACIÓN</fo:inline>
										</fo:block>
									</fo:table-cell>
		                	  		<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_bco_gen_pdo_fcu" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="5px" ><xsl:value-of select="bco_gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right"><fo:block  padding="2px"><xsl:value-of select="bco_gen_num_mes" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block  padding="2px"><fo:inline  start-indent="4pt">%</fo:inline></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
		<!-- *********************************************************************************-->		
		<!-- *********************************     Activos       *****************************-->
		<!-- *********************************************************************************-->	
			
   								<fo:table-row background-color="#F2F2F2">								
									<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">ACTIVOS</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								
   								
				<!-- ************************* Efectivos y depósitos en banco ***************************-->
					
 								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Efectivos y depósitos en banco</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">										
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
														<xsl:variable name="bco_gen_efe_dep">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_efe_dep' />
                                                            </xsl:call-template>
                                                        </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_efe_dep, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_gen_efe_dep_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>


						<!-- ************************* Operaciones con liquidación en curso *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Operaciones con liquidación en curso</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											 <xsl:variable name="bco_gen_ope_liq">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ope_liq' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ope_liq, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											    <xsl:value-of select='format-number(bco_gen_ope_liq_p, "###,##","de")' />  
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								
								
							<!-- ************************* Instrumentos para negociación *************************-->
							
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Instrumentos para negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="bco_gen_ins_neg">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ins_neg' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ins_neg, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_gen_ins_neg_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							
							<!-- ************************* Contratos de retro compra y préstamos de valores *************************-->
														
								<fo:table-row>
								 	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Contratos de retro compra y préstamos de valores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ctr_rcp_pre_val">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ctr_rcp_pre_val' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ctr_rcp_pre_val, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_pre_val_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								

							<!-- ************************* Contratos de derivados financieros *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Contratos de derivados financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ctr_der_fin">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ctr_der_fin' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ctr_der_fin, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ctr_der_fin_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- ************************* Adeudado por bancos *************************-->
							
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Adeudado por bancos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ade_bco">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ade_bco' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ade_bco, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ade_bco_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- ************************* Créditos y cuentas por cobrar a clientes *************************-->
										
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Créditos y cuentas por cobrar a clientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_cre_cta_cob">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_cre_cta_cob' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_cre_cta_cob, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_cre_cta_cob_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- ************************* Instrumentos de inversión disponible para la venta *************************--> 
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Instrumentos de inversión disponible para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ins_inv_dis_vta">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ins_inv_dis_vta' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ins_inv_dis_vta, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ins_inv_dis_vta_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- ************************* Instrumentos de inversión disponible para la venta *************************--> 
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Instrumentos de inversión hasta el vencimiento</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ins_inv_vct">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_ins_inv_vct' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ins_inv_vct, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ins_inv_vct_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!-- ************************* Inversiones en Sociedades *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Inversiones en sociedades</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_inv_soc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            <xsl:with-param name="myval" select='bco_gen_inv_soc' />
                                                            </xsl:call-template>
                                                            </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_inv_soc, "###.###","de")' /> 
						     				</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_inv_soc_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!-- ************************* Intangibles *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
														<xsl:variable name="bco_gen_int">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_int' />
                                                            </xsl:call-template>
                                                         </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_int, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_int_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!-- ************************* Activo Fijo *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Activo fijo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_acv_fjo">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_acv_fjo' />
                                                            </xsl:call-template>
                                                         </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_acv_fjo, "###.###","de")' /> 
												</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_acv_fjo_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!-- ************************* Impuestos corrientes *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ipt_cte_acv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ipt_cte_acv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ipt_cte_acv, "###.###","de")' /> 
									    	</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ipt_cte_acv_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!-- ************************* Impuestos Diferidos *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ipt_dfr_acv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ipt_dfr_acv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ipt_dfr_acv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_acv_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Otros Activos *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros activos</fo:inline>	
										</fo:block>
									</fo:table-cell>												  
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_otr_acv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_otr_acv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_otr_acv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_otr_acv_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
												
								<!--************************* Total Activos *************************-->
																						
							<fo:table-row >
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL ACTIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="total_activos">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='total_activos' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($total_activos, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(total_activos_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:block>
							<fo:inline color="white">.</fo:inline>
						</fo:block>
   													
					<!--****************************** PASIVOS ***********************-->	
				
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>
   								
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block padding="2px"  font-size="7pt">
											<fo:inline font-weight="bold" start-indent="4pt">PASIVOS</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								
   								<!--************************* Depósito y otras obligaciones a la vista *************************-->
   								
 								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Depósito y otras obligaciones a la vista</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="bco_gen_dep_otr_obl_vis">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_dep_otr_obl_vis' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_dep_otr_obl_vis, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_gen_dep_otr_obl_vis_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<!--************************* Operaciones con liquidación en curso *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Operaciones con liquidación en curso</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="bco_gen_ope_liq_cur">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ope_liq_cur' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ope_liq_cur, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ope_liq_cur_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<!--************************* Contratos de retrocompra y préstamos de valores *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Contratos de retro compra y préstamos de valores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ctr_rcp_ptm_val">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ctr_rcp_ptm_val' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ctr_rcp_ptm_val, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_ptm_val_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Depósitos y otras captaciones de plazo *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depósitos y otras captaciones de plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_dep_cap_plz">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_dep_cap_plz' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_dep_cap_plz, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_dep_cap_plz_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Contratos de derivados financieros *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Contratos de derivados financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_der_fin">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_der_fin' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_der_fin, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_der_fin_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
							
								<!--************************* Obligaciones con bancos *************************-->
																
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obligaciones con bancos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_obl_bco">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_obl_bco' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_obl_bco, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_obl_bco_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Instrumentos de deuda emitidos *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Instrumentos de deuda emitidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ins_dda_emi">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ins_dda_emi' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ins_dda_emi, "###.###","de")' /> 	
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ins_dda_emi_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Otras obligaciones financieras *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras obligaciones financieras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_obl_fin">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_obl_fin' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_obl_fin, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_obl_fin_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Impuestos corrientes *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ipt_cte_psv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ipt_cte_psv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ipt_cte_psv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ipt_cte_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Impuestos diferidos *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ipt_dfr_psv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ipt_dfr_psv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ipt_dfr_psv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<!--************************* Provisiones *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_prv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_prv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_prv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_prv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<!--************************* Otros pasivos *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros pasivos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_otr_psv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_otr_psv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_otr_psv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_otr_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* TOTAL PASIVOS *************************-->

							<fo:table-row >
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>


								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL PASIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  padding="2px">
											<xsl:variable name="total_pasivos">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='total_pasivos' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($total_pasivos, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(total_pasivos_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* TOTAL PASIVOS *************************-->							
								
							<fo:table-row >
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>

   								
   								<!--************************* PATRIMONIO *************************-->		
   								
								<fo:table-row background-color="#F2F2F2" >
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">PATRIMONIO</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								
   								<!--************************* Atribuible a tenedores patrimoniales del banco *************************-->		
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Atribuible a tenedores patrimoniales del banco</fo:inline>	
										</fo:block>
									</fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2"><fo:block  padding="2px"><fo:inline font-weight="bold" start-indent="4pt" color="#F2F2F2">.</fo:inline></fo:block></fo:table-cell>

								</fo:table-row>
								
								<!--************************* Capital *************************-->	
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Capital</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_cpt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_cpt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_cpt, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_cpt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Reservas *************************-->	
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Reservas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_rsv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_rsv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_rsv, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_rsv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Cuentas de Valoracion *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cuentas de valoración</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_cta_val">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_cta_val' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_cta_val, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_cta_val_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Utilidades Retenidas *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Utilidades retenidas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_utl_ret">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_ret' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_ret, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_ret_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Utilidades Retenidas de Ejercicios Anteriores *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidades retenidas de ejercicios anteriores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_utl_ret_eje_ant">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_ret_eje_ant' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_ret_eje_ant, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_ret_eje_ant_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Utilidad del Ejercicio *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad del ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_utl_eje">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_eje' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_eje, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_eje_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Menos: Provisión para dividendos mínimos *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Menos: Provisión para dividendos mínimos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_prv_div_min">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_prv_div_min' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_prv_div_min, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_prv_div_min_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Interés Minoritario *************************-->		

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Interés Minoritario</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_int_min">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_int_min' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_int_min, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_int_min_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>


								<!--************************* Total Patrimonio *************************-->		

								<fo:table-row>
	                               	<fo:table-cell border-style="solid"  border-color="black" border="0.5pt">
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">TOTAL PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each  select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block padding="2px">
												<xsl:variable name="bco_tot_ptr">
													<xsl:call-template name="convertSciToNumString">
														<xsl:with-param name="myval" select='bco_tot_ptr' />
													</xsl:call-template>
												</xsl:variable>
												
												 <xsl:value-of select='format-number($bco_tot_ptr, "###.###","de")' /> 
													
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_tot_ptr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row >
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>


								<!--************************* Total Pasivos y Patrimonio *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid"  border-color="black" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">TOTAL PASIVOS Y PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each  select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  padding="2px">
											<xsl:variable name="bco_tot_psv_ptr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_tot_psv_ptr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_tot_psv_ptr, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_tot_psv_ptr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					
<!-- *********************************************************************************-->	
<!-- *********************************     ESTADO DE RESULTADO       *****************-->
<!-- *********************************************************************************-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>
 
							<fo:table-row background-color="#D8D8D8">>
								<fo:table-cell>
									<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
										<fo:inline font-weight="bold" start-indent="4pt">ESTADO DE RESULTADO</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>

						
							<fo:table-row>
								<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_bco_gen_pdo_fcu" /></fo:block></fo:table-cell>
									<fo:table-cell text-align="right"><fo:block padding="5px" ><xsl:value-of select="bco_gen_num_fcu" /></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block  padding="2px"><xsl:value-of select="bco_gen_num_mes" /></fo:block></fo:table-cell>
									<fo:table-cell text-align="right"><fo:block  padding="2px"><fo:inline  start-indent="4pt">%</fo:inline></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
								
								
							<fo:table-row >
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>								
							</fo:table-row>


								<!--************************* Ingresos por intereses y reajustes *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Ingresos por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="bco_gen_ing_int_rjt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ing_int_rjt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ing_int_rjt, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_gen_ing_int_rjt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Gastos por intereses y reajustes *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Gastos por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="bco_gen_gto_int_rjt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_gto_int_rjt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_gto_int_rjt, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(bco_gen_gto_int_rjt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Ingresos Neto por intereses y reajustes *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">Ingreso neto por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_gen_ing_nto_int_rjt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ing_nto_int_rjt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ing_nto_int_rjt, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_gen_ing_nto_int_rjt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

   								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>

   								
								<!--************************* Ingresos por Comisiones *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Ingresos por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_ing_com">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ing_com' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ing_com, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_ing_com_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Gastos por comisiones *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_gto_com">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_gto_com' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_gto_com, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_gto_com_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Ingreso neto por comisiones *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Ingreso neto por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_gen_ing_nto_com">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ing_nto_com' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ing_nto_com, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_gen_ing_nto_com_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<fo:table-row >
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>

								<!--************************* Utilidad neta de operaciones financieras *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad neta de operaciones financieras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_utl_nta_ope_fin">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_nta_ope_fin' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_nta_ope_fin, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_nta_ope_fin_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Utilidad(pérdida) de cambio neta *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad(pérdida) de cambio neta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_utl_cbo_nta">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_cbo_nta' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_cbo_nta, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_cbo_nta_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Otros ingresos operacionales *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros ingresos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_otr_ing_ope">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_otr_ing_ope' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_otr_ing_ope, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_otr_ing_ope_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Total ingresos operacionales *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Total ingresos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_tot_ing_opr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_tot_ing_opr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_tot_ing_opr, "###.###","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_tot_ing_opr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row  background-color="#EEEEEE">
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>


								<!--************************* Provisiones por riesgo de crédito *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones por riesgo de crédito</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_prv_rie_cre">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_prv_rie_cre' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_prv_rie_cre, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_prv_rie_cre_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* INGRESO OPERACIONAL NETO *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">INGRESO OPERACIONAL NETO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_gen_ing_ope_nto">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ing_ope_nto' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ing_ope_nto, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_gen_ing_ope_nto_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>


								<!--************************* Remuneraciones y gastos del personal *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Remuneraciones y gastos del personal</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_rem_gto_prn">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_rem_gto_prn' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_rem_gto_prn, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_rem_gto_prn_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Gastos de administración *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos de administración</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_gto_adm">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_gto_adm' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_gto_adm, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_gto_adm_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Depreciaciones y amortizaciones *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depreciaciones y amortizaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_dpr_amt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_dpr_amt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_dpr_amt, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_dpr_amt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Deterioros *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Deterioros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_det">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_det' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_det, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_det_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* Otros gastos operacionales *************************-->
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros gastos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_otr_gto_ope">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_otr_gto_ope' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_otr_gto_ope, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_otr_gto_ope_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* TOTAL GASTOS OPERACIONALES *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL GASTOS OPERACIONALES</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_tot_gto_opr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_tot_gto_opr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_tot_gto_opr, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_tot_gto_opr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row  background-color="#EEEEEE">
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>

   								
   								<!--************************* RESULTADO OPERACIONAL *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">RESULTADO OPERACIONAL</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
													<xsl:variable name="bco_res_opr" >
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_res_opr' />
                                                            </xsl:call-template>
                                                    </xsl:variable>
                                                    <xsl:value-of select='format-number($bco_res_opr, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_res_opr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row  background-color="#EEEEEE">
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>


								<!--************************* Resultado por inversiones en sociedades *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Resultado por inversiones en sociedades</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_gen_res_inv_soc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_res_inv_soc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_res_inv_soc, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(bco_gen_res_inv_soc_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row  background-color="#EEEEEE">
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								</fo:table-row>


								<!--************************* Resultado antes de impuesto a la renta *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">Resultado antes de impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_res_ant_imp_rnt">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_res_ant_imp_rnt' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_res_ant_imp_rnt, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_res_ant_imp_rnt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Impuesto a la renta *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
											<xsl:variable name="bco_gen_ipt_rta">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_ipt_rta' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_ipt_rta, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_gen_ipt_rta_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row >
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>
  								

								<!--************************* UTILIDAD DEL EJERCICIO *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">UTILIDAD DEL EJERCICIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold" padding="2px">
											<xsl:variable name="bco_gen_utl_eje">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_gen_utl_eje' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_gen_utl_eje, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(bco_gen_utl_eje_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
						
<!-- ************************************************************************************-->	
<!-- *********************************     DATOS ADICIONALES         ********************-->
<!-- ************************************************************************************-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-body>
							
							<fo:table-row background-color="#D8D8D8">>
								<fo:table-cell>
									<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
										<fo:inline font-weight="bold" start-indent="4pt">DATOS ADICIONALES</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>
							
							
							<fo:table-row>
								<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_bco_gen_pdo_fcu" /> - <xsl:value-of select="bco_gen_num_fcu" /></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses</fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block  padding="2px"><xsl:value-of select="bco_gen_num_mes" /></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
							
							
							
							
							<fo:table-row >
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
							</fo:table-row>

								<!--************************* Descalce Base Ajustada 0 - 30 días CLP *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 30 días CLP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_des_bse_ajt_0_30_clp">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_des_bse_ajt_0_30_clp' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_des_bse_ajt_0_30_clp, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<!--************************* Descalce Base Ajustada 0 - 90 días CLP *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 90 días CLP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_des_bse_ajt_0_90_clp">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_des_bse_ajt_0_90_clp' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_des_bse_ajt_0_90_clp, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<!--************************* Descalce Base Ajustada 0 - 90 días M/X *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 90 días M/X</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_des_bse_ajt_0_90_mx">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_des_bse_ajt_0_90_mx' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_des_bse_ajt_0_90_mx, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<!--************************* Colocaciones antes de provisiones *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Colocaciones antes de provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_col_ate_prv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_col_ate_prv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_col_ate_prv, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<!--************************* Provisiones sobre colocaciones *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones sobre colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_prv_sbr_col">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_prv_sbr_col' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_prv_sbr_col, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<!--************************* ERM Tasa Interés Libro de Negociación *************************-->
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">ERM Tasa Interés Libro de Negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_emr_tsa_int_lib_neg">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_emr_tsa_int_lib_neg' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_emr_tsa_int_lib_neg, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>									

								<!--************************* ERM Moneda Libro de Negociación *************************-->
	
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">ERM Moneda Libro de Negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_emr_mon_lib_neg">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_emr_mon_lib_neg' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_emr_mon_lib_neg, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* ERM Moneda Libro de Banca *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">ERM Moneda Libro de Banca</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_emr_mon_lib_bca">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_emr_mon_lib_bca' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_emr_mon_lib_bca, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Exposición Corto Plazo al riesgo de Tasas de interés *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Exposición Corto Plazo al riesgo de Tasas de interés</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_exp_cto_plz_rie_tsa_in">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_exp_cto_plz_rie_tsa_in' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_exp_cto_plz_rie_tsa_in, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Margen Financiero de Corto Plazo *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Margen Financiero de Corto Plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_mng_fin_cto_plz">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_mng_fin_cto_plz' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_mng_fin_cto_plz, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Exposición Largo Plazo al Riesgo de Tasas de interés *************************-->

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Exposición Largo Plazo al Riesgo de Tasas de interés</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_exp_lgo_plz_rie_tsa_in">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_exp_lgo_plz_rie_tsa_in' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_exp_lgo_plz_rie_tsa_in, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Patrimonio Efectivo *************************-->

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_ptm_efe">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_ptm_efe' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_ptm_efe, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Activos Ponderados por Riesgo *************************-->

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Activos Ponderados por Riesgo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_acv_pon_rie">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_acv_pon_rie' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_acv_pon_rie, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
		
							<!--************************* Cartera Vencida *************************-->
				
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cartera Vencida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_crt_vda">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_crt_vda' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_crt_vda, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Colocaciones totales (Colocaciones Brutas) *************************-->

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Colocaciones totales (Colocaciones Brutas)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_col_tot">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_col_tot' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_col_tot, "###.###","de")' />
 											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Provisiones *************************-->

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_prv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_prv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_prv, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Cartera Deteriorada *************************-->

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cartera Deteriorada</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_crt_det">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_crt_det' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_crt_det, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* Colocaciones Comerciales *************************-->

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Colocaciones Comerciales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_col_com">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_col_com' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_col_com, "###.###","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* UPA Básica *************************-->

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">UPA Básica</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_upa_bas">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_upa_bas' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_upa_bas, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!--************************* UPA Diluída *************************-->

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">UPA Diluída</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="bco_dad_upa_dil">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='bco_dad_upa_dil' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($bco_dad_upa_dil, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							</fo:table-body>
						</fo:table>

<!-- *********************************************************************************-->	
<!-- *********************************     INDICADORES	            ******************-->
<!-- *********************************************************************************-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>							
							
							<fo:table-row background-color="#D8D8D8">>
								<fo:table-cell>
									<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
										<fo:inline font-weight="bold" start-indent="4pt">INDICADORES</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>
						
							<fo:table-row>
								<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_bco_gen_pdo_fcu" /> - <xsl:value-of select="bco_gen_num_fcu" /></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses </fo:inline></fo:block></fo:table-cell>
								<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
									<fo:table-cell text-align="right"><fo:block  padding="2px"><xsl:value-of select="bco_gen_num_mes" /></fo:block></fo:table-cell>
								</xsl:for-each>
							</fo:table-row>
								
							<fo:table-row >
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
							</fo:table-row>
								
								
							<fo:table-row background-color="#F2F2F2">								
								<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Liquidez</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
								<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
							</fo:table-row>

								<!--************************* Descalce Base Ajustada 0-30 días/Capital Básico *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-30 días/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="ind_dsc_bse_30_cpt_bsc">
													<xsl:call-template name="convertSciToNumString">
														<xsl:with-param name="myval" select='ind_dsc_bse_30_cpt_bsc' />
                                                    </xsl:call-template>
                                                </xsl:variable>
                                                <xsl:value-of select='format-number($ind_dsc_bse_30_cpt_bsc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Descalce Base Ajustada 0-90 días/Capital Básico *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-90 días/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="ind_dsc_bse_90_cpt_bsc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_dsc_bse_90_cpt_bsc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_dsc_bse_90_cpt_bsc,"###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Descalce Base Ajustada 0-30 días(M/X)/Capital Básico *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-30 días(M/X)/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
											<xsl:variable name="ind_dsc_bse_30_MX_cpt_bsc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_dsc_bse_30_MX_cpt_bsc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_dsc_bse_30_MX_cpt_bsc,"###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Depósitos y Otras Obligaciones a la Vista)/Colocaciones *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">(Depósitos y Otras Obligaciones a la Vista)/Colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_dps_vst_clc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_dps_vst_clc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_dps_vst_clc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<!--************************* (Depósitos y Otras Obligaciones a la Vista y a Plazo)/Colocaciones *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">(Depósitos y Otras Obligaciones a la Vista y a Plazo)/Colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_dps_vst_plz_clc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_dps_vst_plz_clc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_dps_vst_plz_clc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* (Efectivo y dep. en Banco + operac. con Liquidación en Curso + Intrumentos de Inversión disponibles para la venta/Pasivo más Exigible *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">(Efectivo y dep. en Banco + operac. con Liquidación en Curso + Intrumentos de Inversión disponibles para la venta)/Pasivo más Exigible</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_efc_opr_ins_psv_exg">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_efc_opr_ins_psv_exg' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_efc_opr_ins_psv_exg, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
								</fo:table-row>

								<fo:table-row background-color="#F2F2F2">
									<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Mercado</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

								<!--************************* ERM/(3*Capital Básico) *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">ERM/(3*Capital Básico)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_erm_3_cpt_bsc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_erm_3_cpt_bsc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_erm_3_cpt_bsc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* X1/Margen Financiero de Corto Plazo *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">X1/Margen Financiero de Corto Plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_x1_mrg_crt_plz">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_x1_mrg_crt_plz' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_x1_mrg_crt_plz, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* X2/Patrimonio Efectivo *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">X2/Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_x2_ptr_efc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_x2_ptr_efc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_x2_ptr_efc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
								</fo:table-row>

								<fo:table-row background-color="#F2F2F2">
									<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Capital y Solvencia</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

								<!--************************* Patrimonio Efectivo/(Activos Ponderados por Riesgo + ERM) *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Patrimonio Efectivo/(Activos Ponderados por Riesgo + ERM)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_ptr_efc_act_pnd">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_ptr_efc_act_pnd' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_ptr_efc_act_pnd, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Capital Básico/(Activos Ponderados por Riesgo + ERM) *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Capital Básico/(Activos Ponderados por Riesgo + ERM)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_cpt_bsc_act_pnd">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_cpt_bsc_act_pnd' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_cpt_bsc_act_pnd, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
								</fo:table-row>

								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Calidad de la Cartera</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

								<!--************************* Capital Básico/(Activos Ponderados por Riesgo + ERM) *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cartera Vencida/Colocaciones Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_crt_vnc_clc_ttl">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_crt_vnc_clc_ttl' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_crt_vnc_clc_ttl, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Capital Básico/(Activos Ponderados por Riesgo + ERM) *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones/Colocaciones Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_prv_clc_ttl">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_prv_clc_ttl' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_prv_clc_ttl, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Cartera Deteriorada (C1+C2+C3+C4+D1+D2)/Colocaciones Comerciales Totales *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cartera Deteriorada (C1+C2+C3+C4+D1+D2)/Colocaciones Comerciales Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_crt_dtr_clc_cmr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_crt_dtr_clc_cmr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_crt_dtr_clc_cmr, "###.###,##","de")' />
 											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
		                	     <fo:table-row >
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
								</fo:table-row>

							    <fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Rentabilidad y Productividad</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

								<!--************************* Rentabilidad sobre Patrimonio *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Rentabilidad sobre Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_rnt_ptr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_rnt_ptr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_rnt_ptr, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Rentabilidad sobre Activos *************************-->	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Rentabilidad sobre Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_rnt_act">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_rnt_act' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_rnt_act, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Margen Operacional Bruto/Activo Productivo *************************-->	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Margen Operacional Bruto/Activo Productivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_mob_ap">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_mob_ap' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_mob_ap, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Total Gastos Operacionales/Ingreso Operacional Neto *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total Gastos Operacionales/Ingreso Operacional Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_tgo_ion">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_tgo_ion' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_tgo_ion, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Margen Financiero/Margen Operacional *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Margen Financiero/Margen Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_mf_mo">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_mf_mo' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_mf_mo, "###.###,##","de")' />							
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row >
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
								</fo:table-row>

								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Otros</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
		                	       	<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

								<!--************************* Depositos/(Pasivo + Patrimonio) *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depósitos/(Pasivo + Patrimonio)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_dps_psv_ptr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_dps_psv_ptr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_dps_psv_ptr, "###.###,##","de")' />
 											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Colocaciones/Total de Activos *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Colocaciones/Total de Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_clc_ta">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_clc_ta' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_clc_ta, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Activos Liquidos/Total de Activos *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Activos Líquidos/Total de Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="act_lqd_ta">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='act_lqd_ta' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($act_lqd_ta, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* LEVERAGE *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">LEVERAGE</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_lvr">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_lvr' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_lvr, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* LEVERAG Sobre Patrimonio Efectivo *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">LEVERAGE Sobre Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_lvr_pe">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_lvr_pe' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_lvr_pe, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Cartera en Mora y Vencida/Cartera Bruta *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cartera en Mora y Vencida/Cartera Bruta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_cmv_cv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_cmv_cv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_cmv_cv, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Previsiones/Cartera en Mora y Vencida *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones/Cartera en Mora y Vencida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_prv_cmv">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_prv_cmv' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_prv_cmv, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* Comisiones/Gasto Operacional *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Comisiones/Gasto Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_cms_go">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_cms_go' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_cms_go, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* UPA Básica *************************-->

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">UPA Básica</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_upa_bsc">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_upa_bsc' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_upa_bsc, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<!--************************* UPA Diluida *************************-->

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">UPA Diluída</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
											<xsl:variable name="ind_upa_dld">
                                                            <xsl:call-template name="convertSciToNumString">
                                                            	<xsl:with-param name="myval" select='ind_upa_dld' />
                                                            </xsl:call-template>
                                                       		 </xsl:variable>
                                                            <xsl:value-of select='format-number($ind_upa_dld, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>			
			</fo:page-sequence>
		</fo:root>	
	</xsl:template>
</xsl:stylesheet>