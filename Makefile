# Fleet Mgmt — local development helpers
# This repository is archival-first. Targets are intentionally minimal.

.DEFAULT_GOAL := help
.PHONY: help install serve build clean

help:
	@echo "Available targets:"
	@echo "  make install   Install Ruby dependencies"
	@echo "  make serve     Run Jekyll locally (http://127.0.0.1:5319)"
	@echo "  make build     Generate the site into _site/"
	@echo "  make clean     Remove generated site files"

install:
	cd site && bundle install

serve:
	cd site && bundle exec jekyll serve

build:
	cd site && bundle exec jekyll build

clean:
	cd site && rm -rf _site
