<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <root font-family="Optima Regular" font-size="23pt">
            <layout-master-set>
                <simple-page-master master-name="frame" page-height="297mm" page-width="210mm"
                        margin-top="12mm" margin-bottom="12mm" margin-left="4mm" margin-right="4mm">
                    <region-body region-name="frame-body" column-count="2" column-gap="4mm"/>
                </simple-page-master>
                <page-sequence-master master-name="frame-pages">
                    <single-page-master-reference master-reference="frame"/>
                </page-sequence-master>
            </layout-master-set>

            <page-sequence master-reference="frame-pages">
                <flow flow-name="frame-body">
                    <xsl:apply-templates/>
                </flow>
            </page-sequence>
        </root>
    </xsl:template>
    
    <xsl:template match="card">
        <block-container width="99mm" height="67mm" overflow="hidden"
            xsl:use-attribute-sets="borders">
            <block-container reference-orientation="90"
                padding-top="10mm"
                padding-bottom="10mm" >
                <block text-align="center" padding-top="10mm"><xsl:value-of select="."/></block>
            </block-container>
        </block-container>
    </xsl:template>
    
    <xsl:attribute-set name="borders">
        <xsl:attribute name="border-top-color">black</xsl:attribute>
        <xsl:attribute name="border-top-style">solid</xsl:attribute>
        <xsl:attribute name="border-bottom-color">black</xsl:attribute>
        <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
        <xsl:attribute name="border-left-color">black</xsl:attribute>
        <xsl:attribute name="border-left-style">solid</xsl:attribute>
        <xsl:attribute name="border-right-color">black</xsl:attribute>
        <xsl:attribute name="border-right-style">solid</xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
