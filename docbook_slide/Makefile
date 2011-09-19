.PHONY:all clean slidy_open

all:index

index:slidy
	mv docbook.html index.html

slidy_open:slidy
	konqueror docbook.html

slidy:*.txt
	asciidoc -a icons -a theme=volnitsky -a duration=20 -b slidy \
		-o docbook.html docbook.txt

clean:
	rm -rf *.html
