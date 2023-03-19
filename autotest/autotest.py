# Simple autograder

import os
import filecmp

output_dir = 'autotest/output'
reference_dir = 'autotest/reference/'

def compare(output, reference):
    return filecmp.cmp(output, reference)

all_tests = []

for filename in os.listdir(reference_dir):
    f = os.path.join(reference_dir, filename)
    all_tests.append(f)
    
all_tests.sort()

print('Found {} tests'.format(len(all_tests)))

def to_filename(path):
    return (os.path.splitext(os.path.basename(path))[0])[9:] + '.txt'

# Check that all are the same:
print('Verifying results...')

passes = 0
failures = 0
for test_input in all_tests:
    print(test_input)
    fnum = to_filename(test_input)
    output = os.path.join(output_dir, "output"+fnum)
    reference = test_input

    are_equal = compare(output, reference)

    if are_equal:
        print('PASS')
        passes += 1
    else:
        print('FAIL')
        failures += 1
print('====')
print('{} tests passed. {} tests failed.'.format(passes, failures))
print('====')
print('Score: {}/100'.format((int(passes/len(all_tests))*100)))






