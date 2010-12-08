basenames=draft-ietf-hybi-design-space draft-moffitt-xmpp-over-websocket
xmldir=/Users/jack/Sources/hybi/citations

input=$(basenames:=.xml)

%.txt: %.xml
	@echo "BUILD " $@ "..."
	@XML_LIBRARY=$(xmldir) xml2rfc $< $@

%.html: %.xml
	@echo "BUILD " $@ "..."
	@XML_LIBRARY=$(xmldir) xml2rfc $< $@

text: $(input)

html: $(input)

clean:
	@rm $(basenames:.xml=.html) $(basenames:.xml=.txt)

all: text html

.PHONY: all text html