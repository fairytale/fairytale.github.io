index.html: README.md
	pandoc \
	-V pagetitle='λ Abstraction' \
	-V date-meta=`date -I` \
	-V author-meta=Pasberth \
	-H ../pandoc/header.html \
	-V css=../pandoc/main.css \
	-s README.md -o index.html
