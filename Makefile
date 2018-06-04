.PHONY: default

default: clean
	sleep 1h
	go build -o godi
	mkdir -p build/bin
	mv godi build/bin/
	cp -r conf build/bin/
	cp -r scripts build/
	cd build && tar zcf godi.tar.gz *

clean:
	rm -r -f build
