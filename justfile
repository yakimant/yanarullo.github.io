set shell := ["bash", "-cu"]

alias start := dev

default:
  @just --list

install:
  pnpm install

css:
  pnpm exec tailwindcss -i ./src/styles.css -o ./_site/style.css --minify

dev-css:
  pnpm exec tailwindcss -i ./src/styles.css -o ./_site/style.css --watch

dev-site:
  pnpm exec eleventy --serve

build: css
  pnpm exec eleventy

[parallel]
dev: dev-css dev-site
