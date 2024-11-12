#!/usr/bin/env python
# -*- coding: UTF-8 -*-

################################
# coe data generator           #
################################

import sys
import os
import getopt
import struct

helpstr = "Usage: {} -i <binstream> -o <testdata>".format(os.path.basename(__file__))
ifile, ofile = "", ""
try:
    opts, _ = getopt.getopt(sys.argv[1:], "i:o:")
except getopt.GetoptError:
    print(helpstr)
    sys.exit()
for (opt, arg) in opts:
    if opt == '-h':
        print(helpstr)
        sys.exit()
    elif opt == "-i":
        ifile = arg
    elif opt == "-o":
        ofile = arg

with open(ifile, "rb") as fi, open(ofile, "w") as fo:
    memory_initialization_vector = []
    while read := fi.read(4):
        instruction = struct.unpack("BBBB", read.ljust(4, b'\xFF'))
        memory_initialization_vector.append("{:02X}{:02X}{:02X}{:02X}".format(instruction[3], instruction[2], instruction[1], instruction[0]))
    fo.write("memory_initialization_radix = 16;\n")
    fo.write("memory_initialization_vector = \n")
    fo.write(",\n".join(memory_initialization_vector) + ";\n")
