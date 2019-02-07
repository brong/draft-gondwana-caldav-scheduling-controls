

build: draft-gondwana-caldav-scheduling-controls.txt draft-gondwana-caldav-scheduling-controls.xml draft-gondwana-caldav-scheduling-controls.html

%.xml: %.mdown
	mmark -xml2 -page $< > $@

%.txt: %.xml
	xml2rfc --text $< $@

%.html: %.xml
	xml2rfc --html $< $@

clean:
	rm -f *.txt *.html *.xml
