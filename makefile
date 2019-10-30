all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/comicbookday/
	git pull
	cd ../../../Web/amg/comicbookday/
	cp ../../../Projects/iOS/comicbookday/releasenotes.html .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
