module PC(
input clk, rst, Cp, Ep,
output reg [3:0] pc, 
output tri [3:0] pc_out
);
always @(posedge clk)
begin
    if(rst)
        pc <= 4'b0000; //If rst == 1'b1 then pc is reset to 4'd0;
    
    else
    begin
        if(Cp)
            pc <= pc + 1; //If Cp == 1'b1 then pc is increamented by 1
    
        else if(pc == 4'b1111)
            pc <= 4'b0000;
        else
            pc <= pc;
    end
end 
