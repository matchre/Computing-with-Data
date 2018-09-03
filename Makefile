all: clean techio.yml

clean:
	@rm techio.yml

techio.yml:
	@./generate-playground-config > techio.yml
	@./import-inline-code
