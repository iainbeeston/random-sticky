Random\ Sticky.app: random-sticky.scpt
	osacompile -o Random\ Sticky.app random-sticky.scpt
	cp /Applications/Stickies.app/Contents/Resources/Stickies.icns Random\ Sticky.app/Contents/Resources
	perl -0 -i -p -e "s/<key>CFBundleIconFile<\/key>\n(\s+)<string>applet<\/string>/<key>CFBundleIconFile<\/key>\n\1<string>Stickies<\/string>/gms" Random\ Sticky.app/Contents/Info.plist

install: Random\ Sticky.app
	cp -R	 Random\ Sticky.app /Applications

clean:
	rm -Rf Random\ Sticky.app
