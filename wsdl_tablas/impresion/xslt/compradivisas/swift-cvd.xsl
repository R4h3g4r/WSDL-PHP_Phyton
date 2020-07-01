<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  version="1.0" 
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                 xmlns:fo="http://www.w3.org/1999/XSL/Format" 
                 xmlns:xhtml="http://www.w3.org/1999/xhtml">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set><!-- A4-portrait -->
                <fo:simple-page-master master-name="Letter" page-height="29.7cm" 
                    page-width="21.0cm" margin="1cm">
                 <fo:region-body/>
                </fo:simple-page-master>
                </fo:layout-master-set>
				<fo:page-sequence master-reference="Letter">
					<fo:flow flow-name="xsl-region-body">
						<!-- LOGO BCI -->
					    <fo:block padding-top="0pt" text-align="left">
			                    <fo:external-graphic height="50px">
								  <xsl:attribute name="src">
								    <xsl:value-of select="root/logoBanco/@value"/>						
								  </xsl:attribute>
			                    </fo:external-graphic>
				        </fo:block>
		        		<!-- FIN LOGO BCI -->
		        		<fo:block>&#160;</fo:block>
						<fo:block font-size="9pt" text-align="center" font-family="Courier" white-space-collapse="false">
								<xsl:value-of select="root/htmlSwift" />
						</fo:block>
						<fo:block>&#160;</fo:block>
						<!-- FIRMA DE AGUA -->
                    	<fo:block padding-top="0pt" text-align="left">
	                    	<fo:external-graphic height="85px">
								<xsl:attribute name="src">
									<xsl:value-of select="root/selloAgua/@value"/>						
								</xsl:attribute>
	                    	</fo:external-graphic>
	                	</fo:block>
	                	<!-- FIN FIRMA DE AGUA -->
					</fo:flow>
				</fo:page-sequence>	
        </fo:root>
    </xsl:template>
</xsl:stylesheet>