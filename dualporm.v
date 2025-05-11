`timescale 1ns / 1ps

module memoryrom8bit( input [2:0] addr1,addr2,
input clk,en1,en2,
output reg [7:0] dout1,dout2);
always@(posedge clk) begin
if(en1)begin
case(addr1)
3'b000 : dout1 <= 8'b00000011; 
3'b001 : dout1 <= 8'b00000100;
3'b010 : dout1 <= 8'b00000101;
3'b011 : dout1 <= 8'b00000110;
3'b100 : dout1 <= 8'b00000111;
3'b101 : dout1 <= 8'b00001000;
3'b110 : dout1 <= 8'b00001001;
3'b111 : dout1 <= 8'b00001010;
endcase
end
else
dout1 <= 8'b00000000;
end
always@(posedge clk) begin
if(en2)begin
case(addr2)
3'b000 : dout2 <= 8'b00000011; 
3'b001 : dout2 <= 8'b00000100;
3'b010 : dout2 <= 8'b00000101;
3'b011 : dout2 <= 8'b00000110;
3'b100 : dout2 <= 8'b00000111;
3'b101 : dout2 <= 8'b00001000;
3'b110 : dout2 <= 8'b00001001;
3'b111 : dout2 <= 8'b00001010;
endcase
end
else
dout2 <= 8'b00000000;
end
endmodule
