module frame_rom_image( input [17:0] read_address,
						input Clk,
						output logic [3:0] data_out);

			logic [3:0] mem [0:255];

			initial
			begin
				$readmemh("image.txt", mem);
			end

			always_ff @ (posedge Clk)
			begin
				data_out <= mem[read_address];
			end

endmodule
