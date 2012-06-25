basenames=draft-moffitt-xmpp-over-websocket

input=$(basenames:=.xml)

.PHONY: all text html clean

all: text html

text: $(input:.xml=.txt)

html: $(input:.xml=.html)

%.txt: %.xml
	@echo "BUILD" $@ "..."
	@xml2rfc $< $@

%.html: %.xml
	@echo "BUILD" $@ "..."
	@xml2rfc $< $@

clean:
	@rm -f $(basenames:=.html) $(basenames:=.txt)


