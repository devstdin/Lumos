// vim: tabstop=4:softtabstop=4:shiftwidth=4:noexpandtab
// -------------------------------------------------------------------------------------------------
// Register file with SPI interface
//

module spi
	#(
		parameter num_addrbits = 3,
		parameter num_databits = 8 )
	(
		// reset
		input wire reset,
		// Serial interface
		input  wire cs,
		input  wire sclk,
		input  wire din,
		output wire dout,
		output wire dout_en,
		// Register output
		output wire [7:0] ctrl0,
		output wire [7:0] ctrl1,
		output wire [7:0] ctrl2,
		// Combinatorial inputs
		input wire [7:0] stat0
	);
	
	//initial begin
	//	$display("Start **********************!");
	//end

	//`ifdef MY_SYMBOL
	//initial begin
	//	$display("MY_SYMBOL defined!");
	//end
	//`endif

	// the "macro" to dump signals in cocotb
	// /////////////////////////////////////
	//`ifdef COCOTB_SIM
	//initial begin
	//  $dumpfile("spi.vcd");
	//  $dumpvars(0, spi);
	//  #1;
	//end
	//`endif

	// Constant Helper Functions
	// /////////////////////////

	function integer intMax
	(
		input integer LEFT,
		input integer RIGHT
	);
		if (LEFT > RIGHT) intMax = LEFT; 
		else intMax = RIGHT;
	endfunction

	function integer numCntBits // required num bits to represent val
	(
		input integer val
	);
		for (numCntBits=0; val>0; numCntBits=numCntBits+1) val = val>>1;
	endfunction

	// Constants
	// /////////

	localparam num_opbits = 1;
	localparam num_words = 2;

	localparam OP_READ = 0;
	localparam OP_WRITE = 1;

	localparam rx_tmp_left = intMax(intMax(num_databits,num_opbits),num_addrbits);

	// Design Registers
	// ////////////////

	// regfile registers (rising-edge triggered, reset by 'reset' signal)
	reg [7:0] i_ctrl0;
	reg [7:0] i_ctrl1;
	reg [7:0] i_ctrl2;
	
	// logic registers (rising-edge triggered, reset by 'reset' signal)
	reg [rx_tmp_left:0] rx_tmp;
	reg [num_opbits-1:0] rx_op;
	reg [num_addrbits-1:0] rx_addr;

	// logic registers (falling-edge triggered, reset by 'reset' signal)
	reg [num_databits-1:0] tx_bits_d0;
	reg [num_databits-1:0] tx_bits_d1;

	// received bits counter (rising-edge triggered, reset by 'c's signal)
	reg [numCntBits(num_databits+num_opbits+num_addrbits+1)-1:0] re_cnt;
	
	// output enable (falling-edge triggered, reset by 'cs' signal)
	reg i_dout_en;

	// Logic
	// /////
	
	// counting rising edges on sclk
	always @(posedge sclk or negedge cs) begin
		if (cs == 0) begin
			re_cnt <= 'b0;
		end
		else begin
			if (re_cnt != num_databits+num_opbits+num_addrbits+1) begin
				re_cnt <= re_cnt + 1;
			end
		end 
	end

	// create status signals which signalize that signal is ready on next rising clock edge
	assign addr_ok = (re_cnt == num_addrbits-1);
	assign op0_ok = (re_cnt == num_addrbits+num_opbits-1);
	assign data_out_ok = (re_cnt == num_addrbits+num_opbits);
	assign data_in_ok = (re_cnt == num_addrbits+num_opbits+num_databits-1);
	
	// Output enable FF
	always @(negedge sclk, negedge cs) begin
		if (cs == 0) begin
			i_dout_en <= 'b0;
		end
		else begin
			if (data_out_ok)
				i_dout_en <= 1;
		end 
	end

	// receive data -- rising edge
	always @(posedge sclk or posedge reset) begin
		if (reset) begin
			i_ctrl0 <= 'b0;
			i_ctrl1 <= 'b0;
			i_ctrl2 <= 'b0;
		end
		else begin
			// shift-in received bit (rx_tmp holds data at end - left aligned)
			rx_tmp <= { din, rx_tmp[rx_tmp_left:1] };
			
			// store shifted-in addr and op
			if (addr_ok)
				rx_addr <= { din, rx_tmp[rx_tmp_left:(rx_tmp_left-num_addrbits+2)] };
			if (op0_ok)
				rx_op <= din;

			// address multiplexer
			case(rx_addr)
				0: // Status register
					;
				1: // Control 0 register
					if (rx_op == OP_WRITE && data_in_ok) 
						i_ctrl0 <= { din, rx_tmp[rx_tmp_left:(rx_tmp_left-num_databits+2)] };
				2: // Control 1 register
					if (rx_op == OP_WRITE && data_in_ok) 
						i_ctrl1 <= { din, rx_tmp[rx_tmp_left:(rx_tmp_left-num_databits+2)] };
				3: // Control 2 register
					if (rx_op == OP_WRITE && data_in_ok) 
						i_ctrl2 <= { din, rx_tmp[rx_tmp_left:(rx_tmp_left-num_databits+2)] };
				default:
					;
			endcase
		end 
	end

	// send data -- falling edge
	always @(negedge sclk) begin : tx_proc
		reg [num_databits-1:0] v_tx_bits_d1;

		// shift read data to output
		v_tx_bits_d1 = { 1'b0, tx_bits_d1[(num_databits-1):1] }; // shift to next ouput bit

		// address multiplexer
		case(rx_addr)
			0: // Status register
				if (op0_ok || data_out_ok) begin
					tx_bits_d0 <= stat0;
					v_tx_bits_d1 = tx_bits_d0;
				end
			1: // Control 0 register
				if (op0_ok || data_out_ok) begin
					tx_bits_d0 <= i_ctrl0;
					v_tx_bits_d1 = tx_bits_d0;
				end
			2: // Control 1 register
				if (op0_ok || data_out_ok) begin
					tx_bits_d0 <= i_ctrl1;
					v_tx_bits_d1 = tx_bits_d0;
				end
			3: // Control 2 register
				if (op0_ok || data_out_ok) begin
					tx_bits_d0 <= i_ctrl2;
					v_tx_bits_d1 = tx_bits_d0;
				end
			default:
				if (op0_ok || data_out_ok) begin
					tx_bits_d0 <= 0;
					v_tx_bits_d1 = tx_bits_d0;
				end
		endcase

		// assign register input
		tx_bits_d1 <= v_tx_bits_d1;
	end : tx_proc

	// generate output signals
	assign dout = tx_bits_d1[0];
	assign dout_en = (i_dout_en == 1 && cs == 1) ? 1 : 0;
	assign ctrl0 = i_ctrl0;
	assign ctrl1 = i_ctrl1;
	assign ctrl2 = i_ctrl2;

endmodule
