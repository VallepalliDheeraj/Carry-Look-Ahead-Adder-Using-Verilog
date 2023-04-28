module testbench;
  reg cin;
  reg [3:0]a,b;
  wire cout;
  wire [3:0]sum;

  name DUT(cout,sum,a,b,cin);
  initial
  begin
    $dumpfile("code1.vcd");
    $dumpvars(0,testbench);
    $monitor($time,"a=%b , b=%b , cin=%b , sum=%b , cout=%b",a,b,cin,sum,cout);
    a=4'b0000 ; b=4'b0000 ; cin=0;
    #5 a=4'b0001 ; b=4'b0001 ; cin=0;
    #5 a=4'b0111 ; b=4'b0111 ; cin=0;
    #5 a=4'b1011 ; b=4'b1011 ; cin=0;
    #5 a=4'b1111 ; b=4'b1111 ; cin=1;
    #5 $finish;
  end
endmodule