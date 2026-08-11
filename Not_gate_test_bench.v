module test;

reg a;
wire y;

notgate uut(a,y);

initial
begin
    a=0;
    $display("a=%b y=%b",a,y);

    #10 a=1;
    $display("a=%b y=%b",a,y);

    #10 $finish;
end

endmodule
