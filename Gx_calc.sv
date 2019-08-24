
          // Code written by Sruthi Bhattiprolu

// This module is capable of performing convolution with the kernel [1 0 -1, 2 0 -2, 1 0 -1]
// to obtain Gx required for Sobel Filter operations

''timescale 1ns / 1ps

module Gx_calc(
        input Clk,
        input enable,
        input [3:0] input1,
        input [3:0] input3,
        input [3:0] input4,
        input [3:0] input6,
        input [3:0] input7,
        input [3:0] input9,

        output [4:0] output1,
        output [4:0] output2,
        output [4:0] output3,
        output [5:0] output4,
        output [4:0] output5,
        output [4:0] output6
  );

  always @ (posedge Clk) begin
    if (enable) begin
      output1 <= input1;
      output2 <= ~(input3) + 4'b1;
      output3 <= input4 << 1;
      output4 <= ~(input6 << 1) + 4'b1;
      output5 <= input7;
      output6 <= ~(input9) + 4'b1;
    end

    else begin
      output1 <= 0;
      output2 <= 0;
      output3 <= 0;
      output4 <= 0;
      output5 <= 0;
      output6 <= 0;

    end

  end

endmodule
