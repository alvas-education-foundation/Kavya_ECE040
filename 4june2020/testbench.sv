module tff_tb;
  reg a,b;
  wire y,yb;
  mytff out(.t(a), .clk(b),.q(y),.qb(yb));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,tff_tb);
    a=0;
    b=0;
    #100;

    b=1;
    #100;

    a=1;
    b=0;
    #100;

    b=1;
    #100;
  end 
endmodule