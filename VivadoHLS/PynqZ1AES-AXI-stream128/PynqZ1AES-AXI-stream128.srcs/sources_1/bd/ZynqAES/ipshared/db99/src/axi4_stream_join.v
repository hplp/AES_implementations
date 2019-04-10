module axi4_stream_join(
in_data00_TDATA,
in_data00_TVALID,
in_data00_TREADY,

in_data01_TDATA,
in_data01_TVALID,
in_data01_TREADY,

in_data02_TDATA,
in_data02_TVALID,
in_data02_TREADY,

in_data03_TDATA,
in_data03_TVALID,
in_data03_TREADY,

in_data04_TDATA,
in_data04_TVALID,
in_data04_TREADY,

in_data05_TDATA,
in_data05_TVALID,
in_data05_TREADY,

in_data06_TDATA,
in_data06_TVALID,
in_data06_TREADY,

in_data07_TDATA,
in_data07_TVALID,
in_data07_TREADY,

in_data08_TDATA,
in_data08_TVALID,
in_data08_TREADY,

in_data09_TDATA,
in_data09_TVALID,
in_data09_TREADY,

in_data10_TDATA,
in_data10_TVALID,
in_data10_TREADY,

in_data11_TDATA,
in_data11_TVALID,
in_data11_TREADY,

in_data12_TDATA,
in_data12_TVALID,
in_data12_TREADY,

in_data13_TDATA,
in_data13_TVALID,
in_data13_TREADY,

in_data14_TDATA,
in_data14_TVALID,
in_data14_TREADY,

in_data15_TDATA,
in_data15_TVALID,
in_data15_TREADY,

out_data_TDATA,
out_data_TVALID,
out_data_TREADY
);

input [7:0] in_data00_TDATA;
input in_data00_TVALID;
output in_data00_TREADY;

input [7:0] in_data01_TDATA;
input in_data01_TVALID;
output in_data01_TREADY;

input [7:0] in_data02_TDATA;
input in_data02_TVALID;
output in_data02_TREADY;

input [7:0] in_data03_TDATA;
input in_data03_TVALID;
output in_data03_TREADY;

input [7:0] in_data04_TDATA;
input in_data04_TVALID;
output in_data04_TREADY;

input [7:0] in_data05_TDATA;
input in_data05_TVALID;
output in_data05_TREADY;

input [7:0] in_data06_TDATA;
input in_data06_TVALID;
output in_data06_TREADY;

input [7:0] in_data07_TDATA;
input in_data07_TVALID;
output in_data07_TREADY;

input [7:0] in_data08_TDATA;
input in_data08_TVALID;
output in_data08_TREADY;

input [7:0] in_data09_TDATA;
input in_data09_TVALID;
output in_data09_TREADY;

input [7:0] in_data10_TDATA;
input in_data10_TVALID;
output in_data10_TREADY;

input [7:0] in_data11_TDATA;
input in_data11_TVALID;
output in_data11_TREADY;

input [7:0] in_data12_TDATA;
input in_data12_TVALID;
output in_data12_TREADY;

input [7:0] in_data13_TDATA;
input in_data13_TVALID;
output in_data13_TREADY;

input [7:0] in_data14_TDATA;
input in_data14_TVALID;
output in_data14_TREADY;

input [7:0] in_data15_TDATA;
input in_data15_TVALID;
output in_data15_TREADY;

output [127:0] out_data_TDATA;
output out_data_TVALID;
input out_data_TREADY;

assign out_data_TVALID = in_data00_TVALID;
assign in_data00_TREADY = out_data_TREADY;
assign in_data01_TREADY = out_data_TREADY;
assign in_data02_TREADY = out_data_TREADY;
assign in_data03_TREADY = out_data_TREADY;
assign in_data04_TREADY = out_data_TREADY;
assign in_data05_TREADY = out_data_TREADY;
assign in_data06_TREADY = out_data_TREADY;
assign in_data07_TREADY = out_data_TREADY;
assign in_data08_TREADY = out_data_TREADY;
assign in_data09_TREADY = out_data_TREADY;
assign in_data10_TREADY = out_data_TREADY;
assign in_data11_TREADY = out_data_TREADY;
assign in_data12_TREADY = out_data_TREADY;
assign in_data13_TREADY = out_data_TREADY;
assign in_data14_TREADY = out_data_TREADY;
assign in_data15_TREADY = out_data_TREADY;
assign out_data_TDATA = {in_data00_TDATA, in_data01_TDATA, in_data02_TDATA, in_data03_TDATA,
                         in_data04_TDATA, in_data05_TDATA, in_data06_TDATA, in_data07_TDATA,
                         in_data08_TDATA, in_data09_TDATA, in_data10_TDATA, in_data11_TDATA,
						 in_data12_TDATA, in_data13_TDATA, in_data14_TDATA, in_data15_TDATA};

endmodule