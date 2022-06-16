all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/comicbookday/ pull
	cp ~/Developer/comicbookday/releasenotes.html .
	cp ~/Developer/comicbookday/releasenotes.json .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
