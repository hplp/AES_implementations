// Generated automatically via PyRTL
// As one initial test of synthesis, map to FPGA with:
//   yosys -p "synth_xilinx -top toplevel" thisfile.v

module toplevel(raddr, we, waddr, clk);
    input[3:0] raddr;
    input we;
    input[3:0] waddr;
    input clk;

    reg[3:0] store;
    reg[3:0] pc;
    wire[2:0] const_0_5;
    wire tmp6;
    wire[3:0] tmp18;
    wire[3:0] wdata;
    wire[2:0] tmp12;
    wire[3:0] _verout_tmp_0;
    wire[3:0] const_3_0;
    wire const_6_0;
    wire[4:0] tmp14;
    wire[3:0] tmp20;
    wire[3:0] tmp7;
    wire const_9_0;
    wire[3:0] tmp2;
    wire[3:0] tmp10;
    wire const_5_0;
    wire[2:0] tmp17;
    wire tmp4;
    wire const_8_0;
    wire const_1_0;
    reg[3:0] tmp0;
    wire tmp9;
    wire const_4_1;
    wire[3:0] tmp23;
    wire[3:0] rdata;
    wire[3:0] _verout_tmp_1;
    wire tmp16;
    wire[3:0] tmp19;
    wire[3:0] tmp24;
    wire[3:0] const_2_0;
    wire[3:0] tmp13;
    wire[2:0] tmp21;
    wire tmp1;
    wire tmp8;
    wire[3:0] tmp26;
    wire[3:0] tmp22;
    wire[3:0] tmp15;
    wire tmp3;
    wire tmp11;
    wire const_7_0;
    wire[3:0] tmp25;
    wire[3:0] tmp5;

    reg[3:0] mem_0[15:0];

    assign const_0_5 = 5;
    assign const_9_0 = 0;
    assign const_5_0 = 0;
    assign const_3_0 = 0;
    assign const_6_0 = 0;
    assign const_8_0 = 0;
    assign const_2_0 = 0;
    assign const_7_0 = 0;
    assign const_1_0 = 0;
    assign const_4_1 = 1;
    assign tmp14 = pc + tmp13;
    assign tmp25 = tmp3 ? const_3_0 : pc;
    always @( posedge clk )
    begin
        tmp0 <= mem_0[raddr];
    end
    assign tmp18 = {tmp17, const_6_0};
    assign tmp1 = {const_1_0};
    assign tmp24 = tmp11 ? tmp10 : tmp23;
    assign tmp8 = ~tmp3;
    assign tmp16 = ~tmp3;
    assign tmp7 = tmp6 ? rdata : store;
    assign tmp6 = store < rdata;
    assign tmp23 = tmp3 ? tmp5 : tmp22;
    assign wdata = _verout_tmp_1;
    assign tmp15 = {tmp14[3], tmp14[2], tmp14[1], tmp14[0]};
    assign tmp10 = tmp9 ? rdata : store;
    assign tmp4 = store < rdata;
    assign tmp5 = tmp4 ? rdata : store;
    assign rdata = tmp0;
    assign tmp3 = pc == tmp2;
    assign tmp9 = store > rdata;
    assign tmp11 = ~tmp3;
    assign tmp20 = tmp8 ? tmp7 : tmp19;
    assign tmp19 = tmp3 ? const_2_0 : tmp18;
    assign _verout_tmp_0 = tmp20;
    assign tmp22 = {tmp21, const_8_0};
    assign tmp26 = tmp16 ? tmp15 : tmp25;
    assign tmp12 = {const_5_0, const_5_0, const_5_0};
    assign tmp2 = {tmp1, const_0_5};
    assign tmp17 = {const_7_0, const_7_0, const_7_0};
    assign tmp13 = {tmp12, const_4_1};
    assign tmp21 = {const_9_0, const_9_0, const_9_0};
    assign _verout_tmp_1 = tmp24;

    always @( posedge clk )
    begin
        if (we) begin
                mem_0[waddr] <= wdata;
        end
        pc <= tmp26;
        store <= _verout_tmp_0;
    end
endmodule

