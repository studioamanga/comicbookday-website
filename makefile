all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/comicbookday/ pull
	cp ~/Developer/comicbookday/releasenotes.html .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
