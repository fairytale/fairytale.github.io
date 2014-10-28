index.html: index.md
	sed 's/width="320px" height="320px" //' index.md | \
	pandoc \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=../pandoc/main.css \
	-s \
	-f markdown \
	-t html \
	-o index.html

knowledge.html: knowledge.md
	pandoc \
	-T 'Knowledge' \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=../pandoc/main.css \
	-s \
	-f markdown \
	-t html \
	knowledge.md \
	-o knowledge.html
