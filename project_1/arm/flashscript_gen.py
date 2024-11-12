#!/usr/bin/env python
# -*- coding: UTF-8 -*-

################################
# flash script generator       #
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
    fo.write("################################\n")
    fo.write("# BRAM Flash Script            #\n")
    fo.write("################################\n")
    fo.write("\n")
    fo.write("# Run in Vivado Tcl Console with the command 'source <path to this script>'\n")
    fo.write("\n")
    # Enter Download Mode
    fo.write("set_property OUTPUT_VALUE 1 [get_hw_probes bus_0/bram_0/dl]\n")
    fo.write("commit_hw_vio [get_hw_probes {bus_0/bram_0/dl}]\n")
    # Flash Script Begin
    baseaddr = 0
    while read := fi.read(4):
        instruction = struct.unpack("BBBB", read.ljust(4, b'\xFF'))
        fo.write("create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address {:08x} -data {:02X}{:02X}{:02X}{:02X} -type write -force\n".format(baseaddr, instruction[3], instruction[2], instruction[1], instruction[0]))
        fo.write("run_hw_axi wr_txn_lite\n")
        baseaddr = baseaddr + 4
    # Exit Download Mode
    fo.write("set_property OUTPUT_VALUE 0 [get_hw_probes bus_0/bram_0/dl]\n")
    fo.write("commit_hw_vio [get_hw_probes {bus_0/bram_0/dl}]\n")
