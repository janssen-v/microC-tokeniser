all:
	make build
	make run

build:
	@echo "Building..."
	gcc-12 -std=c17 -o scanner scanner.c

run:
	@echo "Running..."
	./scanner

