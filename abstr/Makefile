index.html: README.md
	sed 's/width="320px" height="320px" //' README.md | \
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
