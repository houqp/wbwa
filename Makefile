.PHONY:all clean po

TARGET=wbwa

all:open-pdf

open-pdf:pdf
	okular $(TARGET).pdf

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
	rm -rf $(TARGET).html $(TARGET).xml $(TARGET).pdf *.css
