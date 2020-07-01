<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-width="21.5cm" page-height="27.9cm" margin-bottom="5mm" margin-top="5mm"
                    margin-left="15mm" margin-right="2.5cm" border="thick solid red">
                    <fo:region-body margin-top="10mm" margin-bottom="32mm"/>
                    <fo:region-before extent="12cm" />
                    <fo:region-after extent="32mm" />
                </fo:simple-page-master>
                <!-- layout for the other pages -->
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference
                            master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="first">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block >
                    <xsl:for-each select="MensajeSwift/mensaje/istadoMensaje/detalleMensaje">
                     <fo:block>
                     	<xsl:value-of select="mensaje" disable-output-escaping="no"/>
                     </fo:block>
                    </xsl:for-each>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
