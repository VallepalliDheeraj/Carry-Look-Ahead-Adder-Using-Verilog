module name(cout,sum,a,b,cin);
  input cin;
  input [3:0]a,b;
  output cout;
  output [3:0]sum;
  wire p3,p2,p1,p0;
  wire g3,g2,g1,g0;
  wire c0,c1,c2,c3;

  assign g3=a[3]&b[3];
  assign g2=a[2]&b[2];
  assign g1=a[1]&b[1];
  assign g0=a[0]&b[0];

  assign p3=a[3]^b[3];
  assign p2=a[2]^b[2];
  assign p1=a[1]^b[1];
  assign p0=a[0]^b[0];

  assign c0=g0||(p0&cin);
  assign c1=g1|(p1&g0)|(p1&p0&cin);
  assign c2=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
  assign c3=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p2&p1&g0)|(p3&p2&p1&p0&cin);

  assign cout=c3;
  assign sum[0]=p0^cin;
  assign sum[1]=p1^c0;
  assign sum[2]=p2^c1;
  assign sum[3]=p3^c2;
endmodule