.PHONY: all
all: index.html \
	README.html \
	README.org \
	episode/2045-01-22T02Z.html \
	episode/2045-04-05T03Z.html \
	episode/2045-04-05T05Z.html \
	knowledge/index.html \
	knowledge/README.org \
	knowledge/README.html

README.org: index.org
	cp $^ $@

%/README.org: %/index.org
	cp $^ $@

index.html: index.org
	./bin/pp1.sed $^ | pandoc \
	-f org \
	-o $@ -s \
	-V css=../pandoc/org.css \
	--template=../pandoc/template.html \
	-V theme=百合 \
	-V prefix=.

knowledge/index.html: knowledge/index.org
	./bin/pp1.sed $^ | pandoc \
	-f org \
	-o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V subtitle=Knowledge \
	-V prefix=.. \
	-V experimental

episode/2045-01-22T02Z.html: episode/2045-01-22T02Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-01-22T02Z \
	-V continued-on=2045-04-05T03Z \
	-V experimental \
	-V prefix=..

episode/2045-04-05T03Z.html: episode/2045-04-05T03Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T03Z \
	-V continued-from=2045-01-22T02Z \
	-V continued-on=2045-04-05T05Z \
	-V experimental \
	-V prefix=..

episode/2045-04-05T05Z.html: episode/2045-04-05T05Z.org
	pandoc \
	$^ -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T05Z \
	-V continued-from=2045-04-05T03Z \
	-V warning \
	-V prefix=..
