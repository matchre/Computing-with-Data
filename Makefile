.PHONY: clean docker

all: clean techio.yml

clean:
	@rm techio.yml

docker:
	@for p in projects/*; do \
		docker build -t computingwithdata/python $$p && \
		docker push computingwithdata/`basename $$p`; \
	done

techio.yml:
	@./generate-playground-config > techio.yml
	@./import-inline-code
