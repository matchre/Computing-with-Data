.PHONY: clean docker

all: clean techio.yml

clean:
	@rm techio.yml

docker:
	docker build -t computingwithdata/python projects/python
	docker push computingwithdata/python
	docker build -t computingwithdata/r-base projects/R
	docker push computingwithdata/r-base
	docker build -t computingwithdata/bash projects/bash
	docker push computingwithdata/bash

techio.yml:
	@./generate-playground-config > techio.yml
	@./import-inline-code
