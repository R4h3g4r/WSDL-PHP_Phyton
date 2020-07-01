<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="master"
                  page-height="29.7cm"
                  page-width="21cm"
                  margin-top="1cm"
                  margin-bottom="2cm"
                  margin-left="2.5cm"
                  margin-right="2.5cm" >
          <fo:region-body padding="0" />
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="master">
        <fo:flow flow-name="xsl-region-body">
          <fo:block>  </fo:block>
        </fo:flow>
      </fo:page-sequence>
      <fo:page-sequence master-reference="master">
        <fo:flow flow-name="xsl-region-body">
          <fo:block>  </fo:block>
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>