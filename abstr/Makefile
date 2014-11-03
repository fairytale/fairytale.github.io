.PHONY: all
all: index.html README.html ep2045.1.22.html ep2045.4.7.html knowledge.html

README.md: index.md
	cp $^ $@

%.html: %.md
	sed -f pp.sed $^ | perl -p pp.pl | \
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
