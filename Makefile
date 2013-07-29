FRAGMENTS = fragments/head.html fragments/bodyfirst.html fragments/bodylast.html
PAGES = licences/dps/index.html licences/dps/1.0.html
RDF = licences/dps/1.0.rdf licences/dps/1.0.nt

all: $(PAGES) $(RDF)

$(PAGES): tools/process.pl $(FRAGMENTS)
	./tools/process.pl $@

%.rdf: %.ttl
	rapper -i turtle -o rdfxml-abbrev $< > $@

%.nt: %.ttl
	rapper -i turtle -o ntriples $< > $@
