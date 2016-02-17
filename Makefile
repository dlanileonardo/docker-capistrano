# `adocker` is alias to `azk docker`
all:
	adocker build -t dlanileonardo/capistrano latest

no-cache:
	adocker build --rm --no-cache -t dlanileonardo/capistrano latest
