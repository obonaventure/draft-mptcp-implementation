PREFIX=draft-barre-mptcp-impl-01

all: $(PREFIX).txt $(PREFIX).html $(PREFIX).ps $(PREFIX).pdf

$(PREFIX).txt: $(PREFIX).xml
	xml2rfc $(PREFIX).xml

$(PREFIX).html: $(PREFIX).xml
	xml2rfc $(PREFIX).xml $(PREFIX).html

$(PREFIX).ps: $(PREFIX).txt
	enscript -B -o $(PREFIX).ps $(PREFIX).txt

$(PREFIX).pdf: $(PREFIX).ps
	ps2pdf $(PREFIX).ps
