module test;

reg a,b;
wire sum,carry;

halfadder uut(a,b,sum,carry);

initial
begin
    a=0; b=0;
    $display("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);

    #10 a=0; b=1;
    $display("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);

    #10 a=1; b=0;
    $display("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);

    #10 a=1; b=1;
    $display("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);

    #10 $finish;
end

endmodule
