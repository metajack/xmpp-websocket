basenames=draft-ietf-hybi-design-space draft-moffitt-xmpp-over-websocket
xmldir=/Users/jack/Sources/hybi/citations

input=$(basenames:=.xml)

.PHONY: all text html clean

all: text html

text: $(input:.xml=.txt)

html: $(input:.xml=.html)

%.txt: %.xml
	@echo "BUILD" $@ "..."
	@XML_LIBRARY=$(xmldir) xml2rfc $< $@

%.html: %.xml
	@echo "BUILD" $@ "..."
	@XML_LIBRARY=$(xmldir) xml2rfc $< $@

clean:
	@rm -f $(basenames:=.html) $(basenames:=.txt)


