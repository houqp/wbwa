<?xml version='1.0' encoding='UTF-8'?>
 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml"
                version="1.0">
 
<xsl:import href="/usr/share/asciidoc/docbook-xsl/fo.xsl"/>
<xsl:import href="./common.xsl"/>
 
<!--标准信息所使用的语言、字体-->
  <xsl:param name="l10n.gentext.language" select="'zh_cn'"/>
  <xsl:param name="body.font.family">
    WenQuanYi Micro Hei, AR PL KaitiM GB, AR PL SungtiL GB, 
  </xsl:param>
  <xsl:param name="monospace.font.family">
    WenQuanYi Micro Hei, AR PL SungtiL GB
  </xsl:param>
  <xsl:param name="title.font.family">
    WenQuanYi Micro Hei, AR PL SungtiL GB
  </xsl:param>

<!--Chinese typeset control-->
  <xsl:attribute-set name="normal.para.spacing">
    <!--中文，开始空两格-->
    <xsl:attribute name="text-indent">2em</xsl:attribute>
    <xsl:attribute name="space-before.optimum">0.6em</xsl:attribute>
    <xsl:attribute name="space-before.minimum">0.4em</xsl:attribute>
    <xsl:attribute name="space-before.maximum">0.8em</xsl:attribute>
    <xsl:attribute name="orphans">3</xsl:attribute>
    <xsl:attribute name="widows">3</xsl:attribute>
  </xsl:attribute-set>

  <!-- 字体大小 -->
  <xsl:param name="body.font.master">10</xsl:param>
  <xsl:attribute-set name="section.title.level1.properties">
    <xsl:attribute name="font-size">15pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title.level2.properties">
    <xsl:attribute name="font-size">13pt</xsl:attribute>
  </xsl:attribute-set>
  <xsl:attribute-set name="section.title.level3.properties">
    <xsl:attribute name="font-size">11pt</xsl:attribute>
  </xsl:attribute-set>

  <!-- 行高 -->
  <xsl:param name="line-height">1.4</xsl:param>
<!--End of Chinese typeset control-->

<!-- Paper size -->
  <!--  <xsl:param name="paper.type" select="'USletter'"/>-->
  <xsl:param name="paper.type" select="'A4'"/>
  <!-- The inner page margin. 内页边距  -->
  <xsl:param name="page.margin.inner" select="'0.80in'"/>
    <!-- The outer page margin. -->
  <xsl:param name="page.margin.outer" select="'0.80in'"/>
    <!-- The bottom margin of the page.   页面的底部边距 -->
  <xsl:param name="page.margin.bottom" select="'0.50in'"/>
    <!-- The top margin of the page.  页面的上边距 -->
  <xsl:param name="page.margin.top" select="'1.00in'"/>
    <!-- The bottom margin of the body text. -->
  <xsl:param name="body.margin.bottom" select="'0.4in'"/>
    <!-- The top margin of the body text. 正文离顶部边距，如果有页眉、页脚线，其一不受影响-->
  <xsl:param name="body.margin.top" select="'0.4in'"/>
    <!-- Specifies the height of the header. -->
  <xsl:param name="region.before.extent" select="'0.25in'"/>
    <!-- Specifies the height of the footer. -->
  <xsl:param name="region.after.extent" select="'0.25in'"/>
    <!-- The start-indent for the body text. 正文部分的边距，不是段首空两格那种，是整体的移动-->
  <xsl:param name="body.start.indent" select="'0pc'"/>
    <!-- Adjust the left margin for titles. 为调整标题左边距。-->
  <xsl:param name="title.margin.left">0pc</xsl:param>
<!-- End of Paper size -->

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
  <xsl:attribute-set name="monospace.verbatim.properties">
    <!--<xsl:attribute name="font-family">Lucida Sans Typewriter</xsl:attribute>-->
    <xsl:attribute name="text-indent">0em</xsl:attribute>
    <xsl:attribute name="font-size">9pt</xsl:attribute>
    <xsl:attribute name="keep-together.within-column">always</xsl:attribute>
  </xsl:attribute-set>
<!--End of programlisting-->

<!--代码块显示-->
  <xsl:param name="shade.verbatim" select="1"/>
  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="background-color">#F2F2F2</xsl:attribute>
    <xsl:attribute name="padding-left">0.5em</xsl:attribute>
    <xsl:attribute name="padding-right">0.5em</xsl:attribute>
    <xsl:attribute name="padding-top">0.5em</xsl:attribute>
    <xsl:attribute name="padding-bottom">0.5em</xsl:attribute>
  </xsl:attribute-set>
<!--代码块显示-->

<!-- 以脚注形式显示链接地址 -->
  <xsl:param name="ulink.show">1</xsl:param>
  <xsl:param name="ulink.footnotes">1</xsl:param>
<!-- 以脚注形式显示链接地址 -->

</xsl:stylesheet>
