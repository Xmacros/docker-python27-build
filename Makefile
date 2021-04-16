ME=xmacros/python2.7

build:
	docker build -t $(ME) .

shell:
	docker run -i -t --entrypoint=/bin/bash $(ME) -i

run:
	docker run -i -t $(ME)