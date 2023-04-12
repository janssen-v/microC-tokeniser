# CSC 4180 Project 2: Scanner
Copyright ©2023 by Vincentius Janssen (119010518)

Made in fulfilment of the requirements of the course CSC 4180: Compiler Construction at the Chinese University of Hong Kong, Shenzhen

## How to run
1. `cd` into the `SourceCode` directory
2. `make build` to build the scanner
3. `./scanner <input file>` to run the scanner. The output will be printed to console.
4. Alternatively, `make run` to run the scanner on all the test files in the `test` directory.
5. There is also a python script `autotest.py` that can be run with `make grade` that will run the scanner on all the test files and compare the output to the expected output. The script will print out the test results and the number of tests passed.
6. You can also use `make all` to run `make build`, `make run`, and `make grade` all at once. It is also the default target and enables the `run_scanner.sh` script to be run.
