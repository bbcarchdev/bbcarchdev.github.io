FRAGMENTS = fragments/head.html fragments/bodyfirst.html fragments/bodylast.html
PAGES = licences/dps/index.html licences/dps/1.0.html

all: $(PAGES)

$(PAGES): tools/process.pl $(FRAGMENTS)
	./tools/process.pl $@
