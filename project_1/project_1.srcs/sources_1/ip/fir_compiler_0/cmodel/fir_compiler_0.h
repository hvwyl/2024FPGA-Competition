
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_0" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -61,0,-69,0,-77,0,-86,0,-96,0,-106,0,-117,0,-129,0,-141,0,-154,0,-168,0,-183,0,-199,0,-217,0,-235,0,-255,0,-276,0,-298,0,-323,0,-349,0,-378,0,-409,0,-444,0,-482,0,-523,0,-570,0,-622,0,-682,0,-750,0,-829,0,-922,0,-1033,0,-1169,0,-1339,0,-1560,0,-1858,0,-2286,0,-2956,0,-4155,0,-6943,0,-20857,0,20857,0,6943,0,4155,0,2956,0,2286,0,1858,0,1560,0,1339,0,1169,0,1033,0,922,0,829,0,750,0,682,0,622,0,570,0,523,0,482,0,444,0,409,0,378,0,349,0,323,0,298,0,276,0,255,0,235,0,217,0,199,0,183,0,168,0,154,0,141,0,129,0,117,0,106,0,96,0,86,0,77,0,69,0,61
// chanpats: 173
// name: fir_compiler_0
// filter_type: 3
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 163
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 12
// data_fract_width: 0
// output_rounding_mode: 1
// output_width: 16
// output_fract_width: 0
// config_method: 0

const double fir_compiler_0_coefficients[163] = {-61,0,-69,0,-77,0,-86,0,-96,0,-106,0,-117,0,-129,0,-141,0,-154,0,-168,0,-183,0,-199,0,-217,0,-235,0,-255,0,-276,0,-298,0,-323,0,-349,0,-378,0,-409,0,-444,0,-482,0,-523,0,-570,0,-622,0,-682,0,-750,0,-829,0,-922,0,-1033,0,-1169,0,-1339,0,-1560,0,-1858,0,-2286,0,-2956,0,-4155,0,-6943,0,-20857,0,20857,0,6943,0,4155,0,2956,0,2286,0,1858,0,1560,0,1339,0,1169,0,1033,0,922,0,829,0,750,0,682,0,622,0,570,0,523,0,482,0,444,0,409,0,378,0,349,0,323,0,298,0,276,0,255,0,235,0,217,0,199,0,183,0,168,0,154,0,141,0,129,0,117,0,106,0,96,0,86,0,77,0,69,0,61};

const xip_fir_v7_2_pattern fir_compiler_0_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_0_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_0";
  config.filter_type         = 3;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_0_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 163;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_0_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 12;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_TRUNCATE_LSBS;
  config.output_width        = 16;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_0_config = gen_fir_compiler_0_config();

