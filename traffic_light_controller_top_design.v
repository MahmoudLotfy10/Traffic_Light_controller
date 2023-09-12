`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Mahmoud Lotfy
// 
// Create Date: 09/12/2023 03:27:17 PM
// Design Name: 
// Module Name: traffic_light_controller_top_design
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


module traffic_light_controller_top_design(
    input clk,rst,sa,sb,
    output  ra,ya,ga,rb,yb,gb
    );
    traffic_light_controller top_design
(.clk(clk),
.rst(rst),
.sa(sa),
.sb(sb),
.ra(ra),
.ya(ya),
.ga(ga),
.rb(rb),
.yb(yb),
.gb(gb)

);
endmodule
