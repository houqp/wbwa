#!/bin/bash
java -cp /usr/share/fop/lib/fop.jar:/usr/share/avalon-framework-4.2/lib/avalon-framework.jar:/usr/share/commons-logging/lib/commons-logging.jar:/usr/share/commons-io-1/lib/commons-io.jar:/usr/share/xmlgraphics-commons-1.3/lib/xmlgraphics-commons.jar org.apache.fop.fonts.apps.TTFReader -ttcname "WenQuanYi Micro Hei Mono" wqy-microhei.ttc wqy-microhei.xml

