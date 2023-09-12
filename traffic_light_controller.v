`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mahmoud Lotfy
// 
// Create Date: 09/12/2023 03:02:30 PM
// Design Name: 
// Module Name: traffic_light_controller
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


module traffic_light_controller (
    input clk,rst,sa,sb,
    output reg ra,ya,ga,rb,yb,gb
);
reg [3:0] s0=0,
          s1=1,
          s2=2,
          s3=3,
          s4=4,
          s5=5,
          s6=6,
          s7=7,
          s8=8,
          s9=9,
          s10=10,
          s11=11,
          s12=12;

reg [3:0] curstate,nextstate;
//current state 
always @(posedge clk , negedge rst) begin
    if(!rst)
    curstate<=s0;
    else 
    curstate<=nextstate;
   
end
//next state
always @(sa,sb,curstate) begin
    case (curstate)
        s0,s1,s2,s3,s4,s6,s7,s8,s9,s10: begin
            nextstate= curstate+1;
        end
        s5:begin
            if(sb==0)
            nextstate=s5;
            else if(sb==1)
            nextstate=s6;
        end
        s11:begin
            if(sb==1 && sa==0)
            nextstate=s11;
            else 
            nextstate=s12;
        end
        s12: nextstate=s0;
        default: nextstate=curstate;
    endcase
    
end

//output
always @(curstate) begin
ra=0;
ya=0;
ga=0;
rb=0;
yb=0;
gb=0;
case (curstate)
    s0,s1,s2,s3,s4,s5: begin
        ga=1;
        rb=1;
    end
    s6:begin
        ya=1;
        rb=1;
    end
    s7,s8,s9,s10,s11:begin
        ra=1;
        gb=1;
    end
    s12:begin
        ra=1;
        yb=1;
    end
    default: begin
        ra=0;
        ya=0;
        ga=0;
        rb=0;
        yb=0;
        gb=0;
    end
endcase
    
end

endmodule