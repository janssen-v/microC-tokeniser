# Specify compiler to be used
CXX = g++
CXXFLAGS += -g -std=c++17

all:
	make build
	make activate_script
	make run
	make grade
	

activate_script:
	chmod +x run_scanner.sh

build:
	@echo "Building..."
	g++ -std=c++17 -o scanner scanner.cpp

run:
	@echo "Running..."
	./scanner tests/test1.c1
	./scanner tests/test2.c1
	./scanner tests/test3.c1
	./scanner tests/test4.c1
	./scanner tests/test5.c1

grade:
	@echo "Running..."
	mkdir -p autotest/output
	./scanner tests/test1.c1 > autotest/output/output1.txt
	./scanner tests/test2.c1 > autotest/output/output2.txt
	./scanner tests/test3.c1 > autotest/output/output3.txt
	./scanner tests/test4.c1 > autotest/output/output4.txt
	./scanner tests/test5.c1 > autotest/output/output5.txt
	@echo "Testing..."
	python3 autotest/autotest.py

clean:
	@echo "Cleaning..."
	rm -f scanner
	rm -rf autotest/output