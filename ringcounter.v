module ringcounter(
    input clk, rst,
    output reg [5:0] t
);
always @(negedge clk or posedge rst) //Making it work at negedge of clk
begin
if(rst == 1)
    t <= 6'b100000; //when rst == 1 the counter is set to its initial state
    
else 
begin
    if(t == 6'b000001)
        t <= 6'b100000; 
        
    else
        t <= t >> 1; //Right shift operation at every negedge of clock
end
end
endmodule
