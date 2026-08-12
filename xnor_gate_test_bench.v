module test;

reg a,b;
wire y;

xnorgate uut(a,b,y);

initial
begin
    a=0; b=0;
    $display("a=%b b=%b y=%b",a,b,y);

    #10 a=0; b=1;
    $display("a=%b b=%b y=%b",a,b,y);

    #10 a=1; b=0;
    $display("a=%b b=%b y=%b",a,b,y);

    #10 a=1; b=1;
    $display("a=%b b=%b y=%b",a,b,y);

    #10 $finish;
end

endmodule
