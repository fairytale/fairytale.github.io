.PHONY: all
all: index.html \
	README.html \
	ep2045-1-22.html \
	ep2045-4-5.html \
	ep2045-4-5a.html \
	knowledge.html

.PHONY: dev
dev: dev/abstr-logo.png \
	dev/wc.js \
	dev/index.html \
	dev/README.html \
	dev/ep2045-1-22.html \
	dev/ep2045-4-5.html \
	dev/ep2045-4-5a.html \
	dev/knowledge.html

README.md: index.md
	cp $^ $@

dev/%.js: %.js
	mkdir -p dev
	cp $^ $@

dev/%.png: %.png
	mkdir -p dev
	cp $^ $@

dev/%.html: %.md
	mkdir -p dev
	cat $^ | ./pp.sed | ./pp-dev.sed | ./pp.pl | \
	pandoc $(shell perl -nle 'if(/^!(.*)/){print $$1}' $^) \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=../../pandoc/main.css \
	-s \
	--highlight-style monochrome \
	-f markdown \
	-t html \
	-o $@

%.html: %.md
	cat $^ | ./pp.sed | ./pp.pl | \
	pandoc $(shell perl -nle 'if(/^!(.*)/){print $$1}' $^) \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=../pandoc/main.css \
	-s \
	--highlight-style monochrome \
	-f markdown \
	-t html \
	-o $@
