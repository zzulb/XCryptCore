/*  
Copyright 2019 XCrypt Studio                
																	 
Licensed under the Apache License, Version 2.0 (the "License");         
you may not use this file except in compliance with the License.        
You may obtain a copy of the License at                                 
																	 
 http://www.apache.org/licenses/LICENSE-2.0                          
																	 
Unless required by applicable law or agreed to in writing, software    
distributed under the License is distributed on an "AS IS" BASIS,       
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and     
limitations under the License.                                          
*/  

// ------------------------------------------------------------------------------
// File name        :   tb_sha3_256.v
// Function         :   SHA3 Hash Algorithm Core Simulate File 
// ------------------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-1-22
// Email            :   xcrypt@126.com
// ------------------------------------------------------------------------------

`timescale 1ns / 1ps



module tb_sha3_256();
    
    reg             	r_clk;
    reg             	r_rst;
    reg             	r_start;    
    reg     [64*25-1:0] r_vin;
    wire    [64*25-1:0] s_vout;
    wire            	s_done;
	
	reg [255:0]	INIT = {32'h6A09E667,32'hBB67AE85,32'h3C6EF372,32'hA54FF53A,
						32'h510E527F,32'h9B05688C,32'h1F83D9AB,32'h5BE0CD19};		
	
	//SHA3_256("") = {
    //  0xa7, 0xff, 0xc6, 0xf8, 0xbf, 0x1e, 0xd7, 0x66,
    //  0x51, 0xc1, 0x47, 0x56, 0xa0, 0x61, 0xd6, 0x62,
    //  0xf5, 0x80, 0xff, 0x4d, 0xe4, 0x3b, 0x49, 0xfa,
    //  0x82, 0xd8, 0x0a, 0x4b, 0x80, 0xf8, 0x43, 0x4a}
	reg [64*25-1:0] DATA1 = {
		64'h06000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000080,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000
	};
	
	//SHA3_256(200*0xa3) = 
	  // 0x79, 0xf3, 0x8a, 0xde, 0xc5, 0xc2, 0x03, 0x07,
      // 0xa9, 0x8e, 0xf7, 0x6e, 0x83, 0x24, 0xaf, 0xbf,
      // 0xd4, 0x6c, 0xfd, 0x81, 0xb2, 0x2e, 0x39, 0x73,
      // 0xc6, 0x5f, 0xa1, 0xbd, 0x9d, 0xe3, 0x17, 0x87
	reg [64*25-1:0] DATA2_1 = {
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'ha3a3a3a3_a3a3a3a3,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000
		};
	reg [64*25-1:0] DATA2_2 = {
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,64'ha3a3a3a3_a3a3a3a3,
		64'h06000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000080,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,64'h00000000_00000000,
		64'h00000000_00000000
		};	

	function [63:0] SWAP;
        input [63:0] DIN;
        begin
            SWAP = {DIN[7:0],DIN[15:8],DIN[23:16],DIN[31:24],DIN[39:32],DIN[47:40],DIN[55:48],DIN[63:56]};
        end
    endfunction	
		
    keccakf_core uut(
    .i_clk      (r_clk),
    .i_rst      (r_rst),
    .i_start    (r_start),
    .i_vin      (r_vin),
    .o_vout     (s_vout),
    .o_done     (s_done));    
    
    initial begin
        r_clk = 0;
        forever #5 r_clk = ~r_clk;
    end
    
    initial begin
        r_rst = 1'b1;
        r_start = 1'b0;
        r_vin = 256'b0;
        repeat(50) @(negedge r_clk);
        r_rst = 1'b0;
		
        ////test data 1
        repeat(50) @(negedge r_clk);
        r_start = 1'b1;
        r_vin = DATA1; //init
        $display("vin=0x%x",r_vin);
        @(negedge r_clk);
        r_start = 1'b0;
        wait(s_done);
        $display("vout=0x%x",s_vout);
         
        /////test data 2
        repeat(50) @(negedge r_clk); 
        r_start = 1'b1;
        r_vin = DATA2_1; //init  
        $display("vin=0x%x",r_vin);
        @(negedge r_clk);
        r_start = 1'b0;
        wait(s_done);
		$display("vout=0x%x",s_vout); 
        r_vin = DATA2_2^s_vout;
        $display("vin=0x%x",SWAP(r_vin[64*25-1:64*24]));
		$display("vin=0x%x",SWAP(r_vin[64*24-1:64*23]));
		$display("vin=0x%x",SWAP(r_vin[64*23-1:64*22]));
		$display("vin=0x%x",SWAP(r_vin[64*22-1:64*21]));
		$display("vin=0x%x",SWAP(r_vin[64*21-1:64*20]));
		$display("vin=0x%x",SWAP(r_vin[64*20-1:64*19]));
		$display("vin=0x%x",SWAP(r_vin[64*19-1:64*18]));
		$display("vin=0x%x",SWAP(r_vin[64*18-1:64*17]));
		$display("vin=0x%x",SWAP(r_vin[64*17-1:64*16]));
		$display("vin=0x%x",SWAP(r_vin[64*16-1:64*15]));
		$display("vin=0x%x",SWAP(r_vin[64*15-1:64*14]));
		$display("vin=0x%x",SWAP(r_vin[64*14-1:64*13]));
		$display("vin=0x%x",SWAP(r_vin[64*13-1:64*12]));
		$display("vin=0x%x",SWAP(r_vin[64*12-1:64*11]));
		$display("vin=0x%x",SWAP(r_vin[64*11-1:64*10]));
		$display("vin=0x%x",SWAP(r_vin[64*10-1:64* 9]));
		$display("vin=0x%x",SWAP(r_vin[64* 9-1:64* 8]));
		$display("vin=0x%x",SWAP(r_vin[64* 8-1:64* 7]));
		$display("vin=0x%x",SWAP(r_vin[64* 7-1:64* 6]));
		$display("vin=0x%x",SWAP(r_vin[64* 6-1:64* 5]));
		$display("vin=0x%x",SWAP(r_vin[64* 5-1:64* 4]));
		$display("vin=0x%x",SWAP(r_vin[64* 4-1:64* 3]));
		$display("vin=0x%x",SWAP(r_vin[64* 3-1:64* 2]));
		$display("vin=0x%x",SWAP(r_vin[64* 2-1:64* 1]));
		$display("vin=0x%x",SWAP(r_vin[64* 1-1:64* 0]));	
		@(negedge r_clk);
		r_start = 1'b1;   
        @(negedge r_clk);
        r_start = 1'b0;
        wait(s_done);               
        $display("vout=0x%x",s_vout);
		
        /////stop
        repeat(50) @(negedge r_clk);         
        $stop;
    end
    
endmodule
