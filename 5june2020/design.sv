module num_zero(input [15:0] A,output reg [4:0] zeros);
  integer i;
  
  always @ (A)
    begin
      zeros = 0;
      for(i=0;i<16;i=i+1)   
        zeros = zeros + A[i];
    end

endmodule
