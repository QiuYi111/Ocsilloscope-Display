module FSM(
    input scl,
    input clk,
    input  Not_Rst,
    input [3:0] sel,
    output reg x,
    output reg y
);

parameter init1 = 8'b10010000;
parameter init2 = 8'b01000000;
reg [7:0] xarr [0:1350];
reg [7:0] yarr [0:1350];
reg [3:0] cnt;    // 8-bit counter
reg [3:0] old_sel;
reg [10:0] state;
reg [10:0] size = 2000;

 always @(negedge clk) begin
 
 if(sel != old_sel)
 begin
   old_sel <= sel;
   case(sel)
0: begin
       $readmemh("data/x1.mem", xarr);
        $readmemh("data/y1.mem", yarr);
        size <= 1348;
     end
    1: begin
         $readmemh("data/x2.mem", xarr);
         $readmemh("data/y2.mem", yarr);
         size <= 1097;
       end
     2: begin
         $readmemh("data/x3.mem", xarr);
         $readmemh("data/y3.mem", yarr);
         size <= 870;
       end
     3: begin
         $readmemh("data/x4.mem", xarr);
         $readmemh("data/y4.mem", yarr);
         size <= 383;
       end
     4: begin
         $readmemh("data/x5.mem", xarr);
         $readmemh("data/y5.mem", yarr);
         size <= 551;
       end
     5: begin
         $readmemh("data/x6.mem", xarr);
         $readmemh("data/y6.mem", yarr);
         size <= 576;
       end
     6: begin
         $readmemh("data/x7.mem", xarr);
         $readmemh("data/y7.mem", yarr);
         size <= 222;
       end
     7: begin
         $readmemh("data/x8.mem", xarr);
         $readmemh("data/y8.mem", yarr);
         size <= 233;
       end
     8: begin
         $readmemh("data/x9.mem", xarr);
         $readmemh("data/y9.mem", yarr);
         size <= 218;
       end
     9: begin
         $readmemh("data/x10.mem", xarr);
         $readmemh("data/y10.mem", yarr);
         size <= 865;
       end
     10: begin
         $readmemh("data/x11.mem", xarr);
         $readmemh("data/y11.mem", yarr);
         size <= 508;
       end
     11: begin
         $readmemh("data/x12.mem", xarr);
         $readmemh("data/y12.mem", yarr);
         size <= 238;
       end
     endcase
  
  end
  
  end

always @(posedge clk) begin 
    if ( Not_Rst == 0) begin
        state <= 0;
        cnt <= 0;
        x <= 1;
        y <= 1;
        $readmemh("data/x1.mem", xarr);
        $readmemh("data/y1.mem", yarr);
        size <= 1348;
    end else begin
        if (state == 1 && cnt == 7 && scl == 1) begin
            x <= 0;
            y <= 0;
        end
        if (scl == 0) begin
            if (cnt > 0)
                cnt <= cnt - 1;
            else begin
                cnt <= 8;
                if (state >= size + 2)
                    state <= 3;
                else
                    state <= state + 1;
            end
            case (state)
                0: begin
                        x <= 1'b1;
                        y <= 1'b1;
                   end
                1: begin
                        if (cnt <= 7) begin
                            x <= init1[cnt];
                            y <= init1[cnt];
                        end
                   end
                2: begin
                        if (cnt <= 7) begin
                            x <= init2[cnt];
                            y <= init2[cnt];
                        end
                   end
                default: begin
                        if (cnt <= 7) begin
                            x <= xarr[state-3][cnt];
                            y <= yarr[state-3][cnt];
                        end
                    end
            endcase
        end
    end
end

endmodule

