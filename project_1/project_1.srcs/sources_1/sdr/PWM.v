`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 00:28:44
// Design Name: 
// Module Name: PWM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// PWM(
//   .clk(),
//   .rst(),
//   .pwm_period_counter(), 
//   .signal_in(),
//   .PWM_out()
// );

module PWM(
  // 输入时钟信号
  input clk,
  // 复位信号
  input rst,
  // PWM周期计数器
  input [15:0] pwm_period_counter, 
  // 输入信号
  input [15:0] signal_in,
  // PWM输出信号
  output reg PWM_out
);
  // 计数器寄存器
  reg [15:0] cnt;
  
  // 计数器逻辑
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      cnt<=0;
    end
    else if(clk) begin
      if(cnt>=pwm_period_counter) cnt<=0;
      else cnt<=cnt+1;
    end
  end
  
  // PWM输出逻辑
  always @(posedge clk or posedge rst) begin
    if(rst) PWM_out<=0;
    else if(clk) begin
      if(signal_in>=cnt) PWM_out<=1;
      else PWM_out<=0;
    end
  end
endmodule