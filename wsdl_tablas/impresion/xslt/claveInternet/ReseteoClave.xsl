<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
   	<fo:root>
    	<xsl:copy-of select="$fo:layout-master-set" />
        <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
        	<fo:flow flow-name="xsl-region-body">
            	<fo:block>
                	<fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                    	<fo:table-column />
                        <fo:table-column />
                        <fo:table-column />
                        <fo:table-body>
                        	<fo:table-row>
                            	<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                	<fo:block>
                                           <fo:inline font-weight="bold">RESETEO CLAVE INTERNET</fo:inline>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                            	<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                	<fo:block>
                                            <fo:inline font-weight="bold">Su Nueva Clave Secreta es: </fo:inline>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                	<fo:block>
                                            <xsl:for-each select="reseteo">
                                                <xsl:for-each select="clave">
                                                    <xsl:apply-templates />
                                                </xsl:for-each>
                                            </xsl:for-each>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                    <fo:block>
                            <fo:leader leader-pattern="space" />
                    </fo:block>
                    <fo:block>
                            <fo:leader leader-pattern="space" />
                    </fo:block>
                    <fo:block>
                            <xsl:text>&#xA;</xsl:text>
                    </fo:block>
                </fo:block>
            </fo:flow>
        </fo:page-sequence>
    </fo:root>
    </xsl:template>
</xsl:stylesheet>
