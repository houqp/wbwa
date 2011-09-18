<?xml version='1.0' encoding='UTF-8'?>
 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                version="1.0">
 
<xsl:import href="/usr/share/asciidoc/docbook-xsl/xhtml.xsl"/>
<xsl:import href="./common.xsl"/>
 
<!--TOC-->
  <!--chapter and section numbering-->
  <xsl:param name="chapter.autolabel" select="1"/>
  <xsl:param name="section.autolabel" select="1"/>
  <xsl:param name="section.label.includes.component.label" select="1"/>
  <!-- limit the depth of sections that get a section number -->
  <xsl:param name="section.autolabel.max.depth" select="5"/>
  <!--control depth of sections displayed in TOC-->
  <xsl:param name="toc.section.depth" select="4"/>
  <!--which components will have a TOC-->
  <!--<xsl:param name="generate.toc">-->
    <!--appendix toc,title-->
    <!--article/appendix nop-->
    <!--article toc,title-->
    <!--book toc,title,figure,table,example,equation-->
    <!--chapter toc,title-->
    <!--part toc,title-->
    <!--preface toc,title-->
    <!--qandadiv toc-->
    <!--qandaset toc-->
    <!--reference toc,title-->
    <!--sect1 toc-->
    <!--sect2 toc-->
    <!--sect3 toc-->
    <!--sect4 toc-->
    <!--sect5 toc-->
    <!--section toc-->
    <!--set toc,title-->
  <!--</xsl:param>-->
<!--End of TOC-->

<!--programlisting-->
<!--End of programlisting-->

</xsl:stylesheet>
