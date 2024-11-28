module up_down_counter
  (
    input logic clk,
    input logic reset_n,
    input logic up,
    input logic down,
    output logic [3:0] cnt
  );

always_ff @(posedge clk, negedge reset_n) begin
  if (!reset_n) begin
    cnt <=4'd0;
  end 
  else begin
    case ({up, down}) // caseでupとdownを組み合わせたバイナリを作成できる
      2'b10: cnt <= cnt + 4'd1;
      2'b01: cnt <= cnt - 4'd1;
      default cnt <= cnt; // 両方1または両方0の場合は保持
    endcase
  end
end
endmodule // up_down_counter

    
