export PATH := $(PWD)/node_modules/.bin:$(PATH)

FILES = package.json cmd.js lib.js

build: $(FILES)

%.js: %.coffee
	coffee -bpc $< > $@

%.json: %.yml
	yaml2json $< > $@

clean:
	rm $(FILES)
