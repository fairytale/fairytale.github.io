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

.PHONY: dev
dev: dev/img/abstr-logo.png \
	dev/js/wc.js \
	dev/index.html \
	dev/README.html \
	dev/episode/2045-01-22T02Z.html \
	dev/episode/2045-04-05T03Z.html \
	dev/episode/2045-04-05T05Z.html \
	dev/knowledge/index.html

%/README.md: %/index.md
	cp $^ $@

dev/%.js: %.js
	mkdir -p dev/js
	cp $^ $@

dev/%.png: %.png
	mkdir -p dev/img
	cp $^ $@

dev/%.html: %.md
	mkdir -p dev/episode
	mkdir -p dev/knowledge
	cat $^ | ./bin/pp.sed | ./bin/pp-dev.sed | ./bin/pp.pl | \
	pandoc $(shell perl -nle 'if(/^!(.*)/){print $$1}' $^) \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=$(shell echo $^ | perl -pe 's|[^/]+|..|g')/../pandoc/main.css \
	-s \
	--highlight-style monochrome \
	-f markdown \
	-t html \
	-o $@

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
