module mytff(t,q,qb,clk);
  input   t,clk;
  output q,qb;
  reg q,qb;
  initial q=0;
  
  always@(posedge clk)
    begin
      if (t==1)
        begin
                q=~q;
              end
      else
        begin
      q=q;                
        end
        qb=~q;
      end
endmodule

