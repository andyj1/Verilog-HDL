<<<<<<< HEAD
module dff (clk, s, r, d, q, qbar);
	input clk, s, r, d;
	output q,qbar;
	reg q,qbar;
	always @(negedge r) begin
		q = 1'b0;
		qbar = 1'b1;
		end
	always @(negedge s) begin
		q = 1'b1;
		qbar = 1'b0;
		end
	always @(posedge clk) begin
		q = d;
		qbar = ~d;
		end

=======
module dff (clk, s, r, d, q, qbar);
	input clk, s, r, d;
	output q,qbar;
	reg q,qbar;
	always @(negedge r) begin
		q = 1'b0;
		qbar = 1'b1;
		end
	always @(negedge s) begin
		q = 1'b1;
		qbar = 1'b0;
		end
	always @(posedge clk) begin
		q = d;
		qbar = ~d;
		end

>>>>>>> 4c719c418537323adcdba306372967a5ab19167a
endmodule