
          // Code written by Sruthi Bhattiprolu

// This module is capable of performing convolution with the kernel [1 0 -1, 2 0 -2, 1 0 -1]
// to obtain Gx required for Sobel Filter operations

''timescale 1ns / 1ps

module Gx_calc(
        input Clk,
        input enable,
        input [7:0] input1,
        input [7:0] input2,
        input [7:0] input3,
        input [7:0] input7,
        input [7:0] input8,
        input [7:0] input9,

        output [7:0] output1,
        output [7:0] output2,
        output [7:0] output3,
        output [7:0] output4,
        output [7:0] output5,
        output [7:0] output6,
  );

  always @ (posedge Clk) begin
    if (enable) begin
      output1 <= ~(input1) + 8'b1;
      output2 <= ~(input2 << 1) + 8'b1;
      output3 <= ~(input3) + 8'b1;
      output4 <= input7;
      output5 <= input8 << 1;
      output6 <= input9;
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
