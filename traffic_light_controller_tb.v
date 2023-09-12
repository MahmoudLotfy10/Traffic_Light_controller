`timescale 1ms/1us
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mahmoud Lotfy
// 
// Create Date: 09/12/2023 03:02:52 PM
// Design Name: 
// Module Name: traffic_light_controller_tb
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

module traffic_light_controller_tb;
 
 parameter finish =200 ;
reg clk;
reg rst;
reg sa;
reg sb;
wire ra;
wire ya;
wire ga;
wire rb;
wire yb;
wire gb;
traffic_light_controller uut
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
always
#5000
clk=~clk;
initial begin
    initialization;
    rest;
    #1000
    @(negedge clk)
    sa=1;
    sb=1; 
   repeat (finish*5) @(negedge clk);
   $finish;
    
end


task initialization;
begin
    clk=0;
    rst=1;
    sa=0;
    sb=0;
end

endtask

task rest;
begin
#1000
rst=0;
#1000
rst=1;
end
endtask

endmodule
