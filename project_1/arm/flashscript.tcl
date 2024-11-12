################################
# BRAM Flash Script            #
################################

# Run in Vivado Tcl Console with the command 'source <path to this script>'

set_property OUTPUT_VALUE 1 [get_hw_probes bus_0/bram_0/dl]
commit_hw_vio [get_hw_probes {bus_0/bram_0/dl}]
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000000 -data EA000000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000004 -data EA00000D -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000008 -data E59F003C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000000c -data E59F103C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000010 -data E3A02000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000014 -data EA000000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000018 -data E8A00004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000001c -data E1500001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000020 -data 1AFFFFFC -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000024 -data E59FD028 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000028 -data E1A0B00D -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000002c -data E10F0000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000030 -data E3C00080 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000034 -data E129F000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000038 -data EB000088 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000003c -data EAFFFFFE -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000040 -data E92D4000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000044 -data EB000063 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000048 -data E8FD8000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000004c -data 000002B0 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000050 -data 000002B0 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000054 -data 00004000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000058 -data E52DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000005c -data E28DB000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000060 -data E24DD01C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000064 -data E50B0010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000068 -data E50B1014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000006c -data E50B2018 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000070 -data E51B2014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000074 -data E51B3018 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000078 -data E0823003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000007c -data E50B300C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000080 -data E51B3014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000084 -data E50B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000088 -data EA00000E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000008c -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000090 -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000094 -data E5933004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000098 -data E1A03803 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000009c -data E1A03823 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000a0 -data E3530000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000a4 -data 1AFFFFF9 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000a8 -data E51B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000ac -data E5D33000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000b0 -data E1A02003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000b4 -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000b8 -data E5832000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000bc -data E51B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000c0 -data E2833001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000c4 -data E50B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000c8 -data E51B2008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000cc -data E51B300C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000d0 -data E1520003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000d4 -data 1AFFFFEC -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000d8 -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000dc -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000e0 -data E28BD000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000e4 -data E49DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000e8 -data E1A0F00E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000ec -data E52DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000f0 -data E28DB000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000f4 -data E24DD01C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000f8 -data E50B0010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000000fc -data E50B1014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000100 -data E50B2018 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000104 -data E51B2014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000108 -data E51B3018 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000010c -data E0823003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000110 -data E50B300C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000114 -data E51B3014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000118 -data E50B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000011c -data EA00000F -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000120 -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000124 -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000128 -data E5933004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000012c -data E1A03823 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000130 -data E1A03803 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000134 -data E1A03823 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000138 -data E3530000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000013c -data 1AFFFFF8 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000140 -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000144 -data E5933000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000148 -data E20320FF -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000014c -data E51B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000150 -data E5C32000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000154 -data E51B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000158 -data E2833001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000015c -data E50B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000160 -data E51B2008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000164 -data E51B300C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000168 -data E1520003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000016c -data 1AFFFFEB -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000170 -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000174 -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000178 -data E28BD000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000017c -data E49DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000180 -data E1A0F00E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000184 -data E52DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000188 -data E28DB000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000018c -data E24DD014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000190 -data E50B0010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000194 -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000198 -data E50B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000019c -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001a0 -data E51B3008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001a4 -data E2832001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001a8 -data E50B2008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001ac -data E5D33000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001b0 -data E3530000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001b4 -data 1AFFFFF9 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001b8 -data E51B2008 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001bc -data E51B3010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001c0 -data E0423003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001c4 -data E2433001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001c8 -data E1A00003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001cc -data E28BD000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001d0 -data E49DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001d4 -data E1A0F00E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001d8 -data E92D4800 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001dc -data E28DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001e0 -data E24DD010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001e4 -data E50B0010 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001e8 -data EA000003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001ec -data E3A03901 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001f0 -data E5933000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001f4 -data E20330FF -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001f8 -data E54B3005 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000001fc -data E3A03901 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000200 -data E5933004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000204 -data E1A03823 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000208 -data E1A03803 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000020c -data E1A03823 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000210 -data E3530000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000214 -data 0AFFFFF4 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000218 -data E3A02003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000021c -data E59F1034 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000220 -data E3A00901 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000224 -data EBFFFF8B -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000228 -data E24B3005 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000022c -data E3A02001 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000230 -data E1A01003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000234 -data E3A00901 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000238 -data EBFFFF86 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000023c -data E3A02003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000240 -data E59F1014 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000244 -data E3A00901 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000248 -data EBFFFF82 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000024c -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000250 -data E24BD004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000254 -data E8BD8800 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000258 -data 000002A8 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000025c -data 000002AC -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000260 -data E52DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000264 -data E28DB000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000268 -data E3A03A06 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000026c -data E3A02003 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000270 -data E5C32000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000274 -data E59F3020 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000278 -data E59F2020 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000027c -data E5832000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000280 -data E59F301C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000284 -data E3A02047 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000288 -data E5832000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000028c -data E1A00000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000290 -data E28BD000 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000294 -data E49DB004 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 00000298 -data E1A0F00E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 0000029c -data 00006018 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000002a0 -data 51EB851E -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000002a4 -data 0000601C -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000002a8 -data 003C4945 -type write -force
run_hw_axi wr_txn_lite
create_hw_axi_txn wr_txn_lite [get_hw_axis hw_axi_1] -address 000002ac -data 0049513E -type write -force
run_hw_axi wr_txn_lite
set_property OUTPUT_VALUE 0 [get_hw_probes bus_0/bram_0/dl]
commit_hw_vio [get_hw_probes {bus_0/bram_0/dl}]
