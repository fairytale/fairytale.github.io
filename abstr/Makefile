VERSION = 0.0.7

.PHONY: all
all: index.html \
	README.org \
	episode/2045-01-22T02Z.html \
	episode/2045-01-22T02Z.txt \
	episode/2045-04-05T03Z.html \
	episode/2045-04-05T03Z.txt \
	episode/2045-04-05T05Z.html \
	episode/2045-04-05T05Z.txt \
	episode/2045-12-23T10Z.html \
	episode/2045-12-23T10Z.txt \
	knowledge/index.html \
	knowledge/README.org

README.org: abstr-logo.org index.org
	cat $^ > $@

%/README.org: abstr-logo.org %/index.org
	cat $^ > $@

episode/%.txt: episode/%.org
	./bin/skip-blank.pl $< | ./bin/skip-blank1.pl > $@

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
	-V version=${VERSION} \
	-V continued-from-nil

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
	-V experimental \
	-V prefix=.. \
	-V revision=`git rev-parse master` \
	-V version=${VERSION} \
	-V continued-on-nil

episode/2045-12-23T10Z.html: episode/2045-12-23T10Z.org ../pandoc/template.html
	pandoc \
        $< -o $@ -s \
        -V css=../../pandoc/org.css \
        --template=../pandoc/template.html \
        -V episode="Sophiya's Last Theorem" \
        -V continued-from-nil \
        -V provisional \
        -V prefix=.. \
        -V revision=`git rev-parse master` \
        -V version=${VERSION} \
        -V continued-on-nil
