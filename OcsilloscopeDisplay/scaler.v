module scaler(
	input clk50Mhz,
	output reg clk1Mhz,
	output reg clk2Mhz
);

reg[5:0] count;

always@(posedge clk50Mhz)
begin

if(count>=49)
	count<=0;
else
	count<=count+1;
case(count)
	13:clk2Mhz<=1;
	25:begin clk1Mhz<=0;clk2Mhz<=0; end
	37:clk2Mhz<=1;
	0:begin clk1Mhz<=1;clk2Mhz<=0;end
endcase	


end


endmodule