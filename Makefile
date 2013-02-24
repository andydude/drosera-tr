XSLT = xsltproc
SPECS = \
drox.html \
dro.html

#ds_fonts.html \
#ds_macro.html \
#ds_modules.html \
#ds_regex.html

all: $(SPECS)
	@:

clean:
	rm -f $(SPECS)

%.html: %.xspec
	$(XSLT) as-xhtml/xmlspec.xsl $< > $@
