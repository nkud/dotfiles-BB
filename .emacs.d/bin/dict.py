#! /usr/bin/python
#
# Author: Naoki Ueda
# Update: 2014/07/27
#

import sys
from DictionaryServices import *

def main():
    if len(sys.argv) == 1:
        print '(no attribute)'
        return
    word = sys.argv[1].decode('utf-8')
    result = DCSCopyTextDefinition(None, word, (0, len(word)))
    if isinstance(result, type(None)):
        print '(no result)'
        return

    for l in result.encode('utf-8').split('\n'):
        print l

if __name__ == '__main__':
    main()
