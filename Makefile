.PHONY:all clean po

TARGET=wbwa

all:pdf html

open-pdf:pdf
	okular $(TARGET).pdf

index:html pdf
	mdpage -t index.tp -o index.html

pdf:
	a2x -v -L -f pdf --fop \
	--xsl-file=xsl/fo.xsl \
	--fop-opts="-c fop/fop.xconf" \
	-D ./ \
	src/$(TARGET).txt

html:
	a2x -v -L -f xhtml \
	-a icons \
	-D ./ \
	src/$(TARGET).txt

po:*.txt
	for file in *.txt; do \
		po4a-gettextize -f text -M utf-8 -m $$file -p po/`basename $$file .txt`.po; \
	done

clean:
	rm -rf $(TARGET).html $(TARGET).xml $(TARGET).pdf *.css wbwa.fo
