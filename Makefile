default: build

build:
	docker build --rm=true -t bborbe/bind .

run:
	docker run -h example.com -p 53:53/tcp -p 53:53/udp bborbe/bind:latest

bash:
	docker run -i -t bborbe/bind:latest /bin/bash

upload:
	docker push bborbe/bind