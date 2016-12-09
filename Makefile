# `adocker` is alias to `azk docker`
all:
	adocker build -t dlani/capistrano latest

no-cache:
	adocker build --rm --no-cache -t dlani/capistrano latest
