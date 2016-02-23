<<<<<<< HEAD
`include "pc.v"
module pc_tb();

reg clk;  //input
wire [1:0] qout;  //output
wire [1:0] qnout; //output
reg [1:0] q;
reg [1:0] qn;
reg j,k;

pc pc0(
	qout, qnout, clk
);

initial begin 
	
	clk = 0; j = 1'b1; k = 1'b1;
	q[0]  = 1'b0; qn[0]  = ~q[0];
	q[1]  = 1'b0; qn[1] =  ~q[1];

	$dumpfile ("pc.vcd"); 
    $monitor ("Time=%d, Clock=%b, q[0]=%b, qn[0]=%b, q[1]=%b, qn[1]=%b, qout[0]=%b, qout[1]=%b",$time,clk,q[0],qn[0],q[1],qn[1],qout[0],qout[1]);

    #10 $finish;

	end

always begin
	#2 clk = ~clk;
	
end

always@(posedge clk)
fork
	q[0] <= ~q[0];
	qn[0] <= ~qn[0];
	q[1] <= ~q[1];
	qn[1] <= ~qn[1];

join


endmodule
=======
`include "pc.v"
module pc_tb();

reg clk;  //input
wire [1:0] qout;  //output
wire [1:0] qnout; //output
reg [1:0] q;
reg [1:0] qn;
reg j,k;

pc pc0(
	qout, qnout, clk
);

initial begin 
	
	clk = 0; j = 1'b1; k = 1'b1;
	q[0]  = 1'b0; qn[0]  = ~q[0];
	q[1]  = 1'b0; qn[1] =  ~q[1];

	$dumpfile ("pc.vcd"); 
    $monitor ("Time=%d, Clock=%b, q[0]=%b, qn[0]=%b, q[1]=%b, qn[1]=%b, qout[0]=%b, qout[1]=%b",$time,clk,q[0],qn[0],q[1],qn[1],qout[0],qout[1]);

    #10 $finish;

	end

always begin
	#2 clk = ~clk;
	
end

always@(posedge clk)
fork
	q[0] <= ~q[0];
	qn[0] <= ~qn[0];
	q[1] <= ~q[1];
	qn[1] <= ~qn[1];

join


endmodule
>>>>>>> 4c719c418537323adcdba306372967a5ab19167a
