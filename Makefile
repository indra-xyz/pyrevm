.PHONY: default build run

default: test

build:
	maturin develop

build-prod:
	maturin develop --release

test: build
	pytest -s tests/*

lint:
	cargo clippy --workspace --all-targets --all-features
	cargo fmt --all
