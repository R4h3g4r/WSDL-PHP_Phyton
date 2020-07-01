<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"></xsl:output>

<xsl:decimal-format name="de" decimal-separator=","    grouping-separator="." />
<xsl:decimal-format name="fr" decimal-separator=","    grouping-separator=" " />
<xsl:decimal-format name="ru" decimal-separator=","    grouping-separator=" " />
<xsl:decimal-format name="uk" decimal-separator="."    grouping-separator="," />
<xsl:decimal-format name="us" decimal-separator="."    grouping-separator="," />





<!-- necessary global maximum/minimum of exponent 'stuffer', set to 100
-->
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
              <xsl:if test="number(substring-before($useval, 'E')) &lt;
0">
                <xsl:call-template name="realConvertSciToNumString">
                  <xsl:with-param name="vnum" select="substring-after($useval, '-')"/>
                  <xsl:with-param name="vsgn" select="'-'"/>
                </xsl:call-template>
              </xsl:if>
              <xsl:if test="number(substring-before($useval, 'E')) &gt;
0">
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
  <xsl:param name="vsgn" select="''"/>
  <xsl:choose>
    <xsl:when test="number(vnum)">
      <xsl:value-of select="$vnum"/>
    </xsl:when> 
    <xsl:otherwise>
            <xsl:variable name="vmantisa">
              <xsl:value-of select="number(substring-before($vnum,
'E'))"/>
            </xsl:variable>
            <xsl:variable name="vexponent">
              <xsl:value-of select="number(substring-after($vnum,
'E'))"/>
            </xsl:variable>

            <!--  handle 0.9.... -->
            <xsl:if test="$vmantisa &lt; 1">

              <!-- handle 0.9E-9 -->
              <xsl:if test="$vexponent &lt; 0">
                <xsl:variable name="voffset">
                  <xsl:value-of
select="string-length(substring-before($vmantisa, '.'))"/>
                </xsl:variable>
                    <xsl:value-of select="concat($vsgn, '0', '.',
substring($max-exp, 1, ($vexponent * -1) -
$voffset),substring-before($vmantisa,'.'), substring-after($vmantisa,
'.'))"/>
              </xsl:if>

              <!-- handle 0.9E9 -->
              <xsl:if test="$vexponent &gt; 0">
                <xsl:variable name="voffset">
                  <xsl:value-of
select="string-length(substring-after($vmantisa, '.'))"/>
                </xsl:variable>

                <xsl:choose>
                  <!-- handle .932E1 -->
                  <xsl:when test="$voffset &gt; $vexponent">
                      <xsl:value-of select="concat($vsgn,
substring(substring-after($vmantisa, '.'), 1, $vexponent), '.',
substring(substring-after($vmantisa, '.'), $vexponent + 1,
string-length($vmantisa) - $vexponent))"/>
                  </xsl:when>

                  <!-- handle .9E3 -->
                  <xsl:when test="$voffset &lt; $vexponent">
                      <xsl:value-of select="concat($vsgn,
substring-after($vmantisa, '.'), substring($max-exp, 1, ($vexponent -
$voffset)))"/>
                  </xsl:when>

                  <!-- handle .9E1 -->
                  <xsl:when test="$voffset = $vexponent">
                      <xsl:value-of select="concat($vsgn,
substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
                  </xsl:when>

                  <xsl:otherwise>
                      <xsl:value-of select="NaN"/>
                  </xsl:otherwise>

                </xsl:choose>

              </xsl:if>
            </xsl:if>

            <!-- handle 9.9.... -->
            <xsl:if test="$vmantisa &gt;= 1">

              <!-- handle 9.9E-9 -->
              <xsl:if test="$vexponent &lt; 0">
                <xsl:variable name="voffset">
                  <xsl:value-of
select="string-length(substring-before($vmantisa, '.'))"/>
                </xsl:variable>

                <xsl:choose>

                  <!-- really handle 923.9E-1 -->
                  <xsl:when test="$voffset &gt; $vexponent * -1">
                      <xsl:value-of select="concat($vsgn,
substring(substring-before($vmantisa, '.'), 1,
string-length(substring-before($vmantisa, '.')) + $vexponent), '.',
substring(substring-before($vmantisa, '.'),
string-length(substring-before($vmantisa, '.')) + $vexponent + 1,
$vexponent * -1), substring-after($vmantisa, '.'))"/>
                  </xsl:when>

                  <!-- really handle 9.9E-9 -->
                  <xsl:when test="$voffset &lt; $vexponent * -1 and
$voffset &gt; 0">
                      <xsl:value-of select="concat($vsgn, '0', '.',
substring($max-exp, 1, ($vexponent * -1) - $voffset),
substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
                  </xsl:when>

                  <!-- handle 9.9E-1 -->
                  <xsl:when test="$voffset = $vexponent * -1 and
$voffset &gt; 0">
                      <xsl:value-of select="concat($vsgn, '0', '.',
substring-before($vmantisa, '.'), substring-after($vmantisa, '.'))"/>
                  </xsl:when>

                  <!-- handle 9E-9 -->
                  <xsl:when test="$voffset = 0 and
string-length($vmantisa) &lt; $vexponent * -1">
                      <xsl:value-of select="concat($vsgn, '0', '.',
substring($max-exp, 1, ($vexponent * -1) - string-length($vmantisa)),
$vmantisa)"/>
                  </xsl:when>

                  <!-- handle 999E-1-->
                  <xsl:when test="$voffset = 0 and
string-length($vmantisa) &gt; $vexponent * -1">
                      <xsl:value-of select="concat($vsgn,
substring($vmantisa, 1, string-length($vmantisa) + $vexponent), '.',
substring($vmantisa, string-length($vmantisa) + $vexponent + 1,
$vexponent * -1))"/>
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
				<fo:simple-page-master master-name="carta" page-height="11.0in" page-width="8.5in" margin-top="0.30in" margin-bottom="0.30in" margin-left="0.5in" margin-right="0.5in">
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
											<fo:inline start-indent="4pt"  font-weight="bold">ESTADO FINANCIERO - BALANCE IFRS GENÉRICO</fo:inline>
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
										<fo:table-cell><fo:block><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
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
							<fo:table-column column-width="260pt"/>
							<fo:table-column column-width="20pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="150pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell><fo:block><fo:inline start-indent="4pt" color="white">.</fo:inline></fo:block></fo:table-cell>  
									<fo:table-cell><fo:block><fo:inline start-indent="4pt" color="white">.</fo:inline></fo:block></fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                	        <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Nombre Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/nombreCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									<fo:table-cell text-align="right"><fo:block><fo:inline start-indent="4pt" color="white">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/ejecutivo"/></fo:inline>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/idCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									
									<fo:table-cell text-align="right"><fo:block><fo:inline start-indent="4pt" color="white">.</fo:inline></fo:block></fo:table-cell>
									
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo del Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/ejecutivoCliente"/></fo:inline>
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
											<xsl:if test="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto/gen_tip_fcu='C'">Consolidado</xsl:if>
											<xsl:if test="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto/gen_tip_fcu='I'">Individual</xsl:if>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/tipoMoneda"/></fo:inline>
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
							<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
								<fo:table-row>
									<fo:table-cell padding="2pt" border="">
										<fo:block>
											<xsl:value-of select="str_gen_pdo_fcu" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" border="">
										<fo:block>
											<xsl:if test="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto/gen_tip_fcu='C'">Consolidado</xsl:if>
											<xsl:if test="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto/gen_tip_fcu='I'">Individual</xsl:if>
										</fo:block>
									<fo:block>
										<xsl:value-of select="gen_nom_adt" />
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>	
					
						</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="7pt">
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
					
				<fo:block font-size="6pt">
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in" >
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
   								
								<fo:table-row background-color="#D8D8D8" >
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">ACTIVOS</fo:inline>
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
   								
<!-- ************************************************************************************
-->	
					
<!-- *********************************     ACTIVOS CORRIENTES        ********************
-->

<!-- ************************************************************************************
-->

								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="2px"><fo:inline  start-indent="4pt">%</fo:inline></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								</fo:table-row>
								
   								<fo:table-row background-color="#F2F2F2" >
		                	       	<fo:table-cell>	<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px"><fo:inline font-weight="bold" start-indent="4pt">Activos Corrientes</fo:inline></fo:block></fo:table-cell>
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

   							<!-- *********************************     Efectivo y Equivalentes al Efectivo      ********************
-->	
 							<fo:table-row background-color="#EEEEEE" >

	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Efectivo y Equivalentes al Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_gen_dsp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_dsp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_dsp, "###.###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_dsp_p, "###,##","de")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
							</fo:table-row>
							
							<!-- *********************************     Otros activos financieros corrientes      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Otros activos financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_gen_val_neg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_val_neg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_val_neg, "###.###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_val_neg_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Otros Activos No Financieros, Corriente      ********************
-->									
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Otros Activos No Financieros, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_otr_act_nfin">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_act_nfin' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_act_nfin, "###.###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_otr_act_nfin_p, "###,##","de")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<!-- *********************************     Deudores comerciales y otras cuentas por cobrar corrientes      ********************
-->									
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Deudores comerciales y otras cuentas por cobrar corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_deu_com_cpc_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_deu_com_cpc_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_deu_com_cpc_cor, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_deu_com_cpc_cor_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<!-- *********************************     Cuentas por Cobrar a Entidades Relacionadas, Corriente      ********************
-->										
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Cuentas por Cobrar a Entidades Relacionadas, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_gen_cbr_erl_ctp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_cbr_erl_ctp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_cbr_erl_ctp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_cbr_erl_ctp_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<!-- *********************************     Inventarios      ********************
-->											
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Inventarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_inv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_inv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_inv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_inv_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Activos biológicos corrientes      ********************
-->											
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos biológicos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												
												<xsl:variable name="var_dai_act_bio_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_bio_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_bio_cor, "###.###","de")'/> 



											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_bio_cor_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Activos por impuesto corriente      ********************
-->											
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos por impuesto corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_gen_ipt_rpa">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_ipt_rpa' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_ipt_rpa, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_ipt_rpa_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<!-- *********************************     Partida Libre 1      ********************
-->												
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_cca_acv_cir_1">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_cir_1' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_cir_1, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_cir_1_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Partida Libre 2      ********************
-->												
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_cca_acv_cir_2">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_cir_2' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_cir_2, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_cir_2_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							
							<!-- *********************************     Partida Libre 3      ********************
-->																					
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_cca_acv_cir_3">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_cir_3' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_cir_3, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_cir_3_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Total de activos corrientes distintos de los activos o...      ********************
-->																					
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Total de activos corrientes distintos de los activos o grupos de 
											activos para su disposición clasificados como mantenidos para la venta o como mantenidos 
											para distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_tot_act_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_tot_act_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_tot_act_cor, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_tot_act_cor_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Activos no corrientes o grupos de activos para...      ********************
-->																				
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_act_ncor_man_vta">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_ncor_man_vta' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_ncor_man_vta, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_ncor_man_vta_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Activos no corrientes o grupos de activos para su...      ********************
-->																				
							<fo:table-row border-width="1pt" border-style="solid" border-color="#F2F2F2" >
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_act_ncor_dis_prop">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_ncor_dis_prop' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_ncor_dis_prop, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_ncor_dis_prop_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Activos no corrientes o grupos de activos para su disposición...      ********************
-->																					
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para la venta o como mantenidos para 
											distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_act_ncor_man_vta_dis_prop">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_ncor_man_vta_dis_prop' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_ncor_man_vta_dis_prop, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_ncor_man_vta_dis_prop_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<fo:table-row  >
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

								<xsl:variable name="var_gen_tot_acv_cir">
									<xsl:call-template name="convertSciToNumString">
									    <xsl:with-param name="myval" select='gen_tot_acv_cir' />
									</xsl:call-template>
								</xsl:variable>

							<!-- *********************************     Total Activos Corrientes      ********************
-->																					
							<fo:table-row >
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt" font-weight="bold">Total Activos Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"  padding="5px">
											
												<xsl:variable name="var_gen_tot_acv_cir">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_acv_cir' />
													</xsl:call-template>
												</xsl:variable>
											
												<xsl:value-of select='format-number($var_gen_tot_acv_cir, "###.###","de")'/> 
											 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" padding="5px">
												<xsl:value-of select='format-number(gen_tot_acv_cir_p, "###,##","de")'/> 
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

<!-- ******************************************** ACTIVOS NO CORRIENTES ********************
-->
   								<fo:table-row background-color="#F2F2F2" >
		                	       	<fo:table-cell>
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Activos No Corrientes</fo:inline>
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

   							<!-- *********************************     Inversiones en dependientes      ********************
-->																						
 							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Inversiones en dependientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_inv_dep">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_inv_dep' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_inv_dep, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_inv_dep_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
							<!-- *********************************     Otros activos financieros no corrientes      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Otros activos financieros no corrientes </fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_otr_act_fin_ncor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_act_fin_ncor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_act_fin_ncor, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_otr_act_fin_ncor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

							<!-- *********************************     Otros activos no financieros no corrientes      ********************
-->		
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Otros activos no financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_otr_act_nfin_ncor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_act_nfin_ncor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_act_nfin_ncor, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_otr_act_nfin_ncor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Derechos por cobrar no corriente      ********************
-->	
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Derechos por cobrar no corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_dai_der_pcob_ncor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_der_pcob_ncor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_der_pcob_ncor, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_der_pcob_ncor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Cuentas por Cobrar a Entidades Relacionadas,...      ********************
-->		
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Cuentas por Cobrar a Entidades Relacionadas, No Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
      												<xsl:variable name="var_gen_cbr_erl_lgp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_cbr_erl_lgp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_cbr_erl_lgp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_cbr_erl_lgp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								

							<!-- *********************************     Inversiones contabilizadas utilizando el método...      ********************
-->			
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Inversiones contabilizadas utilizando el método de la participación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
      												<xsl:variable name="var_dai_inv_con">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_inv_con' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_inv_con, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_inv_con_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Activos intangibles distintos de la plusvalía      ********************
-->				
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos intangibles distintos de la plusvalía</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
													<xsl:variable name="var_gen_itg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_itg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_itg, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_itg_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Plusvalía      ********************
-->					
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Plusvalía</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_gen_men_val_inv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_men_val_inv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_men_val_inv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_men_val_inv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Propiedades, Planta y Equipo      ********************
-->						
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Propiedades, Planta y Equipo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_gen_maq_eqp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_maq_eqp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_maq_eqp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(gen_maq_eqp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Activos biológicos, no corrientes      ********************
-->							
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos biológicos, no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_act_bio_ncor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_bio_ncor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_bio_ncor, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_bio_ncor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								

							<!-- *********************************     Propiedad de inversión      ********************
-->								
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Propiedad de inversión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_prop_inv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_prop_inv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_prop_inv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_prop_inv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								

							<!-- *********************************     Activos por impuestos diferidos      ********************
-->									
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Activos por impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dai_act_imp_dif">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_act_imp_dif' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_act_imp_dif, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(dai_act_imp_dif_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Partida Libre Act LP 1      ********************
-->										
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_cca_acv_lgp_1">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_lgp_1' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_lgp_1, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_lgp_1_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Partida Libre Act LP 2      ********************
-->			
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_cca_acv_lgp_2">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_lgp_2' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_lgp_2, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_lgp_2_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<!-- *********************************     Partida Libre Act LP 3      ********************
-->		
							<fo:table-row background-color="#EEEEEE" >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_cca_acv_lgp_3">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_acv_lgp_3' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_acv_lgp_3, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:value-of select='format-number(cca_acv_lgp_3_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<fo:table-row  >
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

   							<!-- *********************************     Total Activos No Corrientes      ********************
-->			
							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold"  padding="5px">
											<fo:inline start-indent="4pt">Total Activos No Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold"  padding="5px">
												<xsl:variable name="var_gen_tot_otr_acv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_otr_acv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_otr_acv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold"  padding="5px">
												<xsl:value-of select='format-number(gen_tot_otr_acv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							<fo:table-row  >
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

							<!-- *********************************     TOTAL ACTIVOS      ********************
-->	
   							<fo:table-row >
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold" padding="5px">
											<fo:inline start-indent="4pt">TOTAL ACTIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" padding="2px">
												<xsl:variable name="var_gen_tot_acv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_acv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_acv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(gen_tot_acv_p, "###,##","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						  					

<!-- ************************************************************************************
-->	
					
<!-- *********************************       PASIVOS		         ********************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
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
 								
								<fo:table-row background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">PASIVOS</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
<!-- ******************************************** PASIVOS CORRIENTES ********************
-->
								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="2px"><fo:inline  start-indent="4pt">%</fo:inline></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								</fo:table-row>
								
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block  padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Pasivos Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline  color="#F2F2F2"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

   							<!-- *********************************     Otros pasivos financieros corrientes      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros pasivos financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_pas_fin_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_pas_fin_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_pas_fin_cor, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_pas_fin_cor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Cuentas por pagar comerciales y otras cuentas por pagar      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cuentas por pagar comerciales y otras cuentas por pagar</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_cpp_com_otr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_cpp_com_otr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_cpp_com_otr, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_cpp_com_otr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Cuentas por pagar a Entidades Relacionadas, Corriente      ********************
-->	   								
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cuentas por pagar a Entidades Relacionadas, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_pag_erl_ctp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_pag_erl_ctp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_pag_erl_ctp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_pag_erl_ctp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

   							<!-- *********************************     Otras provisiones a corto plazo      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras provisiones a corto plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_prov_cp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_prov_cp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_prov_cp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_prov_cp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otras provisiones a corto plazo      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivos por Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_iar_psv">
												<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_iar_psv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_iar_psv, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_iar_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otras provisiones a corto plazo      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones corrientes por beneficios a los empleados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_prov_cor_ben_emp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_prov_cor_ben_emp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_prov_cor_ben_emp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_prov_cor_ben_emp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otros pasivos no financieros corrientes      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros pasivos no financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_pas_nfin_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_pas_nfin_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_pas_nfin_cor, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_pas_nfin_cor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas CP 1      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cca_psv_cir_1">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_psv_cir_1' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_psv_cir_1, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cca_psv_cir_1_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas CP 2      ********************
-->		
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cca_psv_cir_2">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_psv_cir_2' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_psv_cir_2, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cca_psv_cir_2_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas CP 3      ********************
-->		
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cca_psv_cir_3">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_psv_cir_3' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_psv_cir_3, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cca_psv_cir_3_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Total de pasivos corrientes distintos de ...      ********************
-->		
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total de pasivos corrientes distintos de los pasivos 
											incluidos en grupos de activos para su disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_tot_pas_cor">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_tot_pas_cor' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_tot_pas_cor, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_tot_pas_cor_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Pasivos incluidos en grupos de activos para ...      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivos incluidos en grupos de activos para su 
											disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_pas_mnt_vta">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_pas_mnt_vta' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_pas_mnt_vta, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_pas_mnt_vta_p, "###,##","de")'/>
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

   							<!-- *********************************     Total Pasivos Corrientes      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold" padding="2px">
											<fo:inline start-indent="4pt">Total Pasivos Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" padding="2px">
												<xsl:variable name="var_gen_tot_psv_cir">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_psv_cir' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_psv_cir, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(gen_tot_psv_cir_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

<!-- ******************************************** PASIVOS NO CORRIENTES ********************
-->

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
								
   								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Pasivos No Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell>	<fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

   							<!-- *********************************     Otros pasivos financieros no corrientes      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros pasivos financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_obl_bf">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_obl_bf' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_obl_bf, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_obl_bf_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Pasivos no corrientes      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivos no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_pas_no_cte">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_pas_no_cte' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_pas_no_cte, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_pas_no_cte_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Cuentas por Pagar a Entidades Relacionadas, no corriente      ********************
-->		
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cuentas por Pagar a Entidades Relacionadas, no corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_pag_erl_lgp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_pag_erl_lgp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_pag_erl_lgp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_pag_erl_lgp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otras provisiones a largo plazo      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras provisiones a largo plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_prov_lp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_prov_lp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_prov_lp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_prov_lp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Pasivo por impuestos diferidos      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivo por impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_ipt_dfr_psv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_ipt_dfr_psv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_ipt_dfr_psv, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_ipt_dfr_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Provisiones no corrientes por beneficios a los empleados      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Provisiones no corrientes por beneficios a los empleados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_prv_no_crt_ben_emp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_prv_no_crt_ben_emp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_prv_no_crt_ben_emp, "###.###","de")'/> 

       										</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_prv_no_crt_ben_emp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otros pasivos no financieros no corrientes      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros pasivos no financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_no_fin_no_crt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_no_fin_no_crt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_no_fin_no_crt, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_no_fin_no_crt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas LP 1      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cca_psv_lgp_1">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_psv_lgp_1' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_psv_lgp_1, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cca_psv_lgp_1_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas LP 2      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cca_psv_lgp_2">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cca_psv_lgp_2' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cca_psv_lgp_2, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cca_psv_lgp_2_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Partida Libre Pas LP 3      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_pas_ncor_op">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_pas_ncor_op' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_pas_ncor_op, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_pas_ncor_op_p, "###,##","de")'/>
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

   							<!-- *********************************     Total Pasivos No Corrientes      ********************
-->		
   							<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block  font-weight="bold"  padding="2px">
											<fo:inline start-indent="4pt">Total Pasivos No Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_gen_tot_psv_lgp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_psv_lgp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_psv_lgp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(gen_tot_psv_lgp_p, "###,##","de")'/>
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

   							<!-- *********************************     Total Pasivos      ********************
-->		
   							<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold"  start-indent="4pt">Total Pasivos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_gen_tot_psv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_psv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_psv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold"   padding="2px">
												<xsl:value-of select='format-number(gen_tot_psv_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row >
		                	       	<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
<!-- ******************************************** PATRIMONIO ********************
-->

   								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell>	<fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

							<!-- *********************************     Capital emitido      ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Capital emitido</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_cpi_pag">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_cpi_pag' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_cpi_pag, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_cpi_pag_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Ganancias (pérdidas) acumuladas      ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Ganancias (pérdidas) acumuladas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_psv_res_ejr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_psv_res_ejr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_psv_res_ejr, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_psv_res_ejr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Primas de emisión      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Primas de emisión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_sbp_vta_acc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_sbp_vta_acc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_sbp_vta_acc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_sbp_vta_acc_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Acciones propias en cartera      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Acciones propias en cartera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_acc_prop_car">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_acc_prop_car' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_acc_prop_car, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_acc_prop_car_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otras participaciones en el patrimonio      ********************
-->		
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras participaciones en el patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_par_pat">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_par_pat' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_par_pat, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_par_pat_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otras reservas      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras reservas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_otr_res">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_otr_res' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_otr_res, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_otr_res_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Patrimonio atribuible a los propietarios ...     ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Patrimonio atribuible a los propietarios de la controladora</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dai_ptr_prp_ctr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_ptr_prp_ctr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_ptr_prp_ctr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dai_ptr_prp_ctr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Participaciones no controladoras     ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Participaciones no controladoras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_int_men_res">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_int_men_res' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_int_men_res, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_int_men_res_p, "###,##","de")'/>
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
   							
							<!-- *********************************     Total Patrimonio      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block  font-weight="bold" padding="2px">
											<fo:inline start-indent="4pt">Total Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:variable name="var_gen_tot_ptm">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_tot_ptm' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_tot_ptm, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(gen_tot_ptm_p, "###,##","de")'/>
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

   							<!-- *********************************     TOTAL PASIVOS Y PATRIMONIO      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold" padding="2px">
											<fo:inline start-indent="4pt">TOTAL PASIVOS Y PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:variable name="var_dai_tot_pat_pas">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dai_tot_pat_pas' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dai_tot_pat_pas, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(dai_tot_pat_pas_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   						</fo:table-body>
   					</fo:table>

<!-- ************************************************************************************
-->	
					
<!-- *********************************       ESTADO DE RESULTADO     ********************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
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
  								
   								<fo:table-row  background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">ESTADO DE RESULTADO</fo:inline>
										</fo:block>
									</fo:table-cell>
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
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="2px"><fo:inline  start-indent="4pt">%</fo:inline></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								   <fo:table-row>
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
								
							<!-- *********************************     Ingresos explotación      ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Ingresos explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ing_exp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ing_exp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ing_exp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ing_exp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Costos explotación      ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Costos explotación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cst_exp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cst_exp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cst_exp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(cst_exp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Depreciación (menos)     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depreciación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_dpn">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_dpn' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_dpn, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_dpn_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Margen explotación     ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  font-weight="bold" padding="2px">
											<fo:inline start-indent="4pt">Margen explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_mrg_exp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='mrg_exp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_mrg_exp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold" padding="2px">
												<xsl:value-of select='format-number(mrg_exp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Gastos de administración y ventas (menos)     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos de administración y ventas (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gst_adm">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gst_adm' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gst_adm, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gst_adm_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Resultado Operacional     ********************
-->
							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  font-weight="bold"  padding="2px">
											<fo:inline start-indent="4pt">Resultado Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_rsl_opr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='rsl_opr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_rsl_opr, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(rsl_opr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Ingresos financieros     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Ingresos financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_ing_fin">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_ing_fin' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_ing_fin, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_ing_fin_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Utilidad inversiones emp.relacionadas     ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad inversiones emp.relacionadas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_erf_par_gan">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='erf_par_gan' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_erf_par_gan, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(erf_par_gan_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Otros ingresos fuera de explotación     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros ingresos fuera de explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_ing">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_ing' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_ing, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(otr_ing_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Pérdida inversión emp. Relacionadas (menos)     ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdida inversión emp. Relacionadas (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_prd_emp_rlc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='prd_emp_rlc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_prd_emp_rlc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(prd_emp_rlc_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
							<!-- *********************************    Amortazacion menor valor inversiones (menos)  ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Amortización menor valor inversiones (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_amo_men_val">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_amo_men_val' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_amo_men_val, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_amo_men_val_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
							<!-- *********************************    Gastos Financieros (menos) ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos Financieros (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_gto_fin">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_gto_fin' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_gto_fin, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_gto_fin_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Otros egresos fuera de explotación (menos)     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros egresos fuera de explotación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_egr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_egr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_egr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(otr_egr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************    Coreccion Monetaria     ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Corrección Monetaria</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_gen_cmt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gen_cmt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gen_cmt, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(gen_cmt_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
							
							<!-- *********************************    Dif Cambio     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Dif Cambio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dif_cam">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dif_cam' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dif_cam, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(dif_cam_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
							<!-- *********************************        ******************** -->
								<fo:table-row >
		                	       	<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block padding="2px"><fo:inline  color="white"  start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
							<!-- *********************************     Resultado no operacional     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Resultado no operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_rsl_no_opr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='rsl_no_opr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_rsl_no_opr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(rsl_no_opr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Resultado antes impuesto a la renta     ********************
-->
   							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Resultado antes impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_rsl_ant_imp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='rsl_ant_imp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_rsl_ant_imp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(rsl_ant_imp_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Impuesto a la renta (menos)     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Impuesto a la renta (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_imp_gnc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='imp_gnc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_imp_gnc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(imp_gnc_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Utilidad (pérdida) consolidada     ********************
-->
   							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad (pérdida) consolidada</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_utl">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='utl' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_utl, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(utl_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Utilidad (pérdida) líquida     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  font-weight="bold"  padding="2px">
											<fo:inline start-indent="4pt">Utilidad (pérdida) líquida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_utl_lqd">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='utl_lqd' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_utl_lqd, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(utl_lqd_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Amortización mayor valor inversiones     ********************
-->
   							<fo:table-row >
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Amortización mayor valor inversiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_amt_myr_vlr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='amt_myr_vlr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_amt_myr_vlr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(amt_myr_vlr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Utilidad (pérdida) ejercicio     ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  font-weight="bold"  padding="2px">
											<fo:inline start-indent="4pt">Utilidad (pérdida) ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:variable name="var_utl_ejr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='utl_ejr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_utl_ejr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  font-weight="bold"  padding="2px">
												<xsl:value-of select='format-number(utl_ejr_p, "###,##","de")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   						</fo:table-body>
   					</fo:table>
   					

<!-- ************************************************************************************
-->	
					
<!-- *********************************        DATOS ADICIONALES      ********************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-body>								
   								
								<fo:table-row background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">DATOS ADICIONALES</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="8pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block>	</fo:table-cell>
   								</fo:table-row>
								


								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#FFFFFF">
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block ><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								</fo:table-row>
								
<!-- ***************************************** DATOS ADICIONALES ESTADO SITUACION*************************************
-->
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Estado de Situación Financiera Clasificado</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

							<!-- *********************************     Deudores Varios      ********************
-->   								
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Deudores Varios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_deu_var">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_deu_var' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_deu_var, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
							
							<!-- *********************************     Documentos por Cobrar      ********************
-->  	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Documentos por Cobrar</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_doc_cbr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_doc_cbr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_doc_cbr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Obl. c/Bcos. e Ins. Finan. Porción CP de Deuda LP      ********************
--> 	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obl. c/Bcos. e Ins. Finan. Porción CP de Deuda LP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_obl_bf_lgp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_obl_bf_lgp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_obl_bf_lgp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<!-- *********************************     Obl. c/Público (Efec. de Comercio) Porción Corriente      ********************
--> 	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obl. c/Público (Efec. de Comercio) Porción Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_obl_pub">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_obl_pub' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_obl_pub, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Obl. c/Público (Bonos) Porción Corriente      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obl. c/Público (Bonos) Porción Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_obl_pub_ctp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_obl_pub_ctp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_obl_pub_ctp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Obl. Largo Plazo con Vcto. 1 Año      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obl. Largo Plazo con Vcto. 1 Año</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_obl_lgp_ano">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_obl_lgp_ano' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_obl_lgp_ano, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Acreedores Varios      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Acreedores Varios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_acr_var">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_acr_var' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_acr_var, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Obligaciones Leasing CP      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Obligaciones Leasing CP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_obl_lea_ctp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_obl_lea_ctp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_obl_lea_ctp, "###.###","de")'/> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
								
<!-- ***************************************** DATOS ADICIONALES ESTADO RESULTADO*************************************
-->
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Estado de Resultado</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>   								

   							<!-- *********************************     Depreciación      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depreciación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_dep">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_dep' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_dep, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Amortización de Intangibles      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Amortización de Intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_amt_itg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_amt_itg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_amt_itg, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Gastos Financieros Capitalizados en el Ejercicio      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos Financieros Capitalizados en el Ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_gto_fin_cap_eje">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_gto_fin_cap_eje' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_gto_fin_cap_eje, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otros conceptos que no son flujo y que pudieran...      ********************
-->	
							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros conceptos que no son flujo y que pudieran estar en el 
												resultado operacional distintos a la  depreciación y amortización de intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_otr_cpt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_otr_cpt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_otr_cpt, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Reversión de pérdidas por det...      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Reversión de pérdidas por deterioro de valor 
												(pérdidas por deterioro de valor) reconocidas en el resultado del periodo </fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_rev_per">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_rev_per' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_rev_per, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
<!-- ***************************************** DATOS ADICIONALES PATRIMONIO*************************************
-->
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>   								

   							<!-- *********************************     Incremento (Disminución) por Cambios en Políticas...      ********************
-->	
							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Cambios en Políticas Contables</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_cbo_pol_con">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_cbo_pol_con' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_cbo_pol_con, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Incremento (Disminución) por Correcciones de Errores      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Correcciones de Errores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_crr_err">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_crr_err' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_crr_err, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otro Resultado Integral, Incremento (Disminución)      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otro Resultado Integral, Incremento (Disminución)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_otr_res_int">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_otr_res_int' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_otr_res_int, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Emisión de Patrimonio      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Emisión de Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_emi_ptm">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_emi_ptm' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_emi_ptm, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

   							<!-- *********************************     Dividendos      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Dividendos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_div">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_div' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_div, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Incremento (Disminución) por Otras Aportaciones de los ...      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Otras Aportaciones de los Propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_otr_apo">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_otr_apo' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_otr_apo, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Disminución (Incremento) por Otras Distribuciones ...      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Disminución (Incremento) por Otras Distribuciones a los Propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_otr_dis">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_otr_dis' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_otr_dis, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Incremento (Disminución) por Transferencias y Otros ...      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Transferencias y Otros Cambios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_tra">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_tra' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_tra, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   							<!-- *********************************     Incremento (Disminución) por Transacciones de Acciones  ...      ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Transacciones de Acciones en Cartera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_trn_acc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_trn_acc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_trn_acc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Incremento (Disminución) por Cambios en ...      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por Cambios en la Participación 
											de Subsidiarias que no Impliquen Pérdida de Control</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_cbo_par">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_cbo_par' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_cbo_par, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

							<fo:table-row >
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
								<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
							</fo:table-row>
								

<!-- ***************************************** DATOS ADICIONALES ACTIVOS FIJOS *************************************
-->
								<fo:table-row background-color="#F2F2F2">
		                	       	<fo:table-cell>
										<fo:block font-size="7pt" padding-top="5px" padding-bottom="5px">
											<fo:inline font-weight="bold">Datos Adicionales Activos Fijos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>

							<!-- *********************************     Incremento (Disminución) por Cambios en ...      ********************
-->
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Adquisiciones Mediante Combinaciones de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_adq_cmb_neg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_adq_cmb_neg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_adq_cmb_neg, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Desapropiaciones      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Desapropiaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_des">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_des' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_des, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Transferencias a (desde) Activos No Corrient...      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Transferencias a (desde) Activos No Corrientes y 
											Grupos en Desapropiación Mantenidos para la Venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_trf_acv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_trf_acv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_trf_acv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

   							<!-- *********************************     Transferencia (desde) Propiedades de Inversión      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Transferencia (desde) Propiedades de Inversión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_trf_prp_inv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_trf_prp_inv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_trf_prp_inv, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Desapropiaciones mediante Enajenación de Negocios      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Desapropiaciones mediante Enajenación de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_des_ena_neg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_des_ena_neg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_des_ena_neg, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Retiros      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Retiros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_ret">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_ret' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_ret, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Retiros      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento) por Revaluación Reconocido en Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_rev_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_rev_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_rev_ptm_net, "###.###","de")'/> 


											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Pérdida por Deteriodo Reconocida en el Patrimonio Neto      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdida por Deteriodo Reconocida en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_per_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_per_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_per_ptm_net, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Reversiones de Deterioro de Valor Reconocidas ...      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Reversiones de Deterioro de Valor Reconocidas en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_rev_rec_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_rev_rec_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_rev_rec_ptm_net, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Incremento (Decremento)por Revaluación Reconocido en ...      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento)por Revaluación Reconocido en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_rev_est_res">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_rev_est_res' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_rev_est_res, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>


   							<!-- *********************************     Pérdida (reversión) por Deterioro de propiedad plantas ...      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdida (reversión) por Deterioro de propiedad plantas y equipos reconocidas en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_per_pla_equ">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_per_pla_equ' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_per_pla_equ, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

   							<!-- *********************************     Incremento (Decremento) en el Cambio de Moneda Extranjera      ********************
-->	
   							<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento) en el Cambio de Moneda Extranjera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_oda_inc_cbo_mon_ext">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_cbo_mon_ext' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_cbo_mon_ext, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   							<!-- *********************************     Otros Incrementos (Decrementos)      ********************
-->	
   							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Otros Incrementos (Decrementos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_oda_otr_inc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_otr_inc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_otr_inc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
							</fo:table-body>
						</fo:table>
			
<!-- ************************************************************************************
-->	
					
<!-- *********************************       INDICADORES		      ********************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-body>

   								
								<fo:table-row background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
											<fo:inline font-weight="bold" start-indent="4pt">INDICADORES</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8" font-size="7pt"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
							
								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="5px"></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
										<fo:table-cell text-align="right"><fo:block padding="2px"></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

<!-- ***************************************** INDICADORES LIQUIDEZ************************************* 	-->
   								<fo:table-row >
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
								<fo:table-row background-color="#F2F2F2">
							       	<fo:table-cell>
										<fo:block  padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Indicadores de Liquidez</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
	   							</fo:table-row>
								
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Liquidez Corriente</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_lqd_cte, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Liquidez Ácida</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_lqd_aci, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
   								
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Permanencia de Inventarios</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_prm_inv, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">												
												<fo:inline start-indent="4pt">Ms</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Permanencia de Créditos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_prm_crd, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Ms</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Permanencia de Cuentas por Pagar</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_prm_cts_pgr, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Ms</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
<!-- ***************************************** COBERTURA CARGA FINANCIERA*************************************
-->

								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	    	<fo:table-cell background-color="#F2F2F2" >
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Cobertura Carga Financiera</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2" padding="2px"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
	   							</fo:table-row>
								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Operacional / Gastos financieros</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_crg_fnc1, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							
	   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Operacional / Gastos financieros+Gastos Financieros Capitalizados en el Ejercicio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_int_cpt1, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							
	   							
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">EBITDA/Gastos Financieros</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_crg_fnc2, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
								
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">EBITDA/(Gastos Financieros + Gastos Financieros Capitalizados en el Ejercicio)</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:value-of select='format-number(ind_int_cpt2, "###.###,##","de")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Flujo de Caja Disponible Para el Servicio de la Deuda      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Flujo de Caja Disponible Para el Servicio de la Deuda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_flj_cja_dsp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='flj_cja_dsp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_flj_cja_dsp,"###.###,##","de")' />

											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block  padding="2px">
												<xsl:value-of select="moneda" />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
<!-- ***************************************** INDICADORES RENTABILIDAD Y GENRACION*************************************
-->
								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
							
   								<fo:table-row background-color="#F2F2F2">
		                	    	<fo:table-cell>
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Indicadores de Rentabilidad y Generación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
	   							</fo:table-row>				

	   						<!-- *********************************     EBITDA      ********************
-->		
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_ebitda">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ebitda' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ebitda, "###.###","de")'/> 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	  
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Operacional/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_opr_vnt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_utl_vnt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	  
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad/Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_utl_ptr, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>									
									</xsl:for-each>	
								</fo:table-row>
								
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Antes CM/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_utl_ant_CM_vnt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Antes CM/Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_utl_ant_CM_ptr, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
<!-- ***************************************** INDICADORES ENDEUDAMIENTO *************************************
-->

								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
   								<fo:table-row background-color="#F2F2F2">
		                	    	<fo:table-cell>
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Endeudamiento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
	   							</fo:table-row>				
	   								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Leverage</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_lvr, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Deuda Financiera/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_dda_fnc_ebt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Deuda Financiera Neta/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_dda_fnc_nta_ebt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivo Exigible/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_psv_exg_ebt, "###.###,##","de")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Añ</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Cobertura del Servicio de la Deuda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<xsl:value-of select='format-number(ind_cbr_dda, "###.###,##","de")' />
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
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px"><fo:inline color="white" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
   								</fo:table-row>
								
   								<fo:table-row background-color="#F2F2F2">
		                	    	<fo:table-cell>
										<fo:block padding="2px">
											<fo:inline font-weight="bold" start-indent="4pt">Otros</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#F2F2F2"><fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
	   							</fo:table-row>		

	   						<!-- *********************************     Patrimonio Neto      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Patrimonio Neto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_ptr_nto">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ptr_nto' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ptr_nto, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Pasivo Exigible      ********************
-->	
	   						<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivo Exigible</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_psv_exg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='psv_exg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_psv_exg, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Capital de Trabajo      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Capital de Trabajo</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_cpt_trb">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cpt_trb' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cpt_trb, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Activos No Corrientes Disponibles Para la Venta      ********************
-->	
	   						<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Activos No Corrientes Disponibles Para la Venta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_act_no_cte_dsp_vnt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='act_no_cte_dsp_vnt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_act_no_cte_dsp_vnt, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Pasivos No Corrientes Disponibles Para la Venta      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pasivos No Corrientes Disponibles Para la Venta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_psv_no_cte_dsp_vta">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='psv_no_cte_dsp_vta' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_psv_no_cte_dsp_vta, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Costo de Ventas      ********************
-->	
	   						<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Costo de Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_cst_vts">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cst_vts' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cst_vts, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Depreciación      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Depreciación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_dpr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dpr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dpr, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Amortización de Intangibles      ********************
-->	
	   						<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Amortización de Intangibles</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_amr_int">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='amr_int' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_amr_int, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							

	   						<!-- *********************************     Pérdidas por Deterioro (Reversiones), Total, Neto      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdidas por Deterioro (Reversiones), Total, Neto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_prd_dtr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='prd_dtr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_prd_dtr, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Gastos Administración y Ventas      ********************
-->	
	   						<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Gastos Administración y Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_gst_adm_vts">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='gst_adm_vts' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_gst_adm_vts, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>

	   						<!-- *********************************     Utilidad Operacional      ********************
-->	
	   						<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Utilidad Operacional</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
												<xsl:variable name="var_utl_opr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='utl_opr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_utl_opr, "###.###","de")'/> 

										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block  padding="2px">
											<xsl:value-of select="moneda" />
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
							</fo:table-body>
						</fo:table>

<!-- ************************************************************************************
-->	
					
<!-- *****************       Reportes Reconciliacion Activo Inmovilizado		      *******************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
   								</fo:table-row>
							
   								<fo:table-row background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px">
												<fo:inline font-weight="bold" start-indent="4pt">RECONCILIACIÓN DEL ACTIVO INMOVILIZADO</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
   								</fo:table-row>
								
								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row background-color="#FFFFFF">
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
   								</fo:table-row>
								
							<!-- *********************************     Saldo inicial propiedad plantas y equipos (final ...      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Saldo inicial propiedad plantas y equipos (final periodo anterior)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_sld_inc_ppe">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='sld_inc_ppe' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_sld_inc_ppe, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Menos Depreciacion del ejercicio     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block padding="2px">
											<fo:inline start-indent="4pt">Menos Depreciación del ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block padding="2px">
												<xsl:variable name="var_dpr_ejr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dpr_ejr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dpr_ejr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Adquisiciones Mediante Combinaciones de Negocios     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Adquisiciones Mediante Combinaciones de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_adq_cmb_neg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='adq_cmb_neg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_adq_cmb_neg, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Desapropiaciones     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Desapropiaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_des">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_des' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_des, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Otros Incrementos (Decrementos)     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otros Incrementos (Decrementos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_inc">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_inc' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_inc, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Desapropiaciones mediante Enajenación de Negocios     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Desapropiaciones mediante Enajenación de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_des_ena_neg">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='des_ena_neg' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_des_ena_neg, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Retiros     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Retiros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ret">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ret' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ret, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Total variaciones que representan flujo de caja     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total variaciones que representan flujo de caja</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_flj_cja">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_flj_cja' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_flj_cja, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (Decremento) por Revaluación Reconocido...     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento) por Revaluación Reconocido en Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_oda_inc_rev_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='oda_inc_rev_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_oda_inc_rev_ptm_net, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Pérdida por Deterioro Reconocida en el Patrimonio Neto     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdida por Deterioro Reconocida en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_per_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='per_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_per_ptm_net, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Reversiones de Deterioro de Valor Reconocidas en el Pat...     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Reversiones de Deterioro de Valor Reconocidas en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_rev_rec_ptm_net">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='rev_rec_ptm_net' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_rev_rec_ptm_net, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (Decremento) por Revaluación Reconocido en ...     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento) por Revaluación Reconocido en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_inc_rev_est_res">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='inc_rev_est_res' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_inc_rev_est_res, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Pérdida (reversión) por Deterioro de propiedad plantas y...     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Pérdida (reversión) por Deterioro de propiedad plantas y equipos reconocida en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_per_pla_equ">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='per_pla_equ' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_per_pla_equ, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Pérdida (reversión) por Deterioro de propiedad plantas y...     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Decremento) en el Cambio de Moneda Extranjera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_inc_cbo_mon_ext">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='inc_cbo_mon_ext' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_inc_cbo_mon_ext, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Transferencias a (desde) Activos No Corrientes y Grupos...     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Transferencias a (desde) Activos No Corrientes y Grupos en Desapropiación Mantenidos para la Venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_trf_acv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='trf_acv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_trf_acv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Transferencia a (desde) propiedades de Inversion     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Transferencia a (desde) propiedades de Inversión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_trf_prp_inv">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='trf_prp_inv' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_trf_prp_inv, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Total variaciones que no representan flujo de caja     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total variaciones que no representan flujo de caja</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_no_cja">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_no_cja' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_no_cja, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Total variaciones de propiedad planta y equipo     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total variaciones de propiedad planta y equipo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_ppe">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_ppe' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_ppe, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Saldo final propiedad planta y equipo     ********************
-->	
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Saldo final propiedad planta y equipo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_sld_fnl_ppe">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='sld_fnl_ppe' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_sld_fnl_ppe, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Compras de Propiedad planta y equipo     ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Compras de Propiedad planta y equipo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRActInmovilizadoGen/reporteRActInmovilizadoGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cmp_ppe">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cmp_ppe' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cmp_ppe, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
						
<!-- ************************************************************************************
-->	
					
<!-- *****************       Reportes Reconciliacion Patrimonial		      *******************
-->

<!-- ************************************************************************************
-->

					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							
							<fo:table-body>
							
								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
   								
								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
   								
								<fo:table-row >
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block  padding="2px">	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
								
								<fo:table-row >
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block>	<fo:inline  color="white"  start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>									
   								</fo:table-row>
							
   								<fo:table-row background-color="#D8D8D8">
		                	       	<fo:table-cell>
										<fo:block font-size="8pt" padding-top="3px" padding-bottom="3px"><fo:inline font-weight="bold" start-indent="4pt">RECONCILIACIÓN PATRIMONIAL</fo:inline></fo:block>
									</fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#D8D8D8"><fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
   								</fo:table-row>

								<fo:table-row>
									<fo:table-cell><fo:block padding="5px"><fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="5px"><xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell><fo:block padding="2px"><fo:inline font-weight="bold"  start-indent="4pt">Meses</fo:inline></fo:block></fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right"><fo:block padding="2px"><xsl:value-of select="gen_num_mes" /></fo:block></fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#FFFFFF">
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline></fo:block></fo:table-cell>
									<fo:table-cell><fo:block background-color="#FFFFFF"><fo:inline font-weight="bold" color="#FFFFFF" start-indent="4pt">.</fo:inline>	</fo:block></fo:table-cell>
   								</fo:table-row>
   							<!-- *********************************     Saldo inicial patrimonio (final período anterior)      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Saldo inicial patrimonio (final período anterior)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_sld_inc_ptr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='sld_inc_ptr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_sld_inc_ptr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Más utilidad (pérdida) neta      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Más utilidad (pérdida) neta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_utl_nta">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='utl_nta' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_utl_nta, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Emisión de patrimonio      ********************
-->
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Emisión de patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ems_ptr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ems_ptr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ems_ptr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Dividendos      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Dividendos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_dvd">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='dvd' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_dvd, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (disminución) por otras aportaciones de los...      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (disminución) por otras aportaciones de los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_apr_prp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_apr_prp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_apr_prp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Disminución (incremento) por otras distribuciones a los...      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Disminución (incremento) por otras distribuciones a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_dst_prp">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_dst_prp' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_dst_prp, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (disminución) por transacciones de acciones...      ********************
-->
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (disminución) por transacciones de acciones en cartera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_trn_acc_crt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='trn_acc_crt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_trn_acc_crt, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Total de variaciones que representan flujo de caja      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total de variaciones que representan flujo de caja</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_flj">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_flj' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_flj, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (disminución) por cambios en la participación...      ********************
-->
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (disminución) por cambios en la participación de subsidiarias que no impliquen pérdida de control</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cmb_prt_sbs">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cmb_prt_sbs' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cmb_prt_sbs, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (disminución) por cambios en políticas contables      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (disminución) por cambios en políticas contables</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_cmb_plt_cnt">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='cmb_plt_cnt' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_cmb_plt_cnt, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (disminución) por correcciones de errores      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (disminución) por correcciones de errores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_crr_err">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='crr_err' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_crr_err, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Otro Resultado Integral      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otro Resultado Integral</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_rsl_int">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_rsl_int' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_rsl_int, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Incremento (Disminucion)por transferencias y otros cambios      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Incremento (Disminución) por transferencias y otros cambios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_trn_otr_cmb">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='trn_otr_cmb' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_trn_otr_cmb, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<!-- *********************************     Total variaciones que no representan flujo de caja      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total variaciones que no representan flujo de caja</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_no_flj">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_no_flj' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_no_flj, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
							<!-- *********************************     Total variaciones Patrimoniales      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Total variaciones Patrimoniales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_ttl_vrc_ptr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='ttl_vrc_ptr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_ttl_vrc_ptr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
							</fo:table-row>
						
							<!-- *********************************     Otras variaciones Patrimoniales      ********************
-->
 							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Otras variaciones Patrimoniales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_otr_vrc_ptr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='otr_vrc_ptr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_otr_vrc_ptr, "###.###","de")'/> 

											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

							<!-- *********************************     Saldo final patrimonio      ********************
-->	
 							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block  padding="2px">
											<fo:inline start-indent="4pt">Saldo final patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/reporteRPatrimonialGen/reporteRPatrimonialGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block  padding="2px">
												<xsl:variable name="var_sld_fnl_ptr">
													<xsl:call-template name="convertSciToNumString">
													    <xsl:with-param name="myval" select='sld_fnl_ptr' />
													</xsl:call-template>
												</xsl:variable>
												<xsl:value-of select='format-number($var_sld_fnl_ptr, "###.###","de")'/> 

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