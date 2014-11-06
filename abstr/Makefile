.PHONY: all
all: index.html \
	README.html \
	README.md \
	episode/2045-01-22T02Z.html \
	episode/2045-04-05T03Z.html \
	episode/2045-04-05T05Z.html \
	knowledge/index.html \
	knowledge/README.md \
	knowledge/README.html

README.md: index.md
	cp $^ $@

%/README.md: %/index.md
	cp $^ $@

index.html: index.org
	./bin/pp1.sed $^ | pandoc \
	-f org \
	-o $@ -s \
	-V css=../pandoc/org.css \
	--template=../pandoc/template.html \
	-V theme=百合 \
	-V logo=img/abstr-logo.png

episode/2045-01-22T02Z.html: episode/2045-01-22T02Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-01-22T02Z \
	-V continued-on=2045-04-05T03Z \
	-V experimental \
	-V logo=../img/abstr-logo.png

episode/2045-04-05T03Z.html: episode/2045-04-05T03Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T03Z \
	-V continued-from=2045-01-22T02Z \
	-V continued-on=2045-04-05T05Z \
	-V experimental \
	-V logo=../img/abstr-logo.png

episode/2045-04-05T05Z.html: episode/2045-04-05T05Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T05Z \
	-V continued-from=2045-04-05T03Z \
	-V warning \
	-V logo=../img/abstr-logo.png

%.html: %.md
	cat $^ | ./bin/pp.sed | ./bin/pp.pl | \
	pandoc $(shell perl -nle 'if(/^!(.*)/){print $$1}' $^) \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=$(shell echo $^ | perl -pe 's|[^/]+|..|g')/pandoc/main.css \
	-s \
	--highlight-style monochrome \
	-f markdown \
	-t html \
	-o $@
