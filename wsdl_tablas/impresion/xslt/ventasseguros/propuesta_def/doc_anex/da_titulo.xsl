<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="temp_da_titulo">
		<fo:block>
			<fo:table table-layout="fixed" width="{$varTablaAncho}">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2.0pt" border-style="solid" border-width="1.0pt" border-color="#336699" background-color="#336699">
							<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">
								<xsl:value-of select="cabecera"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
</xsl:stylesheet>
