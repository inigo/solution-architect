<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/XSL/Format">

    <xsl:template match="/">
        <root font-family="Optima Regular" font-size="22pt">
            <layout-master-set>
                <simple-page-master master-name="frame" page-height="297mm" page-width="210mm"
                        margin-top="15mm" margin-bottom="15mm" margin-left="7mm" margin-right="7mm">
                    <region-body region-name="frame-body" column-count="3" column-gap="2.5mm"/>
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
        <block-container width="63.5mm" height="38.1mm" overflow="hidden"
            xsl:use-attribute-sets="borders">
            <block-container reference-orientation="90"
                padding-top="5mm"
                padding-bottom="5mm" >
                <xsl:apply-templates/>
            </block-container>
        </block-container>
    </xsl:template>
    
    <xsl:template match="abbr">
        <block text-align="center" padding-top="5mm"><xsl:value-of select="."/></block>
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
