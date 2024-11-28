module up_down_counter
  (
    input logic clk,
    input logic reset_n,
    input logic en,
    output logic [3:0] cnt
  );

always_ff @(posedge clk, negedge reset_n) begin
  if (!reset_n) begin
    cnt <=4'd0;
  end else begin
    if (en) begin
      cnt <= cnt + 4'd1;
    end
  end
end
endmodule // up_down_counter

    
