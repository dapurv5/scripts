#!/usr/bin/env python

__author__="Apurv Verma <dapurv5@gmail.com>"
__date__="$May27, 2013"

import sys
import os

"""
Removes all ~ files/directories recursively from a directory.
"""

def cleanUp(path_to_dir):
    files_in_dir = os.listdir(path_to_dir)
    for file_in_dir in files_in_dir:
        path = os.path.join(path_to_dir, file_in_dir)
        if os.path.isdir(path):
            cleanUp(path)
        if file_in_dir[len(file_in_dir)-1] == '~':
            print "deleting ", file_in_dir
            os.remove(path)

def usage():
    print """
    python delete-tilde-files.py [path]
    Removes all tilde files recursively from the path specified.
    """

if __name__ == "__main__":
    if len(sys.argv) != 2:
        usage()
        sys.exit(2)
    cleanUp(sys.argv[1])


