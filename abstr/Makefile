VERSION = 0.0.1

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

README.org: index.org ../pandoc/template.html
	cp $< $@

%/README.org: %/index.org ../pandoc/template.html
	cp $< $@

index.html: index.org ../pandoc/template.html
	./bin/pp1.sed $< | pandoc \
	-f org \
	-o $@ -s \
	-V css=../pandoc/org.css \
	--template=../pandoc/template.html \
	-V theme=百合 \
	-V prefix=. \
	-V revision=`git rev-parse master` \
	-V stable \
	-V version=${VERSION}

knowledge/index.html: knowledge/index.org ../pandoc/template.html
	./bin/pp1.sed $< | pandoc \
	-f org \
	-o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V subtitle=Knowledge \
	-V prefix=.. \
	-V provisional \
	-V revision=`git rev-parse master` \
	-V version=${VERSION}

episode/2045-01-22T02Z.html: episode/2045-01-22T02Z.org ../pandoc/template.html
	pandoc \
	$< -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-01-22T02Z \
	-V continued-on=2045-04-05T03Z \
	-V provisional \
	-V prefix=.. \
	-V revision=`git rev-parse master` \
	-V version=${VERSION}

episode/2045-04-05T03Z.html: episode/2045-04-05T03Z.org ../pandoc/template.html
	pandoc \
	$< -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T03Z \
	-V continued-from=2045-01-22T02Z \
	-V continued-on=2045-04-05T05Z \
	-V provisional \
	-V prefix=.. \
	-V revision=`git rev-parse master` \
	-V version=${VERSION}

episode/2045-04-05T05Z.html: episode/2045-04-05T05Z.org ../pandoc/template.html
	pandoc \
	$< -o $@ -s \
	-V css=../../pandoc/org.css \
	--template=../pandoc/template.html \
	-V episode=2045-04-05T05Z \
	-V continued-from=2045-04-05T03Z \
	-V warning \
	-V prefix=.. \
	-V revision=`git rev-parse master` \
	-V version=${VERSION}
