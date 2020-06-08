//`timescale 1ns/1ns
module test;
  wire t_out;
  reg t_a, t_b, t_c, t_d, t_s1, t_s0;
  mux4x2 my_4x2_mux( .i0(t_a), .i1(t_b), .i2(t_c), .i3(t_d), .s1(t_s1),.s0(t_s0), .out(t_out) );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, test);
    
// 1
    t_a = 1'b1;
    t_b = 1'b0;
    t_c = 1'b1;
    t_d = 1'b1;
    t_s0 = 1'b0;
    t_s1 = 1'b1;
    #5; 
    //2
    t_a = 1'b0;
    t_b = 1'b1;
    t_c = 1'b0;
    t_d = 1'b0;
    t_s0 = 1'b0;
    t_s1 = 1'b1;
    #5; 
    //3
    t_a = 1'b0;
    t_b = 1'b0;
    t_c = 1'b1;
    t_d = 1'b0;
    t_s0 = 1'b1;
    t_s1 = 1'b0;
    #5; 
    // 4
    t_a = 1'b0;
    t_b = 1'b0;
    t_c = 1'b0;
    t_d = 1'b1;
    t_s0 = 1'b1;
    t_s1 = 1'b1;
    #5; 
    //5
    t_a = 1'b1;
    t_b = 1'b0;
    t_c = 1'b0;
    t_d = 1'b0;
    t_s0 = 1'b0;
    t_s1 = 1'b0;
    $finish;
    
  end
endmodule