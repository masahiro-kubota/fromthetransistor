module up_down_counter
  (
    input logic clk, // clk、reset_n、enはON OFFみたいなもん。clkはクロックだからMHz単位でON OFFが行われる。
    input logic reset_n,
    input logic up,
    input logic down,
    output logic [3:0] cnt // [3:0]は4bitの信号を表す。この時点では何進数かは決めなくていい。
  );

always_ff @(posedge clk, negedge reset_n) begin // posedge clk, negedge reset_nは回路の動作開始タイミングを定義する文
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

    
