all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/comicbookday/ pull
	cp ~/Developer/comicbookday/releasenotes.html .
	cp ~/Developer/comicbookday/releasenotes.json .
	cp ~/Developer/comicbookday/releasenotes.xml .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css
