module GX_top(
              input Clk,
              input Reset,

              //output should be convolved image
              // - You can write in memory
              // - You can store values in registers

              );

        reg [7:0] imageArray [0:224];
        reg [7:0] result [0:24];

        initial $readmemh("image.txt", imageArray, 0, 224);

        logic [3:0] input1_1;
        logic [3:0] input3_1;
        logic [3:0] input4_1;
        logic [3:0] input6_1;
        logic [3:0] input7_1;
        logic [3:0] input9_1;

        logic [4:0] output1_1;
        logic [4:0] output2_1;
        logic [4:0] output3_1;
        logic [5:0] output4_1;
        logic [4:0] output5_1;
        logic [4:0] output6_1;
        logic [7:0] final_1;

        Gx_calc part1(
          .Clk(Clk),
          .enable(enable),
          .input1(input1_1),
          .input3(input3_1),
          .input4(input4_1),
          .input6(input6_1),
          .input7(input7_1),
          .input9(input9_1),

          .output1(output1_1),
          .output2(output2_1),
          .output3(output3_1),
          .output4(output4_1),
          .output5(output5_1),
          .output6(output6_1)

          );

        adder add_1(
          .input1(output1_1),
          .input2(output2_1),
          .input3(output3_1),
          .input4(output4_1),
          .input5(output5_1),
          .input6(output6_1),
          .Clk(Clk),
          .out(final_1),
          .enable(enable)
          );

          assign input1_1 = imageArray[0];
          assign input3_1 = imageArray[2];
          assign input4_1 = imageArray[3];
          assign input6_1 = imageArray[5];
          assign input7_1 = imageArray[6];
          assign input9_1 = imageArray[8];
          assign final_1 = result[0];


//-----------------------------------Convolution Part 2 -----------------------------------

logic [3:0] input1_2;
logic [3:0] input3_2;
logic [3:0] input4_2;
logic [3:0] input6_2;
logic [3:0] input7_2;
logic [3:0] input9_2;

logic [4:0] output1_2;
logic [4:0] output2_2;
logic [4:0] output3_2;
logic [5:0] output4_2;
logic [4:0] output5_2;
logic [4:0] output6_2;
logic [7:0] final_2;

Gx_calc part2(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_2),
  .input3(input3_2),
  .input4(input4_2),
  .input6(input6_2),
  .input7(input7_2),
  .input9(input9_2),

  .output1(output1_2),
  .output2(output2_2),
  .output3(output3_2),
  .output4(output4_2),
  .output5(output5_2),
  .output6(output6_2)

  );

adder add_2(
  .input1(output1_2),
  .input2(output2_2),
  .input3(output3_2),
  .input4(output4_2),
  .input5(output5_2),
  .input6(output6_2),
  .Clk(Clk),
  .out(final_2),
  .enable(enable)
  );

  assign input1_2 = imageArray[9];
  assign input3_2 = imageArray[11];
  assign input4_2 = imageArray[12];
  assign input6_2 = imageArray[14];
  assign input7_2 = imageArray[15];
  assign input9_2 = imageArray[17];
  assign final_2 = result[1];

//-----------------------------------Convolution Part 3 -----------------------------------


logic [3:0] input1_3;
logic [3:0] input3_3;
logic [3:0] input4_3;
logic [3:0] input6_3;
logic [3:0] input7_3;
logic [3:0] input9_3;

logic [4:0] output1_3;
logic [4:0] output2_3;
logic [4:0] output3_3;
logic [5:0] output4_3;
logic [4:0] output5_3;
logic [4:0] output6_3;
logic [7:0] final_3;

Gx_calc part3(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_3),
  .input3(input3_3),
  .input4(input4_3),
  .input6(input6_3),
  .input7(input7_3),
  .input9(input9_3),

  .output1(output1_3),
  .output2(output2_3),
  .output3(output3_3),
  .output4(output4_3),
  .output5(output5_3),
  .output6(output6_3)

  );

adder add_3(
  .input1(output1_3),
  .input2(output2_3),
  .input3(output3_3),
  .input4(output4_3),
  .input5(output5_3),
  .input6(output6_3),
  .Clk(Clk),
  .out(final_3),
  .enable(enable)
  );

  assign input1_3 = imageArray[18];
  assign input3_3 = imageArray[20];
  assign input4_3 = imageArray[21];
  assign input6_3 = imageArray[23];
  assign input7_3 = imageArray[24];
  assign input9_3 = imageArray[26];
  assign final_3= result[2];

//-----------------------------------Convolution Part 4 -----------------------------------

logic [3:0] input1_4;
logic [3:0] input3_4;
logic [3:0] input4_4;
logic [3:0] input6_4;
logic [3:0] input7_4;
logic [3:0] input9_4;

logic [4:0] output1_4;
logic [4:0] output2_4;
logic [4:0] output3_4;
logic [5:0] output4_4;
logic [4:0] output5_4;
logic [4:0] output6_4;
logic [7:0] final_4;

Gx_calc part4(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_4),
  .input3(input3_4),
  .input4(input4_4),
  .input6(input6_4),
  .input7(input7_4),
  .input9(input9_4),

  .output1(output1_4),
  .output2(output2_4),
  .output3(output3_4),
  .output4(output4_4),
  .output5(output5_4),
  .output6(output6_4)

  );

adder add_4(
  .input1(output1_4),
  .input2(output2_4),
  .input3(output3_4),
  .input4(output4_4),
  .input5(output5_4),
  .input6(output6_4),
  .Clk(Clk),
  .out(final_4),
  .enable(enable)
  );

  assign input1_4 = imageArray[27];
  assign input3_4 = imageArray[29];
  assign input4_4 = imageArray[30];
  assign input6_4 = imageArray[32];
  assign input7_4 = imageArray[33];
  assign input9_4 = imageArray[35];
  assign final_4 = result[3];


//-----------------------------------Convolution Part 5 -----------------------------------

logic [3:0] input1_5;
logic [3:0] input3_5;
logic [3:0] input4_5;
logic [3:0] input6_5;
logic [3:0] input7_5;
logic [3:0] input9_5;

logic [4:0] output1_5;
logic [4:0] output2_5;
logic [4:0] output3_5;
logic [5:0] output4_5;
logic [4:0] output5_5;
logic [4:0] output6_5;
logic [7:0] final_5;

Gx_calc part5(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_5),
  .input3(input3_5),
  .input4(input4_5),
  .input6(input6_5),
  .input7(input7_5),
  .input9(input9_5),

  .output1(output1_5),
  .output2(output2_5),
  .output3(output3_5),
  .output4(output4_5),
  .output5(output5_5),
  .output6(output6_5)

  );

adder add_5(
  .input1(output1_5),
  .input2(output2_5),
  .input3(output3_5),
  .input4(output4_5),
  .input5(output5_5),
  .input6(output6_5),
  .Clk(Clk),
  .out(final_5),
  .enable(enable)
  );

  assign input1_5 = imageArray[36];
  assign input3_5 = imageArray[38];
  assign input4_5 = imageArray[39];
  assign input6_5 = imageArray[41];
  assign input7_5 = imageArray[42];
  assign input9_5 = imageArray[43];
  assign final_5 = result[4];


//-----------------------------------Convolution Part 6 -----------------------------------


logic [3:0] input1_6;
logic [3:0] input3_6;
logic [3:0] input4_6;
logic [3:0] input6_6;
logic [3:0] input7_6;
logic [3:0] input9_6;

logic [4:0] output1_6;
logic [4:0] output2_6;
logic [4:0] output3_6;
logic [5:0] output4_6;
logic [4:0] output5_6;
logic [4:0] output6_6;
logic [7:0] final_6;

Gx_calc part6(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_6),
  .input3(input3_6),
  .input4(input4_6),
  .input6(input6_6),
  .input7(input7_6),
  .input9(input9_6),

  .output1(output1_6),
  .output2(output2_6),
  .output3(output3_6),
  .output4(output4_6),
  .output5(output5_6),
  .output6(output6_6)

  );

adder add_6(
  .input1(output1_6),
  .input2(output2_6),
  .input3(output3_6),
  .input4(output4_6),
  .input5(output5_6),
  .input6(output6_6),
  .Clk(Clk),
  .out(final_6),
  .enable(enable)
  );

  assign input1_6 = imageArray[45];
  assign input3_6 = imageArray[47];
  assign input4_6 = imageArray[48];
  assign input6_6 = imageArray[50];
  assign input7_6 = imageArray[51];
  assign input9_6 = imageArray[53];
  assign final_6 = result[5];


//-----------------------------------Convolution Part 7 -----------------------------------

logic [3:0] input1_7;
logic [3:0] input3_7;
logic [3:0] input4_7;
logic [3:0] input6_7;
logic [3:0] input7_7;
logic [3:0] input9_7;

logic [4:0] output1_7;
logic [4:0] output2_7;
logic [4:0] output3_7;
logic [5:0] output4_7;
logic [4:0] output5_7;
logic [4:0] output6_7;
logic [7:0] final_7;

Gx_calc part7(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_7),
  .input3(input3_7),
  .input4(input4_7),
  .input6(input6_7),
  .input7(input7_7),
  .input9(input9_7),

  .output1(output1_7),
  .output2(output2_7),
  .output3(output3_7),
  .output4(output4_7),
  .output5(output5_7),
  .output6(output6_7)

  );

adder add_7(
  .input1(output1_7),
  .input2(output2_7),
  .input3(output3_7),
  .input4(output4_7),
  .input5(output5_7),
  .input6(output6_7),
  .Clk(Clk),
  .out(final_7),
  .enable(enable)
  );

  assign input1_7 = imageArray[54];
  assign input3_7 = imageArray[56];
  assign input4_7 = imageArray[57];
  assign input6_7 = imageArray[59];
  assign input7_7 = imageArray[60];
  assign input9_7 = imageArray[62];
  assign final_7 = result[6];


//-----------------------------------Convolution Part 8 -----------------------------------

logic [3:0] input1_8;
logic [3:0] input3_8;
logic [3:0] input4_8;
logic [3:0] input6_8;
logic [3:0] input7_8;
logic [3:0] input9_8;

logic [4:0] output1_8;
logic [4:0] output2_8;
logic [4:0] output3_8;
logic [5:0] output4_8;
logic [4:0] output5_8;
logic [4:0] output6_8;
logic [7:0] final_8;

Gx_calc part8(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_8),
  .input3(input3_8),
  .input4(input4_8),
  .input6(input6_8),
  .input7(input7_8),
  .input9(input9_8),

  .output1(output1_8),
  .output2(output2_8),
  .output3(output3_8),
  .output4(output4_8),
  .output5(output5_8),
  .output6(output6_8)

  );

adder add_8(
  .input1(output1_8),
  .input2(output2_8),
  .input3(output3_8),
  .input4(output4_8),
  .input5(output5_8),
  .input6(output6_8),
  .Clk(Clk),
  .out(final_8),
  .enable(enable)
  );

  assign input1_8 = imageArray[63];
  assign input3_8 = imageArray[65];
  assign input4_8 = imageArray[66];
  assign input6_8 = imageArray[68];
  assign input7_8 = imageArray[69];
  assign input9_8 = imageArray[71];
  assign final_8 = result[7];


//-----------------------------------Convolution Part 9 -----------------------------------

logic [3:0] input1_9;
logic [3:0] input3_9;
logic [3:0] input4_9;
logic [3:0] input6_9;
logic [3:0] input7_9;
logic [3:0] input9_9;

logic [4:0] output1_9;
logic [4:0] output2_9;
logic [4:0] output3_9;
logic [5:0] output4_9;
logic [4:0] output5_9;
logic [4:0] output6_9;
logic [7:0] final_9;

Gx_calc part9(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_9),
  .input3(input3_9),
  .input4(input4_9),
  .input6(input6_9),
  .input7(input7_9),
  .input9(input9_9),

  .output1(output1_9),
  .output2(output2_9),
  .output3(output3_9),
  .output4(output4_9),
  .output5(output5_9),
  .output6(output6_9)

  );

adder add_9(
  .input1(output1_9),
  .input2(output2_9),
  .input3(output3_9),
  .input4(output4_9),
  .input5(output5_9),
  .input6(output6_9),
  .Clk(Clk),
  .out(final_9),
  .enable(enable)
  );

  assign input1_9 = imageArray[72];
  assign input3_9 = imageArray[74];
  assign input4_9 = imageArray[75];
  assign input6_9 = imageArray[77];
  assign input7_9 = imageArray[78];
  assign input9_9 = imageArray[80];
  assign final_9 = result[8];


//-----------------------------------Convolution Part 10 -----------------------------------

logic [3:0] input1_10;
logic [3:0] input3_10;
logic [3:0] input4_10;
logic [3:0] input6_10;
logic [3:0] input7_10;
logic [3:0] input9_10;

logic [4:0] output1_10;
logic [4:0] output2_10;
logic [4:0] output3_10;
logic [5:0] output4_10;
logic [4:0] output5_10;
logic [4:0] output6_10;
logic [7:0] final_10;

Gx_calc part10(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_10),
  .input3(input3_10),
  .input4(input4_10),
  .input6(input6_10),
  .input7(input7_10),
  .input9(input9_10),

  .output1(output1_10),
  .output2(output2_10),
  .output3(output3_10),
  .output4(output4_10),
  .output5(output5_10),
  .output6(output6_10)

  );

adder add_10(
  .input1(output1_10),
  .input2(output2_10),
  .input3(output3_10),
  .input4(output4_10),
  .input5(output5_10),
  .input6(output6_10),
  .Clk(Clk),
  .out(final_10),
  .enable(enable)
  );

  assign input1_10 = imageArray[81];
  assign input3_10 = imageArray[83];
  assign input4_10 = imageArray[84];
  assign input6_10 = imageArray[86];
  assign input7_10 = imageArray[87];
  assign input9_10 = imageArray[89];
  assign final_10 = result[9];


//-----------------------------------Convolution Part 11 -----------------------------------


logic [3:0] input1_11;
logic [3:0] input3_11;
logic [3:0] input4_11;
logic [3:0] input6_11;
logic [3:0] input7_11;
logic [3:0] input9_11;

logic [4:0] output1_11;
logic [4:0] output2_11;
logic [4:0] output3_11;
logic [5:0] output4_11;
logic [4:0] output5_11;
logic [4:0] output6_11;
logic [7:0] final_11;

Gx_calc part11(
  .Clk(Clk),
  .enable(enable),
  .input1(input1_11),
  .input3(input3_11),
  .input4(input4_11),
  .input6(input6_11),
  .input7(input7_11),
  .input9(input9_11),

  .output1(output1_11),
  .output2(output2_11),
  .output3(output3_11),
  .output4(output4_11),
  .output5(output5_11),
  .output6(output6_11)

  );

adder add_11(
  .input1(output1_11),
  .input2(output2_11),
  .input3(output3_11),
  .input4(output4_11),
  .input5(output5_11),
  .input6(output6_11),
  .Clk(Clk),
  .out(final_11),
  .enable(enable)
  );

  assign input1_11 = imageArray[0];
  assign input3_11 = imageArray[2];
  assign input4_11 = imageArray[3];
  assign input6_11 = imageArray[5];
  assign input7_11 = imageArray[6];
  assign input9_11 = imageArray[8];
  assign final_11 = result[10];


//-----------------------------------Convolution Part 12 -----------------------------------
