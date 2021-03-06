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
// File name        :   cast5_sbox15.v
// Function         :   CAST5 Cryptographic Algorithm Core SBox-1 & SBox-5
// ------------------------------------------------------------------------------
// Author           :   Xie
// Version          ：  v-1.0
// Date				:   2019-2-2
// Email            :   xcrypt@126.com
// ------------------------------------------------------------------------------

`timescale 1ns / 1ps

module cast5_sbox15(
	input 			i_clk,
	input 			i_sel, //1:SBox-1 0:SBox-5
    input   [7:0]   i_addr,
    output  [31:0]  o_data
    );
	
	localparam DLY = 1;
	
    reg [31:0] r_dout;
    assign o_data = r_dout;
	//
    always@(posedge i_clk) begin
		if(i_sel) begin //SBox-1
			case(i_addr)
				8'h00 : r_dout <= #DLY 32'h30fb40d4;
				8'h01 : r_dout <= #DLY 32'h9fa0ff0b;
				8'h02 : r_dout <= #DLY 32'h6beccd2f;
				8'h03 : r_dout <= #DLY 32'h3f258c7a;
				8'h04 : r_dout <= #DLY 32'h1e213f2f;
				8'h05 : r_dout <= #DLY 32'h9c004dd3;
				8'h06 : r_dout <= #DLY 32'h6003e540;
				8'h07 : r_dout <= #DLY 32'hcf9fc949;
				8'h08 : r_dout <= #DLY 32'hbfd4af27;
				8'h09 : r_dout <= #DLY 32'h88bbbdb5;
				8'h0a : r_dout <= #DLY 32'he2034090;
				8'h0b : r_dout <= #DLY 32'h98d09675;
				8'h0c : r_dout <= #DLY 32'h6e63a0e0;
				8'h0d : r_dout <= #DLY 32'h15c361d2;
				8'h0e : r_dout <= #DLY 32'hc2e7661d;
				8'h0f : r_dout <= #DLY 32'h22d4ff8e;
				8'h10 : r_dout <= #DLY 32'h28683b6f;
				8'h11 : r_dout <= #DLY 32'hc07fd059;
				8'h12 : r_dout <= #DLY 32'hff2379c8;
				8'h13 : r_dout <= #DLY 32'h775f50e2;
				8'h14 : r_dout <= #DLY 32'h43c340d3;
				8'h15 : r_dout <= #DLY 32'hdf2f8656;
				8'h16 : r_dout <= #DLY 32'h887ca41a;
				8'h17 : r_dout <= #DLY 32'ha2d2bd2d;
				8'h18 : r_dout <= #DLY 32'ha1c9e0d6;
				8'h19 : r_dout <= #DLY 32'h346c4819;
				8'h1a : r_dout <= #DLY 32'h61b76d87;
				8'h1b : r_dout <= #DLY 32'h22540f2f;
				8'h1c : r_dout <= #DLY 32'h2abe32e1;
				8'h1d : r_dout <= #DLY 32'haa54166b;
				8'h1e : r_dout <= #DLY 32'h22568e3a;
				8'h1f : r_dout <= #DLY 32'ha2d341d0;
				8'h20 : r_dout <= #DLY 32'h66db40c8;
				8'h21 : r_dout <= #DLY 32'ha784392f;
				8'h22 : r_dout <= #DLY 32'h004dff2f;
				8'h23 : r_dout <= #DLY 32'h2db9d2de;
				8'h24 : r_dout <= #DLY 32'h97943fac;
				8'h25 : r_dout <= #DLY 32'h4a97c1d8;
				8'h26 : r_dout <= #DLY 32'h527644b7;
				8'h27 : r_dout <= #DLY 32'hb5f437a7;
				8'h28 : r_dout <= #DLY 32'hb82cbaef;
				8'h29 : r_dout <= #DLY 32'hd751d159;
				8'h2a : r_dout <= #DLY 32'h6ff7f0ed;
				8'h2b : r_dout <= #DLY 32'h5a097a1f;
				8'h2c : r_dout <= #DLY 32'h827b68d0;
				8'h2d : r_dout <= #DLY 32'h90ecf52e;
				8'h2e : r_dout <= #DLY 32'h22b0c054;
				8'h2f : r_dout <= #DLY 32'hbc8e5935;
				8'h30 : r_dout <= #DLY 32'h4b6d2f7f;
				8'h31 : r_dout <= #DLY 32'h50bb64a2;
				8'h32 : r_dout <= #DLY 32'hd2664910;
				8'h33 : r_dout <= #DLY 32'hbee5812d;
				8'h34 : r_dout <= #DLY 32'hb7332290;
				8'h35 : r_dout <= #DLY 32'he93b159f;
				8'h36 : r_dout <= #DLY 32'hb48ee411;
				8'h37 : r_dout <= #DLY 32'h4bff345d;
				8'h38 : r_dout <= #DLY 32'hfd45c240;
				8'h39 : r_dout <= #DLY 32'had31973f;
				8'h3a : r_dout <= #DLY 32'hc4f6d02e;
				8'h3b : r_dout <= #DLY 32'h55fc8165;
				8'h3c : r_dout <= #DLY 32'hd5b1caad;
				8'h3d : r_dout <= #DLY 32'ha1ac2dae;
				8'h3e : r_dout <= #DLY 32'ha2d4b76d;
				8'h3f : r_dout <= #DLY 32'hc19b0c50;
				8'h40 : r_dout <= #DLY 32'h882240f2;
				8'h41 : r_dout <= #DLY 32'h0c6e4f38;
				8'h42 : r_dout <= #DLY 32'ha4e4bfd7;
				8'h43 : r_dout <= #DLY 32'h4f5ba272;
				8'h44 : r_dout <= #DLY 32'h564c1d2f;
				8'h45 : r_dout <= #DLY 32'hc59c5319;
				8'h46 : r_dout <= #DLY 32'hb949e354;
				8'h47 : r_dout <= #DLY 32'hb04669fe;
				8'h48 : r_dout <= #DLY 32'hb1b6ab8a;
				8'h49 : r_dout <= #DLY 32'hc71358dd;
				8'h4a : r_dout <= #DLY 32'h6385c545;
				8'h4b : r_dout <= #DLY 32'h110f935d;
				8'h4c : r_dout <= #DLY 32'h57538ad5;
				8'h4d : r_dout <= #DLY 32'h6a390493;
				8'h4e : r_dout <= #DLY 32'he63d37e0;
				8'h4f : r_dout <= #DLY 32'h2a54f6b3;
				8'h50 : r_dout <= #DLY 32'h3a787d5f;
				8'h51 : r_dout <= #DLY 32'h6276a0b5;
				8'h52 : r_dout <= #DLY 32'h19a6fcdf;
				8'h53 : r_dout <= #DLY 32'h7a42206a;
				8'h54 : r_dout <= #DLY 32'h29f9d4d5;
				8'h55 : r_dout <= #DLY 32'hf61b1891;
				8'h56 : r_dout <= #DLY 32'hbb72275e;
				8'h57 : r_dout <= #DLY 32'haa508167;
				8'h58 : r_dout <= #DLY 32'h38901091;
				8'h59 : r_dout <= #DLY 32'hc6b505eb;
				8'h5a : r_dout <= #DLY 32'h84c7cb8c;
				8'h5b : r_dout <= #DLY 32'h2ad75a0f;
				8'h5c : r_dout <= #DLY 32'h874a1427;
				8'h5d : r_dout <= #DLY 32'ha2d1936b;
				8'h5e : r_dout <= #DLY 32'h2ad286af;
				8'h5f : r_dout <= #DLY 32'haa56d291;
				8'h60 : r_dout <= #DLY 32'hd7894360;
				8'h61 : r_dout <= #DLY 32'h425c750d;
				8'h62 : r_dout <= #DLY 32'h93b39e26;
				8'h63 : r_dout <= #DLY 32'h187184c9;
				8'h64 : r_dout <= #DLY 32'h6c00b32d;
				8'h65 : r_dout <= #DLY 32'h73e2bb14;
				8'h66 : r_dout <= #DLY 32'ha0bebc3c;
				8'h67 : r_dout <= #DLY 32'h54623779;
				8'h68 : r_dout <= #DLY 32'h64459eab;
				8'h69 : r_dout <= #DLY 32'h3f328b82;
				8'h6a : r_dout <= #DLY 32'h7718cf82;
				8'h6b : r_dout <= #DLY 32'h59a2cea6;
				8'h6c : r_dout <= #DLY 32'h04ee002e;
				8'h6d : r_dout <= #DLY 32'h89fe78e6;
				8'h6e : r_dout <= #DLY 32'h3fab0950;
				8'h6f : r_dout <= #DLY 32'h325ff6c2;
				8'h70 : r_dout <= #DLY 32'h81383f05;
				8'h71 : r_dout <= #DLY 32'h6963c5c8;
				8'h72 : r_dout <= #DLY 32'h76cb5ad6;
				8'h73 : r_dout <= #DLY 32'hd49974c9;
				8'h74 : r_dout <= #DLY 32'hca180dcf;
				8'h75 : r_dout <= #DLY 32'h380782d5;
				8'h76 : r_dout <= #DLY 32'hc7fa5cf6;
				8'h77 : r_dout <= #DLY 32'h8ac31511;
				8'h78 : r_dout <= #DLY 32'h35e79e13;
				8'h79 : r_dout <= #DLY 32'h47da91d0;
				8'h7a : r_dout <= #DLY 32'hf40f9086;
				8'h7b : r_dout <= #DLY 32'ha7e2419e;
				8'h7c : r_dout <= #DLY 32'h31366241;
				8'h7d : r_dout <= #DLY 32'h51ef495;
				8'h7e : r_dout <= #DLY 32'haa573b04;
				8'h7f : r_dout <= #DLY 32'h4a805d8d;
				8'h80 : r_dout <= #DLY 32'h548300d0;
				8'h81 : r_dout <= #DLY 32'h00322a3c;
				8'h82 : r_dout <= #DLY 32'hbf64cddf;
				8'h83 : r_dout <= #DLY 32'hba57a68e;
				8'h84 : r_dout <= #DLY 32'h75c6372b;
				8'h85 : r_dout <= #DLY 32'h50afd341;
				8'h86 : r_dout <= #DLY 32'ha7c13275;
				8'h87 : r_dout <= #DLY 32'h915a0bf5;
				8'h88 : r_dout <= #DLY 32'h6b54bfab;
				8'h89 : r_dout <= #DLY 32'h2b0b1426;
				8'h8a : r_dout <= #DLY 32'hab4cc9d7;
				8'h8b : r_dout <= #DLY 32'h449ccd82;
				8'h8c : r_dout <= #DLY 32'hf7fbf265;
				8'h8d : r_dout <= #DLY 32'hab85c5f3;
				8'h8e : r_dout <= #DLY 32'h1b55db94;
				8'h8f : r_dout <= #DLY 32'haad4e324;
				8'h90 : r_dout <= #DLY 32'hcfa4bd3f;
				8'h91 : r_dout <= #DLY 32'h2deaa3e2;
				8'h92 : r_dout <= #DLY 32'h9e204d02;
				8'h93 : r_dout <= #DLY 32'hc8bd25ac;
				8'h94 : r_dout <= #DLY 32'headf55b3;
				8'h95 : r_dout <= #DLY 32'hd5bd9e98;
				8'h96 : r_dout <= #DLY 32'he31231b2;
				8'h97 : r_dout <= #DLY 32'h2ad5ad6c;
				8'h98 : r_dout <= #DLY 32'h954329de;
				8'h99 : r_dout <= #DLY 32'hadbe4528;
				8'h9a : r_dout <= #DLY 32'hd8710f69;
				8'h9b : r_dout <= #DLY 32'haa51c90f;
				8'h9c : r_dout <= #DLY 32'haa786bf6;
				8'h9d : r_dout <= #DLY 32'h22513f1e;
				8'h9e : r_dout <= #DLY 32'haa51a79b;
				8'h9f : r_dout <= #DLY 32'h2ad344cc;
				8'ha0 : r_dout <= #DLY 32'h7b5a41f0;
				8'ha1 : r_dout <= #DLY 32'hd37cfbad;
				8'ha2 : r_dout <= #DLY 32'h1b069505;
				8'ha3 : r_dout <= #DLY 32'h41ece491;
				8'ha4 : r_dout <= #DLY 32'hb4c332e6;
				8'ha5 : r_dout <= #DLY 32'h032268d4;
				8'ha6 : r_dout <= #DLY 32'hc9600acc;
				8'ha7 : r_dout <= #DLY 32'hce387e6d;
				8'ha8 : r_dout <= #DLY 32'hbf6bb16c;
				8'ha9 : r_dout <= #DLY 32'h6a70fb78;
				8'haa : r_dout <= #DLY 32'h0d03d9c9;
				8'hab : r_dout <= #DLY 32'hd4df39de;
				8'hac : r_dout <= #DLY 32'he01063da;
				8'had : r_dout <= #DLY 32'h4736f464;
				8'hae : r_dout <= #DLY 32'h5ad328d8;
				8'haf : r_dout <= #DLY 32'hb347cc96;
				8'hb0 : r_dout <= #DLY 32'h75bb0fc3;
				8'hb1 : r_dout <= #DLY 32'h98511bfb;
				8'hb2 : r_dout <= #DLY 32'h4ffbcc35;
				8'hb3 : r_dout <= #DLY 32'hb58bcf6a;
				8'hb4 : r_dout <= #DLY 32'he11f0abc;
				8'hb5 : r_dout <= #DLY 32'hbfc5fe4a;
				8'hb6 : r_dout <= #DLY 32'ha70aec10;
				8'hb7 : r_dout <= #DLY 32'hac39570a;
				8'hb8 : r_dout <= #DLY 32'h3f04442f;
				8'hb9 : r_dout <= #DLY 32'h6188b153;
				8'hba : r_dout <= #DLY 32'he0397a2e;
				8'hbb : r_dout <= #DLY 32'h5727cb79;
				8'hbc : r_dout <= #DLY 32'h9ceb418f;
				8'hbd : r_dout <= #DLY 32'h1cacd68d;
				8'hbe : r_dout <= #DLY 32'h2ad37c96;
				8'hbf : r_dout <= #DLY 32'h0175cb9d;
				8'hc0 : r_dout <= #DLY 32'hc69dff09;
				8'hc1 : r_dout <= #DLY 32'hc75b65f0;
				8'hc2 : r_dout <= #DLY 32'hd9db40d8;
				8'hc3 : r_dout <= #DLY 32'hec0e7779;
				8'hc4 : r_dout <= #DLY 32'h4744ead4;
				8'hc5 : r_dout <= #DLY 32'hb11c3274;
				8'hc6 : r_dout <= #DLY 32'hdd24cb9e;
				8'hc7 : r_dout <= #DLY 32'h7e1c54bd;
				8'hc8 : r_dout <= #DLY 32'hf01144f9;
				8'hc9 : r_dout <= #DLY 32'hd2240eb1;
				8'hca : r_dout <= #DLY 32'h9675b3fd;
				8'hcb : r_dout <= #DLY 32'ha3ac3755;
				8'hcc : r_dout <= #DLY 32'hd47c27af;
				8'hcd : r_dout <= #DLY 32'h51c85f4d;
				8'hce : r_dout <= #DLY 32'h56907596;
				8'hcf : r_dout <= #DLY 32'ha5bb15e6;
				8'hd0 : r_dout <= #DLY 32'h580304f0;
				8'hd1 : r_dout <= #DLY 32'hca042cf1;
				8'hd2 : r_dout <= #DLY 32'h011a37ea;
				8'hd3 : r_dout <= #DLY 32'h8dbfaadb;
				8'hd4 : r_dout <= #DLY 32'h35ba3e4a;
				8'hd5 : r_dout <= #DLY 32'h3526ffa0;
				8'hd6 : r_dout <= #DLY 32'hc37b4d09;
				8'hd7 : r_dout <= #DLY 32'hbc306ed9;
				8'hd8 : r_dout <= #DLY 32'h98a52666;
				8'hd9 : r_dout <= #DLY 32'h5648f725;
				8'hda : r_dout <= #DLY 32'hff5e569d;
				8'hdb : r_dout <= #DLY 32'h0ced63d0;
				8'hdc : r_dout <= #DLY 32'h7c63b2cf;
				8'hdd : r_dout <= #DLY 32'h700b45e1;
				8'hde : r_dout <= #DLY 32'hd5ea50f1;
				8'hdf : r_dout <= #DLY 32'h85a92872;
				8'he0 : r_dout <= #DLY 32'haf1fbda7;
				8'he1 : r_dout <= #DLY 32'hd4234870;
				8'he2 : r_dout <= #DLY 32'ha7870bf3;
				8'he3 : r_dout <= #DLY 32'h2d3b4d79;
				8'he4 : r_dout <= #DLY 32'h42e04198;
				8'he5 : r_dout <= #DLY 32'h0cd0ede7;
				8'he6 : r_dout <= #DLY 32'h26470db8;
				8'he7 : r_dout <= #DLY 32'hf881814c;
				8'he8 : r_dout <= #DLY 32'h474d6ad7;
				8'he9 : r_dout <= #DLY 32'h7c0c5e5c;
				8'hea : r_dout <= #DLY 32'hd1231959;
				8'heb : r_dout <= #DLY 32'h381b7298;
				8'hec : r_dout <= #DLY 32'hf5d2f4db;
				8'hed : r_dout <= #DLY 32'hab838653;
				8'hee : r_dout <= #DLY 32'h6e2f1e23;
				8'hef : r_dout <= #DLY 32'h83719c9e;
				8'hf0 : r_dout <= #DLY 32'hbd91e046;
				8'hf1 : r_dout <= #DLY 32'h9a56456e;
				8'hf2 : r_dout <= #DLY 32'hdc39200c;
				8'hf3 : r_dout <= #DLY 32'h20c8c571;
				8'hf4 : r_dout <= #DLY 32'h962bda1c;
				8'hf5 : r_dout <= #DLY 32'he1e696ff;
				8'hf6 : r_dout <= #DLY 32'hb141ab08;
				8'hf7 : r_dout <= #DLY 32'h7cca89b9;
				8'hf8 : r_dout <= #DLY 32'h1a69e783;
				8'hf9 : r_dout <= #DLY 32'h02cc4843;
				8'hfa : r_dout <= #DLY 32'ha2f7c579;
				8'hfb : r_dout <= #DLY 32'h429ef47d;
				8'hfc : r_dout <= #DLY 32'h427b169c;
				8'hfd : r_dout <= #DLY 32'h5ac9f049;
				8'hfe : r_dout <= #DLY 32'hdd8f0f00;
				8'hff : r_dout <= #DLY 32'h5c8165bf;
			endcase
		end else begin  //SBox-5
			case(i_addr)
				8'h00 : r_dout <= #DLY 32'h7ec90c04;
				8'h01 : r_dout <= #DLY 32'h2c6e74b9;
				8'h02 : r_dout <= #DLY 32'h9b0e66df;
				8'h03 : r_dout <= #DLY 32'ha6337911;
				8'h04 : r_dout <= #DLY 32'hb86a7fff;
				8'h05 : r_dout <= #DLY 32'h1dd358f5;
				8'h06 : r_dout <= #DLY 32'h44dd9d44;
				8'h07 : r_dout <= #DLY 32'h1731167f;
				8'h08 : r_dout <= #DLY 32'h08fbf1fa;
				8'h09 : r_dout <= #DLY 32'he7f511cc;
				8'h0a : r_dout <= #DLY 32'hd2051b00;
				8'h0b : r_dout <= #DLY 32'h735aba00;
				8'h0c : r_dout <= #DLY 32'h2ab722d8;
				8'h0d : r_dout <= #DLY 32'h386381cb;
				8'h0e : r_dout <= #DLY 32'hacf6243a;
				8'h0f : r_dout <= #DLY 32'h69befd7a;
				8'h10 : r_dout <= #DLY 32'he6a2e77f;
				8'h11 : r_dout <= #DLY 32'hf0c720cd;
				8'h12 : r_dout <= #DLY 32'hc4494816;
				8'h13 : r_dout <= #DLY 32'hccf5c180;
				8'h14 : r_dout <= #DLY 32'h38851640;
				8'h15 : r_dout <= #DLY 32'h15b0a848;
				8'h16 : r_dout <= #DLY 32'he68b18cb;
				8'h17 : r_dout <= #DLY 32'h4caadeff;
				8'h18 : r_dout <= #DLY 32'h5f480a01;
				8'h19 : r_dout <= #DLY 32'h0412b2aa;
				8'h1a : r_dout <= #DLY 32'h259814fc;
				8'h1b : r_dout <= #DLY 32'h41d0efe2;
				8'h1c : r_dout <= #DLY 32'h4e40b48d;
				8'h1d : r_dout <= #DLY 32'h248eb6fb;
				8'h1e : r_dout <= #DLY 32'h8dba1cfe;
				8'h1f : r_dout <= #DLY 32'h41a99b02;
				8'h20 : r_dout <= #DLY 32'h1a550a04;
				8'h21 : r_dout <= #DLY 32'hba8f65cb;
				8'h22 : r_dout <= #DLY 32'h7251f4e7;
				8'h23 : r_dout <= #DLY 32'h95a51725;
				8'h24 : r_dout <= #DLY 32'hc106ecd7;
				8'h25 : r_dout <= #DLY 32'h97a5980a;
				8'h26 : r_dout <= #DLY 32'hc539b9aa;
				8'h27 : r_dout <= #DLY 32'h4d79fe6a;
				8'h28 : r_dout <= #DLY 32'hf2f3f763;
				8'h29 : r_dout <= #DLY 32'h68af8040;
				8'h2a : r_dout <= #DLY 32'hed0c9e56;
				8'h2b : r_dout <= #DLY 32'h11b4958b;
				8'h2c : r_dout <= #DLY 32'he1eb5a88;
				8'h2d : r_dout <= #DLY 32'h8709e6b0;
				8'h2e : r_dout <= #DLY 32'hd7e07156;
				8'h2f : r_dout <= #DLY 32'h4e29fea7;
				8'h30 : r_dout <= #DLY 32'h6366e52d;
				8'h31 : r_dout <= #DLY 32'h02d1c000;
				8'h32 : r_dout <= #DLY 32'hc4ac8e05;
				8'h33 : r_dout <= #DLY 32'h9377f571;
				8'h34 : r_dout <= #DLY 32'h0c05372a;
				8'h35 : r_dout <= #DLY 32'h578535f2;
				8'h36 : r_dout <= #DLY 32'h2261be02;
				8'h37 : r_dout <= #DLY 32'hd642a0c9;
				8'h38 : r_dout <= #DLY 32'hdf13a280;
				8'h39 : r_dout <= #DLY 32'h74b55bd2;
				8'h3a : r_dout <= #DLY 32'h682199c0;
				8'h3b : r_dout <= #DLY 32'hd421e5ec;
				8'h3c : r_dout <= #DLY 32'h53fb3ce8;
				8'h3d : r_dout <= #DLY 32'hc8adedb3;
				8'h3e : r_dout <= #DLY 32'h28a87fc9;
				8'h3f : r_dout <= #DLY 32'h3d959981;
				8'h40 : r_dout <= #DLY 32'h5c1ff900;
				8'h41 : r_dout <= #DLY 32'hfe38d399;
				8'h42 : r_dout <= #DLY 32'h0c4eff0b;
				8'h43 : r_dout <= #DLY 32'h062407ea;
				8'h44 : r_dout <= #DLY 32'haa2f4fb1;
				8'h45 : r_dout <= #DLY 32'h4fb96976;
				8'h46 : r_dout <= #DLY 32'h90c79505;
				8'h47 : r_dout <= #DLY 32'hb0a8a774;
				8'h48 : r_dout <= #DLY 32'hef55a1ff;
				8'h49 : r_dout <= #DLY 32'he59ca2c2;
				8'h4a : r_dout <= #DLY 32'ha6b62d27;
				8'h4b : r_dout <= #DLY 32'he66a4263;
				8'h4c : r_dout <= #DLY 32'hdf65001f;
				8'h4d : r_dout <= #DLY 32'h0ec50966;
				8'h4e : r_dout <= #DLY 32'hdfdd55bc;
				8'h4f : r_dout <= #DLY 32'h29de0655;
				8'h50 : r_dout <= #DLY 32'h911e739a;
				8'h51 : r_dout <= #DLY 32'h17af8975;
				8'h52 : r_dout <= #DLY 32'h32c7911c;
				8'h53 : r_dout <= #DLY 32'h89f89468;
				8'h54 : r_dout <= #DLY 32'h0d01e980;
				8'h55 : r_dout <= #DLY 32'h524755f4;
				8'h56 : r_dout <= #DLY 32'h03b63cc9;
				8'h57 : r_dout <= #DLY 32'h0cc844b2;
				8'h58 : r_dout <= #DLY 32'hbcf3f0aa;
				8'h59 : r_dout <= #DLY 32'h87ac36e9;
				8'h5a : r_dout <= #DLY 32'he53a7426;
				8'h5b : r_dout <= #DLY 32'h01b3d82b;
				8'h5c : r_dout <= #DLY 32'h1a9e7449;
				8'h5d : r_dout <= #DLY 32'h64ee2d7e;
				8'h5e : r_dout <= #DLY 32'hcddbb1da;
				8'h5f : r_dout <= #DLY 32'h01c94910;
				8'h60 : r_dout <= #DLY 32'hb868bf80;
				8'h61 : r_dout <= #DLY 32'h0d26f3fd;
				8'h62 : r_dout <= #DLY 32'h9342ede7;
				8'h63 : r_dout <= #DLY 32'h04a5c284;
				8'h64 : r_dout <= #DLY 32'h636737b6;
				8'h65 : r_dout <= #DLY 32'h50f5b616;
				8'h66 : r_dout <= #DLY 32'hf24766e3;
				8'h67 : r_dout <= #DLY 32'h8eca36c1;
				8'h68 : r_dout <= #DLY 32'h136e05db;
				8'h69 : r_dout <= #DLY 32'hfef18391;
				8'h6a : r_dout <= #DLY 32'hfb887a37;
				8'h6b : r_dout <= #DLY 32'hd6e7f7d4;
				8'h6c : r_dout <= #DLY 32'hc7fb7dc9;
				8'h6d : r_dout <= #DLY 32'h3063fcdf;
				8'h6e : r_dout <= #DLY 32'hb6f589de;
				8'h6f : r_dout <= #DLY 32'hec2941da;
				8'h70 : r_dout <= #DLY 32'h26e46695;
				8'h71 : r_dout <= #DLY 32'hb7566419;
				8'h72 : r_dout <= #DLY 32'hf654efc5;
				8'h73 : r_dout <= #DLY 32'hd08d58b7;
				8'h74 : r_dout <= #DLY 32'h48925401;
				8'h75 : r_dout <= #DLY 32'hc1bacb7f;
				8'h76 : r_dout <= #DLY 32'he5ff550f;
				8'h77 : r_dout <= #DLY 32'hb6083049;
				8'h78 : r_dout <= #DLY 32'h5bb5d0e8;
				8'h79 : r_dout <= #DLY 32'h87d72e5a;
				8'h7a : r_dout <= #DLY 32'hab6a6ee1;
				8'h7b : r_dout <= #DLY 32'h223a66ce;
				8'h7c : r_dout <= #DLY 32'hc62bf3cd;
				8'h7d : r_dout <= #DLY 32'h9e0885f9;
				8'h7e : r_dout <= #DLY 32'h68cb3e47;
				8'h7f : r_dout <= #DLY 32'h086c010f;
				8'h80 : r_dout <= #DLY 32'ha21de820;
				8'h81 : r_dout <= #DLY 32'hd18b69de;
				8'h82 : r_dout <= #DLY 32'hf3f65777;
				8'h83 : r_dout <= #DLY 32'hfa02c3f6;
				8'h84 : r_dout <= #DLY 32'h407edac3;
				8'h85 : r_dout <= #DLY 32'hcbb3d550;
				8'h86 : r_dout <= #DLY 32'h1793084d;
				8'h87 : r_dout <= #DLY 32'hb0d70eba;
				8'h88 : r_dout <= #DLY 32'h0ab378d5;
				8'h89 : r_dout <= #DLY 32'hd951fb0c;
				8'h8a : r_dout <= #DLY 32'hded7da56;
				8'h8b : r_dout <= #DLY 32'h4124bbe4;
				8'h8c : r_dout <= #DLY 32'h94ca0b56;
				8'h8d : r_dout <= #DLY 32'h0f5755d1;
				8'h8e : r_dout <= #DLY 32'he0e1e56e;
				8'h8f : r_dout <= #DLY 32'h6184b5be;
				8'h90 : r_dout <= #DLY 32'h580a249f;
				8'h91 : r_dout <= #DLY 32'h94f74bc0;
				8'h92 : r_dout <= #DLY 32'he327888e;
				8'h93 : r_dout <= #DLY 32'h9f7b5561;
				8'h94 : r_dout <= #DLY 32'hc3dc0280;
				8'h95 : r_dout <= #DLY 32'h05687715;
				8'h96 : r_dout <= #DLY 32'h646c6bd7;
				8'h97 : r_dout <= #DLY 32'h44904db3;
				8'h98 : r_dout <= #DLY 32'h66b4f0a3;
				8'h99 : r_dout <= #DLY 32'hc0f1648a;
				8'h9a : r_dout <= #DLY 32'h697ed5af;
				8'h9b : r_dout <= #DLY 32'h49e92ff6;
				8'h9c : r_dout <= #DLY 32'h309e374f;
				8'h9d : r_dout <= #DLY 32'h2cb6356a;
				8'h9e : r_dout <= #DLY 32'h85808573;
				8'h9f : r_dout <= #DLY 32'h4991f840;
				8'ha0 : r_dout <= #DLY 32'h76f0ae02;
				8'ha1 : r_dout <= #DLY 32'h083be84d;
				8'ha2 : r_dout <= #DLY 32'h28421c9a;
				8'ha3 : r_dout <= #DLY 32'h44489406;
				8'ha4 : r_dout <= #DLY 32'h736e4cb8;
				8'ha5 : r_dout <= #DLY 32'hc1092910;
				8'ha6 : r_dout <= #DLY 32'h8bc95fc6;
				8'ha7 : r_dout <= #DLY 32'h7d869cf4;
				8'ha8 : r_dout <= #DLY 32'h134f616f;
				8'ha9 : r_dout <= #DLY 32'h2e77118d;
				8'haa : r_dout <= #DLY 32'hb31b2be1;
				8'hab : r_dout <= #DLY 32'haa90b472;
				8'hac : r_dout <= #DLY 32'h3ca5d717;
				8'had : r_dout <= #DLY 32'h7d161bba;
				8'hae : r_dout <= #DLY 32'h9cad9010;
				8'haf : r_dout <= #DLY 32'haf462ba2;
				8'hb0 : r_dout <= #DLY 32'h9fe459d2;
				8'hb1 : r_dout <= #DLY 32'h45d34559;
				8'hb2 : r_dout <= #DLY 32'hd9f2da13;
				8'hb3 : r_dout <= #DLY 32'hdbc65487;
				8'hb4 : r_dout <= #DLY 32'hf3e4f94e;
				8'hb5 : r_dout <= #DLY 32'h176d486f;
				8'hb6 : r_dout <= #DLY 32'h097c13ea;
				8'hb7 : r_dout <= #DLY 32'h631da5c7;
				8'hb8 : r_dout <= #DLY 32'h445f7382;
				8'hb9 : r_dout <= #DLY 32'h175683f4;
				8'hba : r_dout <= #DLY 32'hcdc66a97;
				8'hbb : r_dout <= #DLY 32'h70be0288;
				8'hbc : r_dout <= #DLY 32'hb3cdcf72;
				8'hbd : r_dout <= #DLY 32'h6e5dd2f3;
				8'hbe : r_dout <= #DLY 32'h20936079;
				8'hbf : r_dout <= #DLY 32'h459b80a5;
				8'hc0 : r_dout <= #DLY 32'hbe60e2db;
				8'hc1 : r_dout <= #DLY 32'ha9c23101;
				8'hc2 : r_dout <= #DLY 32'heba5315c;
				8'hc3 : r_dout <= #DLY 32'h224e42f2;
				8'hc4 : r_dout <= #DLY 32'h1c5c1572;
				8'hc5 : r_dout <= #DLY 32'hf6721b2c;
				8'hc6 : r_dout <= #DLY 32'h1ad2fff3;
				8'hc7 : r_dout <= #DLY 32'h8c25404e;
				8'hc8 : r_dout <= #DLY 32'h324ed72f;
				8'hc9 : r_dout <= #DLY 32'h4067b7fd;
				8'hca : r_dout <= #DLY 32'h0523138e;
				8'hcb : r_dout <= #DLY 32'h5ca3bc78;
				8'hcc : r_dout <= #DLY 32'hdc0fd66e;
				8'hcd : r_dout <= #DLY 32'h75922283;
				8'hce : r_dout <= #DLY 32'h784d6b17;
				8'hcf : r_dout <= #DLY 32'h58ebb16e;
				8'hd0 : r_dout <= #DLY 32'h44094f85;
				8'hd1 : r_dout <= #DLY 32'h3f481d87;
				8'hd2 : r_dout <= #DLY 32'hfcfeae7b;
				8'hd3 : r_dout <= #DLY 32'h77b5ff76;
				8'hd4 : r_dout <= #DLY 32'h8c2302bf;
				8'hd5 : r_dout <= #DLY 32'haaf47556;
				8'hd6 : r_dout <= #DLY 32'h5f46b02a;
				8'hd7 : r_dout <= #DLY 32'h2b092801;
				8'hd8 : r_dout <= #DLY 32'h3d38f5f7;
				8'hd9 : r_dout <= #DLY 32'h0ca81f36;
				8'hda : r_dout <= #DLY 32'h52af4a8a;
				8'hdb : r_dout <= #DLY 32'h66d5e7c0;
				8'hdc : r_dout <= #DLY 32'hdf3b0874;
				8'hdd : r_dout <= #DLY 32'h95055110;
				8'hde : r_dout <= #DLY 32'h1b5ad7a8;
				8'hdf : r_dout <= #DLY 32'hf61ed5ad;
				8'he0 : r_dout <= #DLY 32'h6cf6e479;
				8'he1 : r_dout <= #DLY 32'h20758184;
				8'he2 : r_dout <= #DLY 32'hd0cefa65;
				8'he3 : r_dout <= #DLY 32'h88f7be58;
				8'he4 : r_dout <= #DLY 32'h4a046826;
				8'he5 : r_dout <= #DLY 32'h0ff6f8f3;
				8'he6 : r_dout <= #DLY 32'ha09c7f70;
				8'he7 : r_dout <= #DLY 32'h5346aba0;
				8'he8 : r_dout <= #DLY 32'h5ce96c28;
				8'he9 : r_dout <= #DLY 32'he176eda3;
				8'hea : r_dout <= #DLY 32'h6bac307f;
				8'heb : r_dout <= #DLY 32'h376829d2;
				8'hec : r_dout <= #DLY 32'h85360fa9;
				8'hed : r_dout <= #DLY 32'h17e3fe2a;
				8'hee : r_dout <= #DLY 32'h24b79767;
				8'hef : r_dout <= #DLY 32'hf5a96b20;
				8'hf0 : r_dout <= #DLY 32'hd6cd2595;
				8'hf1 : r_dout <= #DLY 32'h68ff1ebf;
				8'hf2 : r_dout <= #DLY 32'h7555442c;
				8'hf3 : r_dout <= #DLY 32'hf19f06be;
				8'hf4 : r_dout <= #DLY 32'hf9e0659a;
				8'hf5 : r_dout <= #DLY 32'heeb9491d;
				8'hf6 : r_dout <= #DLY 32'h34010718;
				8'hf7 : r_dout <= #DLY 32'hbb30cab8;
				8'hf8 : r_dout <= #DLY 32'he822fe15;
				8'hf9 : r_dout <= #DLY 32'h88570983;
				8'hfa : r_dout <= #DLY 32'h750e6249;
				8'hfb : r_dout <= #DLY 32'hda627e55;
				8'hfc : r_dout <= #DLY 32'h5e76ffa8;
				8'hfd : r_dout <= #DLY 32'hb1534546;
				8'hfe : r_dout <= #DLY 32'h6d47de08;
				8'hff : r_dout <= #DLY 32'hefe9e7d4;
			endcase
		end 
    end

endmodule
