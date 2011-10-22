import sys
from itertools import izip

EPSILON = 1e-11


if __name__ == '__main__':
    for pair in izip(*map(open, sys.argv[1:])):
        (key1, val1), (key2, val2)  = [line.split('\t') for line in pair]
        if val1 != val2:
            try:
                if abs(float(val1) - float(val2)) < EPSILON:
                    pass
                else:
                    print ''.join(pair)
            except ValueError:
                print ''.join(pair)
                print 'Non-numeric difference encountered'
                sys.exit(1)
