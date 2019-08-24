module adder(
  input [4:0] input1,
  input [4:0] input2,
  input [4:0] input3,
  input [5:0] input4,
  input [4:0] input5,
  input [4:0] input6,
  input Clk,
  output [7:0] out,
  input enable);


    always @ (posedge Clk) begin

        if (enable) begin
          out <= input1 + input2 + input3 + input4 + input5 + input6;
        end

        else begin
            out <= 0;
        end
    end

endmodule
