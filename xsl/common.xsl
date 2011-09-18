<?xml version='1.0' encoding='UTF-8'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" 
                xmlns:xi="http://www.w3.org/2001/XInclude"
                xmlns:xs="http://www.w3.org/2001/XMLSchema" 
                version="1.0">

<!--for debug purpose-->
  <!--only process part of the book given the root id of the element-->
  <!--<xsl:param name="rootid" select="'chap4'" />-->
<!--End of debug-->

    <xsl:template match="xi:include">
        <xsl:apply-templates select="document(@href)/*" />
    </xsl:template>
    <xsl:template match="processing-instruction('lnbr')">
        <fo:block />
    </xsl:template>
    <xsl:template match="processing-instruction('pgbr')">
        <fo:block break-after="page" />
    </xsl:template>



<!--programlisting--> 
  <!--fo does not support thist at all!-->
  <xsl:param name="hyphenate.verbatim" select="1"/>
  <!--automatically wrap the long lines-->
  <xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    <xsl:attribute name="hyphenation-character">\</xsl:attribute>
  </xsl:attribute-set>
  <xsl:template match="co" mode="callout-bug">
    <xsl:call-template name="callout-bug">
      <xsl:with-param name="conum">
      <xsl:number count="co"
        level="any"
        from="programlisting|screen|literallayout|synopsis"
        format="1"/>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
<!--End of programlisting-->

<!--for callout-->
<xsl:param name="callout.graphics.path" select="'xsl/xsl-ns-stylesheets/images/callouts/'" />
<!--End of callout-->

</xsl:stylesheet>
