module MAR(
input clk,
input [3:0] Addr_in,
input Lm, //Tells whether to load the address from the BUS (Active High signal)
output reg [3:0] mar_out
);

always @(posedge clk)
begin
    if(Lm)
        mar_out <= Addr_in;
        
    else
        mar_out <= mar_out;
end

endmodule
