module axi4_stream_split(
in_data_TDATA,
in_data_TVALID,
in_data_TREADY,

out_data00_TDATA,
out_data00_TVALID,
out_data00_TREADY,

out_data01_TDATA,
out_data01_TVALID,
out_data01_TREADY,

out_data02_TDATA,
out_data02_TVALID,
out_data02_TREADY,

out_data03_TDATA,
out_data03_TVALID,
out_data03_TREADY,

out_data04_TDATA,
out_data04_TVALID,
out_data04_TREADY,

out_data05_TDATA,
out_data05_TVALID,
out_data05_TREADY,

out_data06_TDATA,
out_data06_TVALID,
out_data06_TREADY,

out_data07_TDATA,
out_data07_TVALID,
out_data07_TREADY,

out_data08_TDATA,
out_data08_TVALID,
out_data08_TREADY,

out_data09_TDATA,
out_data09_TVALID,
out_data09_TREADY,

out_data10_TDATA,
out_data10_TVALID,
out_data10_TREADY,

out_data11_TDATA,
out_data11_TVALID,
out_data11_TREADY,

out_data12_TDATA,
out_data12_TVALID,
out_data12_TREADY,

out_data13_TDATA,
out_data13_TVALID,
out_data13_TREADY,

out_data14_TDATA,
out_data14_TVALID,
out_data14_TREADY,

out_data15_TDATA,
out_data15_TVALID,
out_data15_TREADY
);

input [127:0] in_data_TDATA;
input in_data_TVALID;
output in_data_TREADY;

output [7:0] out_data00_TDATA;
output out_data00_TVALID;
input out_data00_TREADY;

output [7:0] out_data01_TDATA;
output out_data01_TVALID;
input out_data01_TREADY;

output [7:0] out_data02_TDATA;
output out_data02_TVALID;
input out_data02_TREADY;

output [7:0] out_data03_TDATA;
output out_data03_TVALID;
input out_data03_TREADY;

output [7:0] out_data04_TDATA;
output out_data04_TVALID;
input out_data04_TREADY;

output [7:0] out_data05_TDATA;
output out_data05_TVALID;
input out_data05_TREADY;

output [7:0] out_data06_TDATA;
output out_data06_TVALID;
input out_data06_TREADY;

output [7:0] out_data07_TDATA;
output out_data07_TVALID;
input out_data07_TREADY;

output [7:0] out_data08_TDATA;
output out_data08_TVALID;
input out_data08_TREADY;

output [7:0] out_data09_TDATA;
output out_data09_TVALID;
input out_data09_TREADY;

output [7:0] out_data10_TDATA;
output out_data10_TVALID;
input out_data10_TREADY;

output [7:0] out_data11_TDATA;
output out_data11_TVALID;
input out_data11_TREADY;

output [7:0] out_data12_TDATA;
output out_data12_TVALID;
input out_data12_TREADY;

output [7:0] out_data13_TDATA;
output out_data13_TVALID;
input out_data13_TREADY;

output [7:0] out_data14_TDATA;
output out_data14_TVALID;
input out_data14_TREADY;

output [7:0] out_data15_TDATA;
output out_data15_TVALID;
input out_data15_TREADY;

assign in_data_TREADY = out_data00_TREADY;

assign out_data00_TVALID = in_data_TVALID;
assign out_data01_TVALID = in_data_TVALID;
assign out_data02_TVALID = in_data_TVALID;
assign out_data03_TVALID = in_data_TVALID;
assign out_data04_TVALID = in_data_TVALID;
assign out_data05_TVALID = in_data_TVALID;
assign out_data06_TVALID = in_data_TVALID;
assign out_data07_TVALID = in_data_TVALID;
assign out_data08_TVALID = in_data_TVALID;
assign out_data09_TVALID = in_data_TVALID;
assign out_data10_TVALID = in_data_TVALID;
assign out_data11_TVALID = in_data_TVALID;
assign out_data12_TVALID = in_data_TVALID;
assign out_data13_TVALID = in_data_TVALID;
assign out_data14_TVALID = in_data_TVALID;
assign out_data15_TVALID = in_data_TVALID;

assign out_data00_TDATA = in_data_TDATA[16*8-1:15*8];
assign out_data01_TDATA = in_data_TDATA[15*8-1:14*8];
assign out_data02_TDATA = in_data_TDATA[14*8-1:13*8];
assign out_data03_TDATA = in_data_TDATA[13*8-1:12*8];
assign out_data04_TDATA = in_data_TDATA[12*8-1:11*8];
assign out_data05_TDATA = in_data_TDATA[11*8-1:10*8];
assign out_data06_TDATA = in_data_TDATA[10*8-1:9*8];
assign out_data07_TDATA = in_data_TDATA[9*8-1:8*8];
assign out_data08_TDATA = in_data_TDATA[8*8-1:7*8];
assign out_data09_TDATA = in_data_TDATA[7*8-1:6*8];
assign out_data10_TDATA = in_data_TDATA[6*8-1:5*8];
assign out_data11_TDATA = in_data_TDATA[5*8-1:4*8];
assign out_data12_TDATA = in_data_TDATA[4*8-1:3*8];
assign out_data13_TDATA = in_data_TDATA[3*8-1:2*8];
assign out_data14_TDATA = in_data_TDATA[2*8-1:1*8];
assign out_data15_TDATA = in_data_TDATA[1*8-1:0*8];

endmodule 