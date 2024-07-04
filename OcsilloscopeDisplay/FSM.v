module FSM(
input scl,
input clk,
input N_rst,
input[3:0] sel,
output reg x,
output reg y
);

parameter init1=8'b10010000;
parameter init2=8'b01000000;
reg[7:0] X_vec[0:1350];
reg[7:0] Y_vec[0:1350];
reg[3:0] count;	 //8位信息+1位应答
reg[3:0] old_sel;
reg[10:0] state;
reg[10:0] size=2000;

 always@(negedge clk)begin
 
 if(sel!=old_sel)
 begin
 	old_sel<=sel;
 	case(sel)
 	0:begin
 		$readmemh("data/x1.mem",X_vec);
 		$readmemh("data/y1.mem",Y_vec);
 		size<=1348;
 	  end
 	1:begin
 		$readmemh("data/x2.mem",X_vec);
 		$readmemh("data/y2.mem",Y_vec);
 		size<=1097;
 	  end
 	2:begin
 		$readmemh("data/x3.mem",X_vec);
 		$readmemh("data/y3.mem",Y_vec);
 		size<=870;
 	  end
 	3:begin
 		$readmemh("data/x4.mem",X_vec);
 		$readmemh("data/y4.mem",Y_vec);
 		size<=383;
 	  end
 	4:begin
 		$readmemh("data/x5.mem",X_vec);
 		$readmemh("data/y5.mem",Y_vec);
 		size<=551;
 	  end
 	5:begin
 		$readmemh("data/x6.mem",X_vec);
 		$readmemh("data/y6.mem",Y_vec);
 		size<=576;
 	  end
 	6:begin
 		$readmemh("data/x7.mem",X_vec);
 		$readmemh("data/y7.mem",Y_vec);
 		size<=222;
 	  end
 	7:begin
 		$readmemh("data/x8.mem",X_vec);
 		$readmemh("data/y8.mem",Y_vec);
 		size<=233;
 	  end
 	8:begin
 		$readmemh("data/x9.mem",X_vec);
 		$readmemh("data/y9.mem",Y_vec);
 		size<=218;
 	  end
 	9:begin
 		$readmemh("data/x10.mem",X_vec);
 		$readmemh("data/y10.mem",Y_vec);
 		size<=865;
 	  end
 	10:begin
 		$readmemh("data/x11.mem",X_vec);
 		$readmemh("data/y11.mem",Y_vec);
 		size<=508;
 	  end
 	11:begin
 		$readmemh("data/x12.mem",X_vec);
 		$readmemh("data/y12.mem",Y_vec);
 		size<=238;
 	  end
 	endcase
 	
 end
 
 
 end


always@(posedge clk) begin 
if(N_rst==0)begin
	state<=0;
	count<=0;
	x<=1;
	y<=1;
end
else begin
	if(state==1&&count==7&&scl==1)
	begin
		x<=0;
		y<=0;
	end
	if(scl==0)begin
		if(count>0)
			count<=count-1;
		else
		begin
			count<=8;
			if(state>=size+2)
				state<=3;
			else
				state<=state+1;
		end	
		case(state)
		0:begin
				x<=1'b1;
				y<=1'b1;
		  end
		1:begin
			if(count<=7)
			begin
				x<=init1[count];
				y<=init1[count];
			end
		  end
		2:begin
			if(count<=7)
			begin
				x<=init2[count];
				y<=init2[count];
			end
		  end
		default:
			if(count<=7)
			begin
				x<=X_vec[state-3][count];
				y<=255-Y_vec[state-3][count];
			end
		endcase
	end
end
end


endmodule