//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------
//-----------------------------------------------------------------
// Module: 16-bit CRC used by USB data packets
//-----------------------------------------------------------------
module usbh_crc16
(
    input [15:0]    crc_i,
    input [7:0]     data_i,
    output [15:0]   crc_o
);

//-----------------------------------------------------------------
// Implementation
//-----------------------------------------------------------------
assign crc_o[15] =    data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^
                        data_i[5] ^ data_i[6] ^ data_i[7] ^ crc_i[7] ^ crc_i[6] ^
                        crc_i[5] ^ crc_i[4] ^ crc_i[3] ^ crc_i[2] ^
                        crc_i[1] ^ crc_i[0];
assign crc_o[14] =    data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^
                        data_i[6] ^ crc_i[6] ^ crc_i[5] ^ crc_i[4] ^
                        crc_i[3] ^ crc_i[2] ^ crc_i[1] ^ crc_i[0];
assign crc_o[13] =    data_i[6] ^ data_i[7] ^ crc_i[7] ^ crc_i[6];
assign crc_o[12] =    data_i[5] ^ data_i[6] ^ crc_i[6] ^ crc_i[5];
assign crc_o[11] =    data_i[4] ^ data_i[5] ^ crc_i[5] ^ crc_i[4];
assign crc_o[10] =    data_i[3] ^ data_i[4] ^ crc_i[4] ^ crc_i[3];
assign crc_o[9] =     data_i[2] ^ data_i[3] ^ crc_i[3] ^ crc_i[2];
assign crc_o[8] =     data_i[1] ^ data_i[2] ^ crc_i[2] ^ crc_i[1];
assign crc_o[7] =     data_i[0] ^ data_i[1] ^ crc_i[15] ^ crc_i[1] ^ crc_i[0];
assign crc_o[6] =     data_i[0] ^ crc_i[14] ^ crc_i[0];
assign crc_o[5] =     crc_i[13];
assign crc_o[4] =     crc_i[12];
assign crc_o[3] =     crc_i[11];
assign crc_o[2] =     crc_i[10];
assign crc_o[1] =     crc_i[9];
assign crc_o[0] =     data_i[0] ^ data_i[1] ^ data_i[2] ^ data_i[3] ^ data_i[4] ^ data_i[5] ^
                        data_i[6] ^ data_i[7] ^ crc_i[8] ^ crc_i[7] ^ crc_i[6] ^
                        crc_i[5] ^ crc_i[4] ^ crc_i[3] ^ crc_i[2] ^
                        crc_i[1] ^ crc_i[0];

endmodule
//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------
//-----------------------------------------------------------------
// Module: 5-bit CRC used by USB tokens
//-----------------------------------------------------------------
module usbh_crc5
(
    input [4:0]     crc_i,
    input [10:0]    data_i,
    output [4:0]    crc_o
);

//-----------------------------------------------------------------
// Implementation
//-----------------------------------------------------------------
assign crc_o[0] =    data_i[10] ^ data_i[9] ^ data_i[6] ^ data_i[5] ^ data_i[3] ^ data_i[0] ^
                       crc_i[0] ^ crc_i[3] ^ crc_i[4];

assign crc_o[1] =    data_i[10] ^ data_i[7] ^ data_i[6] ^ data_i[4] ^ data_i[1] ^
                       crc_i[0] ^ crc_i[1] ^ crc_i[4];

assign crc_o[2] =    data_i[10] ^ data_i[9] ^ data_i[8] ^ data_i[7] ^ data_i[6] ^ data_i[3] ^ data_i[2] ^ data_i[0] ^
                       crc_i[0] ^ crc_i[1] ^ crc_i[2] ^ crc_i[3] ^ crc_i[4];

assign crc_o[3] =    data_i[10] ^ data_i[9] ^ data_i[8] ^ data_i[7] ^ data_i[4] ^ data_i[3] ^ data_i[1] ^ 
                       crc_i[1] ^ crc_i[2] ^ crc_i[3] ^ crc_i[4];

assign crc_o[4] =    data_i[10] ^ data_i[9] ^ data_i[8] ^ data_i[5] ^ data_i[4] ^ data_i[2] ^
                       crc_i[2] ^ crc_i[3] ^ crc_i[4];

endmodule
//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------

module usbh_fifo
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input  [  7:0]  data_i
    ,input           push_i
    ,input           pop_i
    ,input           flush_i

    // Outputs
    ,output          full_o
    ,output          empty_o
    ,output [  7:0]  data_o
);



parameter WIDTH   = 8;
parameter DEPTH   = 64;
parameter ADDR_W  = 6;

//-----------------------------------------------------------------
// Local Params
//-----------------------------------------------------------------
localparam COUNT_W = ADDR_W + 1;

//-----------------------------------------------------------------
// Registers
//-----------------------------------------------------------------
reg [WIDTH-1:0]         ram [DEPTH-1:0];
reg [ADDR_W-1:0]        rd_ptr;
reg [ADDR_W-1:0]        wr_ptr;
reg [COUNT_W-1:0]       count;

//-----------------------------------------------------------------
// Sequential
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    count   <= {(COUNT_W) {1'b0}};
    rd_ptr  <= {(ADDR_W) {1'b0}};
    wr_ptr  <= {(ADDR_W) {1'b0}};
end
else
begin

    if (flush_i)
    begin
        count   <= {(COUNT_W) {1'b0}};
        rd_ptr  <= {(ADDR_W) {1'b0}};
        wr_ptr  <= {(ADDR_W) {1'b0}};
    end

    // Push
    if (push_i & ~full_o)
    begin
        ram[wr_ptr] <= data_i;
        wr_ptr      <= wr_ptr + 1;
    end

    // Pop
    if (pop_i & ~empty_o)
    begin
        rd_ptr      <= rd_ptr + 1;
    end

    // Count up
    if ((push_i & ~full_o) & ~(pop_i & ~empty_o))
    begin
        count <= count + 1;
    end
    // Count down
    else if (~(push_i & ~full_o) & (pop_i & ~empty_o))
    begin
        count <= count - 1;
    end
end

//-------------------------------------------------------------------
// Combinatorial
//-------------------------------------------------------------------
/* verilator lint_off WIDTH */
assign full_o    = (count == DEPTH);
assign empty_o   = (count == 0);
/* verilator lint_on WIDTH */

assign data_o    = ram[rd_ptr];


endmodule
//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------

`define USB_CTRL    8'h0

    `define USB_CTRL_PHY_DMPULLDOWN      7
    `define USB_CTRL_PHY_DMPULLDOWN_DEFAULT    0
    `define USB_CTRL_PHY_DMPULLDOWN_B          7
    `define USB_CTRL_PHY_DMPULLDOWN_T          7
    `define USB_CTRL_PHY_DMPULLDOWN_W          1
    `define USB_CTRL_PHY_DMPULLDOWN_R          7:7

    `define USB_CTRL_PHY_DPPULLDOWN      6
    `define USB_CTRL_PHY_DPPULLDOWN_DEFAULT    0
    `define USB_CTRL_PHY_DPPULLDOWN_B          6
    `define USB_CTRL_PHY_DPPULLDOWN_T          6
    `define USB_CTRL_PHY_DPPULLDOWN_W          1
    `define USB_CTRL_PHY_DPPULLDOWN_R          6:6

    `define USB_CTRL_PHY_TERMSELECT      5
    `define USB_CTRL_PHY_TERMSELECT_DEFAULT    0
    `define USB_CTRL_PHY_TERMSELECT_B          5
    `define USB_CTRL_PHY_TERMSELECT_T          5
    `define USB_CTRL_PHY_TERMSELECT_W          1
    `define USB_CTRL_PHY_TERMSELECT_R          5:5

    `define USB_CTRL_PHY_XCVRSELECT_DEFAULT    0
    `define USB_CTRL_PHY_XCVRSELECT_B          3
    `define USB_CTRL_PHY_XCVRSELECT_T          4
    `define USB_CTRL_PHY_XCVRSELECT_W          2
    `define USB_CTRL_PHY_XCVRSELECT_R          4:3

    `define USB_CTRL_PHY_OPMODE_DEFAULT    0
    `define USB_CTRL_PHY_OPMODE_B          1
    `define USB_CTRL_PHY_OPMODE_T          2
    `define USB_CTRL_PHY_OPMODE_W          2
    `define USB_CTRL_PHY_OPMODE_R          2:1

    `define USB_CTRL_TX_FLUSH      1
    `define USB_CTRL_TX_FLUSH_DEFAULT    0
    `define USB_CTRL_TX_FLUSH_B          1
    `define USB_CTRL_TX_FLUSH_T          1
    `define USB_CTRL_TX_FLUSH_W          1
    `define USB_CTRL_TX_FLUSH_R          1:1

    `define USB_CTRL_ENABLE_SOF      0
    `define USB_CTRL_ENABLE_SOF_DEFAULT    0
    `define USB_CTRL_ENABLE_SOF_B          0
    `define USB_CTRL_ENABLE_SOF_T          0
    `define USB_CTRL_ENABLE_SOF_W          1
    `define USB_CTRL_ENABLE_SOF_R          0:0

`define USB_STATUS    8'h4

    `define USB_STATUS_SOF_TIME_DEFAULT    0
    `define USB_STATUS_SOF_TIME_B          16
    `define USB_STATUS_SOF_TIME_T          31
    `define USB_STATUS_SOF_TIME_W          16
    `define USB_STATUS_SOF_TIME_R          31:16

    `define USB_STATUS_RX_ERROR      2
    `define USB_STATUS_RX_ERROR_DEFAULT    0
    `define USB_STATUS_RX_ERROR_B          2
    `define USB_STATUS_RX_ERROR_T          2
    `define USB_STATUS_RX_ERROR_W          1
    `define USB_STATUS_RX_ERROR_R          2:2

    `define USB_STATUS_LINESTATE_BITS_DEFAULT    0
    `define USB_STATUS_LINESTATE_BITS_B          0
    `define USB_STATUS_LINESTATE_BITS_T          1
    `define USB_STATUS_LINESTATE_BITS_W          2
    `define USB_STATUS_LINESTATE_BITS_R          1:0

`define USB_IRQ_ACK    8'h8

    `define USB_IRQ_ACK_DEVICE_DETECT      3
    `define USB_IRQ_ACK_DEVICE_DETECT_DEFAULT    0
    `define USB_IRQ_ACK_DEVICE_DETECT_B          3
    `define USB_IRQ_ACK_DEVICE_DETECT_T          3
    `define USB_IRQ_ACK_DEVICE_DETECT_W          1
    `define USB_IRQ_ACK_DEVICE_DETECT_R          3:3

    `define USB_IRQ_ACK_ERR      2
    `define USB_IRQ_ACK_ERR_DEFAULT    0
    `define USB_IRQ_ACK_ERR_B          2
    `define USB_IRQ_ACK_ERR_T          2
    `define USB_IRQ_ACK_ERR_W          1
    `define USB_IRQ_ACK_ERR_R          2:2

    `define USB_IRQ_ACK_DONE      1
    `define USB_IRQ_ACK_DONE_DEFAULT    0
    `define USB_IRQ_ACK_DONE_B          1
    `define USB_IRQ_ACK_DONE_T          1
    `define USB_IRQ_ACK_DONE_W          1
    `define USB_IRQ_ACK_DONE_R          1:1

    `define USB_IRQ_ACK_SOF      0
    `define USB_IRQ_ACK_SOF_DEFAULT    0
    `define USB_IRQ_ACK_SOF_B          0
    `define USB_IRQ_ACK_SOF_T          0
    `define USB_IRQ_ACK_SOF_W          1
    `define USB_IRQ_ACK_SOF_R          0:0

`define USB_IRQ_STS    8'hc

    `define USB_IRQ_STS_DEVICE_DETECT      3
    `define USB_IRQ_STS_DEVICE_DETECT_DEFAULT    0
    `define USB_IRQ_STS_DEVICE_DETECT_B          3
    `define USB_IRQ_STS_DEVICE_DETECT_T          3
    `define USB_IRQ_STS_DEVICE_DETECT_W          1
    `define USB_IRQ_STS_DEVICE_DETECT_R          3:3

    `define USB_IRQ_STS_ERR      2
    `define USB_IRQ_STS_ERR_DEFAULT    0
    `define USB_IRQ_STS_ERR_B          2
    `define USB_IRQ_STS_ERR_T          2
    `define USB_IRQ_STS_ERR_W          1
    `define USB_IRQ_STS_ERR_R          2:2

    `define USB_IRQ_STS_DONE      1
    `define USB_IRQ_STS_DONE_DEFAULT    0
    `define USB_IRQ_STS_DONE_B          1
    `define USB_IRQ_STS_DONE_T          1
    `define USB_IRQ_STS_DONE_W          1
    `define USB_IRQ_STS_DONE_R          1:1

    `define USB_IRQ_STS_SOF      0
    `define USB_IRQ_STS_SOF_DEFAULT    0
    `define USB_IRQ_STS_SOF_B          0
    `define USB_IRQ_STS_SOF_T          0
    `define USB_IRQ_STS_SOF_W          1
    `define USB_IRQ_STS_SOF_R          0:0

`define USB_IRQ_MASK    8'h10

    `define USB_IRQ_MASK_DEVICE_DETECT      3
    `define USB_IRQ_MASK_DEVICE_DETECT_DEFAULT    0
    `define USB_IRQ_MASK_DEVICE_DETECT_B          3
    `define USB_IRQ_MASK_DEVICE_DETECT_T          3
    `define USB_IRQ_MASK_DEVICE_DETECT_W          1
    `define USB_IRQ_MASK_DEVICE_DETECT_R          3:3

    `define USB_IRQ_MASK_ERR      2
    `define USB_IRQ_MASK_ERR_DEFAULT    0
    `define USB_IRQ_MASK_ERR_B          2
    `define USB_IRQ_MASK_ERR_T          2
    `define USB_IRQ_MASK_ERR_W          1
    `define USB_IRQ_MASK_ERR_R          2:2

    `define USB_IRQ_MASK_DONE      1
    `define USB_IRQ_MASK_DONE_DEFAULT    0
    `define USB_IRQ_MASK_DONE_B          1
    `define USB_IRQ_MASK_DONE_T          1
    `define USB_IRQ_MASK_DONE_W          1
    `define USB_IRQ_MASK_DONE_R          1:1

    `define USB_IRQ_MASK_SOF      0
    `define USB_IRQ_MASK_SOF_DEFAULT    0
    `define USB_IRQ_MASK_SOF_B          0
    `define USB_IRQ_MASK_SOF_T          0
    `define USB_IRQ_MASK_SOF_W          1
    `define USB_IRQ_MASK_SOF_R          0:0

`define USB_XFER_DATA    8'h14

    `define USB_XFER_DATA_TX_LEN_DEFAULT    0
    `define USB_XFER_DATA_TX_LEN_B          0
    `define USB_XFER_DATA_TX_LEN_T          15
    `define USB_XFER_DATA_TX_LEN_W          16
    `define USB_XFER_DATA_TX_LEN_R          15:0

`define USB_XFER_TOKEN    8'h18

    `define USB_XFER_TOKEN_START      31
    `define USB_XFER_TOKEN_START_DEFAULT    0
    `define USB_XFER_TOKEN_START_B          31
    `define USB_XFER_TOKEN_START_T          31
    `define USB_XFER_TOKEN_START_W          1
    `define USB_XFER_TOKEN_START_R          31:31

    `define USB_XFER_TOKEN_IN      30
    `define USB_XFER_TOKEN_IN_DEFAULT    0
    `define USB_XFER_TOKEN_IN_B          30
    `define USB_XFER_TOKEN_IN_T          30
    `define USB_XFER_TOKEN_IN_W          1
    `define USB_XFER_TOKEN_IN_R          30:30

    `define USB_XFER_TOKEN_ACK      29
    `define USB_XFER_TOKEN_ACK_DEFAULT    0
    `define USB_XFER_TOKEN_ACK_B          29
    `define USB_XFER_TOKEN_ACK_T          29
    `define USB_XFER_TOKEN_ACK_W          1
    `define USB_XFER_TOKEN_ACK_R          29:29

    `define USB_XFER_TOKEN_PID_DATAX      28
    `define USB_XFER_TOKEN_PID_DATAX_DEFAULT    0
    `define USB_XFER_TOKEN_PID_DATAX_B          28
    `define USB_XFER_TOKEN_PID_DATAX_T          28
    `define USB_XFER_TOKEN_PID_DATAX_W          1
    `define USB_XFER_TOKEN_PID_DATAX_R          28:28

    `define USB_XFER_TOKEN_PID_BITS_DEFAULT    0
    `define USB_XFER_TOKEN_PID_BITS_B          16
    `define USB_XFER_TOKEN_PID_BITS_T          23
    `define USB_XFER_TOKEN_PID_BITS_W          8
    `define USB_XFER_TOKEN_PID_BITS_R          23:16

    `define USB_XFER_TOKEN_DEV_ADDR_DEFAULT    0
    `define USB_XFER_TOKEN_DEV_ADDR_B          9
    `define USB_XFER_TOKEN_DEV_ADDR_T          15
    `define USB_XFER_TOKEN_DEV_ADDR_W          7
    `define USB_XFER_TOKEN_DEV_ADDR_R          15:9

    `define USB_XFER_TOKEN_EP_ADDR_DEFAULT    0
    `define USB_XFER_TOKEN_EP_ADDR_B          5
    `define USB_XFER_TOKEN_EP_ADDR_T          8
    `define USB_XFER_TOKEN_EP_ADDR_W          4
    `define USB_XFER_TOKEN_EP_ADDR_R          8:5

`define USB_RX_STAT    8'h1c

    `define USB_RX_STAT_START_PEND      31
    `define USB_RX_STAT_START_PEND_DEFAULT    0
    `define USB_RX_STAT_START_PEND_B          31
    `define USB_RX_STAT_START_PEND_T          31
    `define USB_RX_STAT_START_PEND_W          1
    `define USB_RX_STAT_START_PEND_R          31:31

    `define USB_RX_STAT_CRC_ERR      30
    `define USB_RX_STAT_CRC_ERR_DEFAULT    0
    `define USB_RX_STAT_CRC_ERR_B          30
    `define USB_RX_STAT_CRC_ERR_T          30
    `define USB_RX_STAT_CRC_ERR_W          1
    `define USB_RX_STAT_CRC_ERR_R          30:30

    `define USB_RX_STAT_RESP_TIMEOUT      29
    `define USB_RX_STAT_RESP_TIMEOUT_DEFAULT    0
    `define USB_RX_STAT_RESP_TIMEOUT_B          29
    `define USB_RX_STAT_RESP_TIMEOUT_T          29
    `define USB_RX_STAT_RESP_TIMEOUT_W          1
    `define USB_RX_STAT_RESP_TIMEOUT_R          29:29

    `define USB_RX_STAT_IDLE      28
    `define USB_RX_STAT_IDLE_DEFAULT    0
    `define USB_RX_STAT_IDLE_B          28
    `define USB_RX_STAT_IDLE_T          28
    `define USB_RX_STAT_IDLE_W          1
    `define USB_RX_STAT_IDLE_R          28:28

    `define USB_RX_STAT_RESP_BITS_DEFAULT    0
    `define USB_RX_STAT_RESP_BITS_B          16
    `define USB_RX_STAT_RESP_BITS_T          23
    `define USB_RX_STAT_RESP_BITS_W          8
    `define USB_RX_STAT_RESP_BITS_R          23:16

    `define USB_RX_STAT_COUNT_BITS_DEFAULT    0
    `define USB_RX_STAT_COUNT_BITS_B          0
    `define USB_RX_STAT_COUNT_BITS_T          15
    `define USB_RX_STAT_COUNT_BITS_W          16
    `define USB_RX_STAT_COUNT_BITS_R          15:0

`define USB_WR_DATA    8'h20

    `define USB_WR_DATA_DATA_DEFAULT    0
    `define USB_WR_DATA_DATA_B          0
    `define USB_WR_DATA_DATA_T          7
    `define USB_WR_DATA_DATA_W          8
    `define USB_WR_DATA_DATA_R          7:0

`define USB_RD_DATA    8'h20

    `define USB_RD_DATA_DATA_DEFAULT    0
    `define USB_RD_DATA_DATA_B          0
    `define USB_RD_DATA_DATA_T          7
    `define USB_RD_DATA_DATA_W          8
    `define USB_RD_DATA_DATA_R          7:0

//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------

`include "usbh_host_defs.v"

//-----------------------------------------------------------------
// Module:  USB Host IP
//-----------------------------------------------------------------
module usbh_host
(
    // Inputs
     input          clk_i
    ,input          rst_i
    ,input          cfg_awvalid_i
    ,input  [31:0]  cfg_awaddr_i
    ,input          cfg_wvalid_i
    ,input  [31:0]  cfg_wdata_i
    ,input  [3:0]   cfg_wstrb_i
    ,input          cfg_bready_i
    ,input          cfg_arvalid_i
    ,input  [31:0]  cfg_araddr_i
    ,input          cfg_rready_i
    ,input  [7:0]   utmi_data_in_i
    ,input          utmi_txready_i
    ,input          utmi_rxvalid_i
    ,input          utmi_rxactive_i
    ,input          utmi_rxerror_i
    ,input  [1:0]   utmi_linestate_i

    // Outputs
    ,output         cfg_awready_o
    ,output         cfg_wready_o
    ,output         cfg_bvalid_o
    ,output [1:0]   cfg_bresp_o
    ,output         cfg_arready_o
    ,output         cfg_rvalid_o
    ,output [31:0]  cfg_rdata_o
    ,output [1:0]   cfg_rresp_o
    ,output         intr_o
    ,output [7:0]   utmi_data_out_o
    ,output         utmi_txvalid_o
    ,output [1:0]   utmi_op_mode_o
    ,output [1:0]   utmi_xcvrselect_o
    ,output         utmi_termselect_o
    ,output         utmi_dppulldown_o
    ,output         utmi_dmpulldown_o
);

//-----------------------------------------------------------------
// Retime write data
//-----------------------------------------------------------------
reg [31:0] wr_data_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    wr_data_q <= 32'b0;
else
    wr_data_q <= cfg_wdata_i;

//-----------------------------------------------------------------
// Request Logic
//-----------------------------------------------------------------
wire read_en_w  = cfg_arvalid_i & cfg_arready_o;
wire write_en_w = cfg_awvalid_i & cfg_awready_o;

//-----------------------------------------------------------------
// Accept Logic
//-----------------------------------------------------------------
assign cfg_arready_o = ~cfg_rvalid_o;
assign cfg_awready_o = ~cfg_bvalid_o && ~cfg_arvalid_i; 
assign cfg_wready_o  = cfg_awready_o;


//-----------------------------------------------------------------
// Register usb_ctrl
//-----------------------------------------------------------------
reg usb_ctrl_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_wr_q <= 1'b1;
else
    usb_ctrl_wr_q <= 1'b0;

// usb_ctrl_phy_dmpulldown [internal]
reg        usb_ctrl_phy_dmpulldown_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_phy_dmpulldown_q <= 1'd`USB_CTRL_PHY_DMPULLDOWN_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_phy_dmpulldown_q <= cfg_wdata_i[`USB_CTRL_PHY_DMPULLDOWN_R];

wire        usb_ctrl_phy_dmpulldown_out_w = usb_ctrl_phy_dmpulldown_q;


// usb_ctrl_phy_dppulldown [internal]
reg        usb_ctrl_phy_dppulldown_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_phy_dppulldown_q <= 1'd`USB_CTRL_PHY_DPPULLDOWN_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_phy_dppulldown_q <= cfg_wdata_i[`USB_CTRL_PHY_DPPULLDOWN_R];

wire        usb_ctrl_phy_dppulldown_out_w = usb_ctrl_phy_dppulldown_q;


// usb_ctrl_phy_termselect [internal]
reg        usb_ctrl_phy_termselect_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_phy_termselect_q <= 1'd`USB_CTRL_PHY_TERMSELECT_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_phy_termselect_q <= cfg_wdata_i[`USB_CTRL_PHY_TERMSELECT_R];

wire        usb_ctrl_phy_termselect_out_w = usb_ctrl_phy_termselect_q;


// usb_ctrl_phy_xcvrselect [internal]
reg [1:0]  usb_ctrl_phy_xcvrselect_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_phy_xcvrselect_q <= 2'd`USB_CTRL_PHY_XCVRSELECT_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_phy_xcvrselect_q <= cfg_wdata_i[`USB_CTRL_PHY_XCVRSELECT_R];

wire [1:0]  usb_ctrl_phy_xcvrselect_out_w = usb_ctrl_phy_xcvrselect_q;


// usb_ctrl_phy_opmode [internal]
reg [1:0]  usb_ctrl_phy_opmode_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_phy_opmode_q <= 2'd`USB_CTRL_PHY_OPMODE_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_phy_opmode_q <= cfg_wdata_i[`USB_CTRL_PHY_OPMODE_R];

wire [1:0]  usb_ctrl_phy_opmode_out_w = usb_ctrl_phy_opmode_q;


// usb_ctrl_tx_flush [auto_clr]
reg        usb_ctrl_tx_flush_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_tx_flush_q <= 1'd`USB_CTRL_TX_FLUSH_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_tx_flush_q <= cfg_wdata_i[`USB_CTRL_TX_FLUSH_R];
else
    usb_ctrl_tx_flush_q <= 1'd`USB_CTRL_TX_FLUSH_DEFAULT;

wire        usb_ctrl_tx_flush_out_w = usb_ctrl_tx_flush_q;


// usb_ctrl_enable_sof [internal]
reg        usb_ctrl_enable_sof_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_ctrl_enable_sof_q <= 1'd`USB_CTRL_ENABLE_SOF_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_CTRL))
    usb_ctrl_enable_sof_q <= cfg_wdata_i[`USB_CTRL_ENABLE_SOF_R];

wire        usb_ctrl_enable_sof_out_w = usb_ctrl_enable_sof_q;


//-----------------------------------------------------------------
// Register usb_status
//-----------------------------------------------------------------
reg usb_status_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_status_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_STATUS))
    usb_status_wr_q <= 1'b1;
else
    usb_status_wr_q <= 1'b0;




//-----------------------------------------------------------------
// Register usb_irq_ack
//-----------------------------------------------------------------
reg usb_irq_ack_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_ack_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_ACK))
    usb_irq_ack_wr_q <= 1'b1;
else
    usb_irq_ack_wr_q <= 1'b0;

// usb_irq_ack_device_detect [auto_clr]
reg        usb_irq_ack_device_detect_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_ack_device_detect_q <= 1'd`USB_IRQ_ACK_DEVICE_DETECT_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_ACK))
    usb_irq_ack_device_detect_q <= cfg_wdata_i[`USB_IRQ_ACK_DEVICE_DETECT_R];
else
    usb_irq_ack_device_detect_q <= 1'd`USB_IRQ_ACK_DEVICE_DETECT_DEFAULT;

wire        usb_irq_ack_device_detect_out_w = usb_irq_ack_device_detect_q;


// usb_irq_ack_err [auto_clr]
reg        usb_irq_ack_err_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_ack_err_q <= 1'd`USB_IRQ_ACK_ERR_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_ACK))
    usb_irq_ack_err_q <= cfg_wdata_i[`USB_IRQ_ACK_ERR_R];
else
    usb_irq_ack_err_q <= 1'd`USB_IRQ_ACK_ERR_DEFAULT;

wire        usb_irq_ack_err_out_w = usb_irq_ack_err_q;


// usb_irq_ack_done [auto_clr]
reg        usb_irq_ack_done_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_ack_done_q <= 1'd`USB_IRQ_ACK_DONE_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_ACK))
    usb_irq_ack_done_q <= cfg_wdata_i[`USB_IRQ_ACK_DONE_R];
else
    usb_irq_ack_done_q <= 1'd`USB_IRQ_ACK_DONE_DEFAULT;

wire        usb_irq_ack_done_out_w = usb_irq_ack_done_q;


// usb_irq_ack_sof [auto_clr]
reg        usb_irq_ack_sof_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_ack_sof_q <= 1'd`USB_IRQ_ACK_SOF_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_ACK))
    usb_irq_ack_sof_q <= cfg_wdata_i[`USB_IRQ_ACK_SOF_R];
else
    usb_irq_ack_sof_q <= 1'd`USB_IRQ_ACK_SOF_DEFAULT;

wire        usb_irq_ack_sof_out_w = usb_irq_ack_sof_q;


//-----------------------------------------------------------------
// Register usb_irq_sts
//-----------------------------------------------------------------
reg usb_irq_sts_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_sts_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_STS))
    usb_irq_sts_wr_q <= 1'b1;
else
    usb_irq_sts_wr_q <= 1'b0;





//-----------------------------------------------------------------
// Register usb_irq_mask
//-----------------------------------------------------------------
reg usb_irq_mask_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_mask_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_MASK))
    usb_irq_mask_wr_q <= 1'b1;
else
    usb_irq_mask_wr_q <= 1'b0;

// usb_irq_mask_device_detect [internal]
reg        usb_irq_mask_device_detect_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_mask_device_detect_q <= 1'd`USB_IRQ_MASK_DEVICE_DETECT_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_MASK))
    usb_irq_mask_device_detect_q <= cfg_wdata_i[`USB_IRQ_MASK_DEVICE_DETECT_R];

wire        usb_irq_mask_device_detect_out_w = usb_irq_mask_device_detect_q;


// usb_irq_mask_err [internal]
reg        usb_irq_mask_err_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_mask_err_q <= 1'd`USB_IRQ_MASK_ERR_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_MASK))
    usb_irq_mask_err_q <= cfg_wdata_i[`USB_IRQ_MASK_ERR_R];

wire        usb_irq_mask_err_out_w = usb_irq_mask_err_q;


// usb_irq_mask_done [internal]
reg        usb_irq_mask_done_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_mask_done_q <= 1'd`USB_IRQ_MASK_DONE_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_MASK))
    usb_irq_mask_done_q <= cfg_wdata_i[`USB_IRQ_MASK_DONE_R];

wire        usb_irq_mask_done_out_w = usb_irq_mask_done_q;


// usb_irq_mask_sof [internal]
reg        usb_irq_mask_sof_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_irq_mask_sof_q <= 1'd`USB_IRQ_MASK_SOF_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_IRQ_MASK))
    usb_irq_mask_sof_q <= cfg_wdata_i[`USB_IRQ_MASK_SOF_R];

wire        usb_irq_mask_sof_out_w = usb_irq_mask_sof_q;


//-----------------------------------------------------------------
// Register usb_xfer_data
//-----------------------------------------------------------------
reg usb_xfer_data_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_data_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_DATA))
    usb_xfer_data_wr_q <= 1'b1;
else
    usb_xfer_data_wr_q <= 1'b0;

// usb_xfer_data_tx_len [internal]
reg [15:0]  usb_xfer_data_tx_len_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_data_tx_len_q <= 16'd`USB_XFER_DATA_TX_LEN_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_DATA))
    usb_xfer_data_tx_len_q <= cfg_wdata_i[`USB_XFER_DATA_TX_LEN_R];

wire [15:0]  usb_xfer_data_tx_len_out_w = usb_xfer_data_tx_len_q;


//-----------------------------------------------------------------
// Register usb_xfer_token
//-----------------------------------------------------------------
reg usb_xfer_token_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_wr_q <= 1'b1;
else
    usb_xfer_token_wr_q <= 1'b0;

// usb_xfer_token_start [clearable]
reg        usb_xfer_token_start_q;

wire usb_xfer_token_start_ack_in_w;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_start_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_start_q <= cfg_wdata_i[`USB_XFER_TOKEN_START_R];
else if (usb_xfer_token_start_ack_in_w)
    usb_xfer_token_start_q <= 1'b0;

wire        usb_xfer_token_start_out_w = usb_xfer_token_start_q;


// usb_xfer_token_in [internal]
reg        usb_xfer_token_in_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_in_q <= 1'd`USB_XFER_TOKEN_IN_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_in_q <= cfg_wdata_i[`USB_XFER_TOKEN_IN_R];

wire        usb_xfer_token_in_out_w = usb_xfer_token_in_q;


// usb_xfer_token_ack [internal]
reg        usb_xfer_token_ack_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_ack_q <= 1'd`USB_XFER_TOKEN_ACK_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_ack_q <= cfg_wdata_i[`USB_XFER_TOKEN_ACK_R];

wire        usb_xfer_token_ack_out_w = usb_xfer_token_ack_q;


// usb_xfer_token_pid_datax [internal]
reg        usb_xfer_token_pid_datax_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_pid_datax_q <= 1'd`USB_XFER_TOKEN_PID_DATAX_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_pid_datax_q <= cfg_wdata_i[`USB_XFER_TOKEN_PID_DATAX_R];

wire        usb_xfer_token_pid_datax_out_w = usb_xfer_token_pid_datax_q;


// usb_xfer_token_pid_bits [internal]
reg [7:0]  usb_xfer_token_pid_bits_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_pid_bits_q <= 8'd`USB_XFER_TOKEN_PID_BITS_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_pid_bits_q <= cfg_wdata_i[`USB_XFER_TOKEN_PID_BITS_R];

wire [7:0]  usb_xfer_token_pid_bits_out_w = usb_xfer_token_pid_bits_q;


// usb_xfer_token_dev_addr [internal]
reg [6:0]  usb_xfer_token_dev_addr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_dev_addr_q <= 7'd`USB_XFER_TOKEN_DEV_ADDR_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_dev_addr_q <= cfg_wdata_i[`USB_XFER_TOKEN_DEV_ADDR_R];

wire [6:0]  usb_xfer_token_dev_addr_out_w = usb_xfer_token_dev_addr_q;


// usb_xfer_token_ep_addr [internal]
reg [3:0]  usb_xfer_token_ep_addr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_xfer_token_ep_addr_q <= 4'd`USB_XFER_TOKEN_EP_ADDR_DEFAULT;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_XFER_TOKEN))
    usb_xfer_token_ep_addr_q <= cfg_wdata_i[`USB_XFER_TOKEN_EP_ADDR_R];

wire [3:0]  usb_xfer_token_ep_addr_out_w = usb_xfer_token_ep_addr_q;


//-----------------------------------------------------------------
// Register usb_rx_stat
//-----------------------------------------------------------------
reg usb_rx_stat_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_rx_stat_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_RX_STAT))
    usb_rx_stat_wr_q <= 1'b1;
else
    usb_rx_stat_wr_q <= 1'b0;







//-----------------------------------------------------------------
// Register usb_wr_data
//-----------------------------------------------------------------
reg usb_wr_data_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_wr_data_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_WR_DATA))
    usb_wr_data_wr_q <= 1'b1;
else
    usb_wr_data_wr_q <= 1'b0;

// usb_wr_data_data [external]
wire [7:0]  usb_wr_data_data_out_w = wr_data_q[`USB_WR_DATA_DATA_R];


//-----------------------------------------------------------------
// Register usb_rd_data
//-----------------------------------------------------------------
reg usb_rd_data_wr_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_rd_data_wr_q <= 1'b0;
else if (write_en_w && (cfg_awaddr_i[7:0] == `USB_RD_DATA))
    usb_rd_data_wr_q <= 1'b1;
else
    usb_rd_data_wr_q <= 1'b0;


wire [15:0]  usb_status_sof_time_in_w;
wire        usb_status_rx_error_in_w;
wire [1:0]  usb_status_linestate_bits_in_w;
wire        usb_irq_sts_device_detect_in_w;
wire        usb_irq_sts_err_in_w;
wire        usb_irq_sts_done_in_w;
wire        usb_irq_sts_sof_in_w;
wire        usb_rx_stat_start_pend_in_w;
wire        usb_rx_stat_crc_err_in_w;
wire        usb_rx_stat_resp_timeout_in_w;
wire        usb_rx_stat_idle_in_w;
wire [7:0]  usb_rx_stat_resp_bits_in_w;
wire [15:0]  usb_rx_stat_count_bits_in_w;
wire [7:0]  usb_rd_data_data_in_w;


//-----------------------------------------------------------------
// Read mux
//-----------------------------------------------------------------
reg [31:0] data_r;

always @ *
begin
    data_r = 32'b0;

    case (cfg_araddr_i[7:0])

    `USB_CTRL:
    begin
        data_r[`USB_CTRL_PHY_DMPULLDOWN_R] = usb_ctrl_phy_dmpulldown_q;
        data_r[`USB_CTRL_PHY_DPPULLDOWN_R] = usb_ctrl_phy_dppulldown_q;
        data_r[`USB_CTRL_PHY_TERMSELECT_R] = usb_ctrl_phy_termselect_q;
        data_r[`USB_CTRL_PHY_XCVRSELECT_R] = usb_ctrl_phy_xcvrselect_q;
        data_r[`USB_CTRL_PHY_OPMODE_R] = usb_ctrl_phy_opmode_q;
        data_r[`USB_CTRL_ENABLE_SOF_R] = usb_ctrl_enable_sof_q;
    end
    `USB_STATUS:
    begin
        data_r[`USB_STATUS_SOF_TIME_R] = usb_status_sof_time_in_w;
        data_r[`USB_STATUS_RX_ERROR_R] = usb_status_rx_error_in_w;
        data_r[`USB_STATUS_LINESTATE_BITS_R] = usb_status_linestate_bits_in_w;
    end
    `USB_IRQ_STS:
    begin
        data_r[`USB_IRQ_STS_DEVICE_DETECT_R] = usb_irq_sts_device_detect_in_w;
        data_r[`USB_IRQ_STS_ERR_R] = usb_irq_sts_err_in_w;
        data_r[`USB_IRQ_STS_DONE_R] = usb_irq_sts_done_in_w;
        data_r[`USB_IRQ_STS_SOF_R] = usb_irq_sts_sof_in_w;
    end
    `USB_IRQ_MASK:
    begin
        data_r[`USB_IRQ_MASK_DEVICE_DETECT_R] = usb_irq_mask_device_detect_q;
        data_r[`USB_IRQ_MASK_ERR_R] = usb_irq_mask_err_q;
        data_r[`USB_IRQ_MASK_DONE_R] = usb_irq_mask_done_q;
        data_r[`USB_IRQ_MASK_SOF_R] = usb_irq_mask_sof_q;
    end
    `USB_XFER_DATA:
    begin
        data_r[`USB_XFER_DATA_TX_LEN_R] = usb_xfer_data_tx_len_q;
    end
    `USB_XFER_TOKEN:
    begin
        data_r[`USB_XFER_TOKEN_IN_R] = usb_xfer_token_in_q;
        data_r[`USB_XFER_TOKEN_ACK_R] = usb_xfer_token_ack_q;
        data_r[`USB_XFER_TOKEN_PID_DATAX_R] = usb_xfer_token_pid_datax_q;
        data_r[`USB_XFER_TOKEN_PID_BITS_R] = usb_xfer_token_pid_bits_q;
        data_r[`USB_XFER_TOKEN_DEV_ADDR_R] = usb_xfer_token_dev_addr_q;
        data_r[`USB_XFER_TOKEN_EP_ADDR_R] = usb_xfer_token_ep_addr_q;
    end
    `USB_RX_STAT:
    begin
        data_r[`USB_RX_STAT_START_PEND_R] = usb_rx_stat_start_pend_in_w;
        data_r[`USB_RX_STAT_CRC_ERR_R] = usb_rx_stat_crc_err_in_w;
        data_r[`USB_RX_STAT_RESP_TIMEOUT_R] = usb_rx_stat_resp_timeout_in_w;
        data_r[`USB_RX_STAT_IDLE_R] = usb_rx_stat_idle_in_w;
        data_r[`USB_RX_STAT_RESP_BITS_R] = usb_rx_stat_resp_bits_in_w;
        data_r[`USB_RX_STAT_COUNT_BITS_R] = usb_rx_stat_count_bits_in_w;
    end
    `USB_RD_DATA:
    begin
        data_r[`USB_RD_DATA_DATA_R] = usb_rd_data_data_in_w;
    end
    default :
        data_r = 32'b0;
    endcase
end

//-----------------------------------------------------------------
// RVALID
//-----------------------------------------------------------------
reg rvalid_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    rvalid_q <= 1'b0;
else if (read_en_w)
    rvalid_q <= 1'b1;
else if (cfg_rready_i)
    rvalid_q <= 1'b0;

assign cfg_rvalid_o = rvalid_q;

//-----------------------------------------------------------------
// Retime read response
//-----------------------------------------------------------------
reg [31:0] rd_data_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    rd_data_q <= 32'b0;
else if (!cfg_rvalid_o || cfg_rready_i)
    rd_data_q <= data_r;

assign cfg_rdata_o = rd_data_q;
assign cfg_rresp_o = 2'b0;

//-----------------------------------------------------------------
// BVALID
//-----------------------------------------------------------------
reg bvalid_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    bvalid_q <= 1'b0;
else if (write_en_w)
    bvalid_q <= 1'b1;
else if (cfg_bready_i)
    bvalid_q <= 1'b0;

assign cfg_bvalid_o = bvalid_q;
assign cfg_bresp_o  = 2'b0;

wire usb_rd_data_rd_req_w = read_en_w & (cfg_araddr_i[7:0] == `USB_RD_DATA);

wire usb_wr_data_wr_req_w = usb_wr_data_wr_q;
wire usb_rd_data_wr_req_w = usb_rd_data_wr_q;

//-----------------------------------------------------------------
// Registers / Wires
//-----------------------------------------------------------------
// SOF
reg [10:0]  sof_value_q;
reg [15:0]  sof_time_q;
reg         sof_irq_q;

reg         transfer_req_ack_q;

wire [7:0]  fifo_tx_data_w;
wire        fifo_tx_pop_w;

wire [7:0]  fifo_rx_data_w;
wire        fifo_rx_push_w;

reg         fifo_flush_q;

wire [7:0]  token_pid_w;
wire [6:0]  token_dev_w;
wire [3:0]  token_ep_w;

reg         transfer_start_q;
reg         in_transfer_q;
reg         sof_transfer_q;
reg         resp_expected_q;
wire        transfer_ack_w;

wire        status_crc_err_w;
wire        status_timeout_w;
wire [7:0]  status_response_w;
wire [15:0] status_rx_count_w;
wire        status_sie_idle_w;
wire        status_tx_done_w;
wire        status_rx_done_w;

wire        send_sof_w;
wire        sof_gaurd_band_w;
wire        clear_to_send_w;

reg         usb_err_q;

reg         intr_done_q;
reg         intr_sof_q;
reg         intr_err_q;

//-----------------------------------------------------------------
// Definitions
//-----------------------------------------------------------------
localparam [15:0] SOF_ZERO        = 0;
localparam [15:0] SOF_INC         = 1;
localparam [15:0] SOF_THRESHOLD   = 48000-1;

localparam [15:0] CLKS_PER_BIT    = 4;

localparam [15:0] EOF1_THRESHOLD  = (50 * CLKS_PER_BIT); // EOF1 + some margin
localparam [15:0] MAX_XFER_SIZE   = 64;
localparam [15:0] MAX_XFER_PERIOD = ((MAX_XFER_SIZE + 6) * 10  * CLKS_PER_BIT); // Max packet transfer time (+ margin)
localparam [15:0] SOF_GAURD_LOW   = (20 * CLKS_PER_BIT);
localparam [15:0] SOF_GAURD_HIGH  = SOF_THRESHOLD - EOF1_THRESHOLD - MAX_XFER_PERIOD;

localparam PID_SOF      = 8'hA5;

//-----------------------------------------------------------------
// SIE
//-----------------------------------------------------------------
usbh_sie
u_sie
(
    // Clock & reset
    .clk_i(clk_i),
    .rst_i(rst_i),

    // Control
    .start_i(transfer_start_q),
    .in_transfer_i(in_transfer_q),
    .sof_transfer_i(sof_transfer_q),
    .resp_expected_i(resp_expected_q),    
    .ack_o(transfer_ack_w),

    // Token packet    
    .token_pid_i(token_pid_w),
    .token_dev_i(token_dev_w),
    .token_ep_i(token_ep_w),

    // Data packet
    .data_len_i(usb_xfer_data_tx_len_out_w),
    .data_idx_i(usb_xfer_token_pid_datax_out_w),

    // Tx Data FIFO
    .tx_data_i(fifo_tx_data_w),
    .tx_pop_o(fifo_tx_pop_w),

    // Rx Data FIFO
    .rx_data_o(fifo_rx_data_w),
    .rx_push_o(fifo_rx_push_w),

    // Status
    .rx_done_o(status_rx_done_w),
    .tx_done_o(status_tx_done_w),
    .crc_err_o(status_crc_err_w),
    .timeout_o(status_timeout_w),
    .response_o(status_response_w),
    .rx_count_o(status_rx_count_w),
    .idle_o(status_sie_idle_w),

    // UTMI Interface
    .utmi_data_o(utmi_data_out_o),
    .utmi_txvalid_o(utmi_txvalid_o),
    .utmi_txready_i(utmi_txready_i),
    .utmi_data_i(utmi_data_in_i),
    .utmi_rxvalid_i(utmi_rxvalid_i),
    .utmi_rxactive_i(utmi_rxactive_i)
);    

//-----------------------------------------------------------------
// Peripheral Interface
//-----------------------------------------------------------------
assign usb_status_sof_time_in_w       = sof_time_q;
assign usb_status_rx_error_in_w       = usb_err_q;
assign usb_status_linestate_bits_in_w = utmi_linestate_i;

assign usb_irq_sts_err_in_w           = intr_err_q;
assign usb_irq_sts_done_in_w          = intr_done_q;
assign usb_irq_sts_sof_in_w           = intr_sof_q;

assign usb_rx_stat_start_pend_in_w    = usb_xfer_token_start_out_w;
assign usb_rx_stat_crc_err_in_w       = status_crc_err_w;
assign usb_rx_stat_resp_timeout_in_w  = status_timeout_w;
assign usb_rx_stat_idle_in_w          = status_sie_idle_w;
assign usb_rx_stat_resp_bits_in_w     = status_response_w;
assign usb_rx_stat_count_bits_in_w    = status_rx_count_w;

assign usb_xfer_token_start_ack_in_w  = transfer_req_ack_q;

assign utmi_op_mode_o                 = usb_ctrl_phy_opmode_out_w;
assign utmi_xcvrselect_o              = usb_ctrl_phy_xcvrselect_out_w;
assign utmi_termselect_o              = usb_ctrl_phy_termselect_out_w;
assign utmi_dppulldown_o              = usb_ctrl_phy_dppulldown_out_w;
assign utmi_dmpulldown_o              = usb_ctrl_phy_dmpulldown_out_w;

//-----------------------------------------------------------------
// Tx FIFO (Host -> Device)
//-----------------------------------------------------------------
usbh_fifo
u_fifo_tx
(
    .clk_i(clk_i),
    .rst_i(rst_i),

    .data_i(usb_wr_data_data_out_w),
    .push_i(usb_wr_data_wr_req_w),

    .flush_i(usb_ctrl_tx_flush_out_w),

    .full_o(),
    .empty_o(),

    .data_o(fifo_tx_data_w),
    .pop_i(fifo_tx_pop_w)
);

//-----------------------------------------------------------------
// Rx FIFO (Device -> Host)
//-----------------------------------------------------------------
usbh_fifo
u_fifo_rx
(
    .clk_i(clk_i),
    .rst_i(rst_i),

    // Receive from UTMI interface
    .data_i(fifo_rx_data_w),
    .push_i(fifo_rx_push_w),

    .flush_i(fifo_flush_q),

    .full_o(),
    .empty_o(),

    .data_o(usb_rd_data_data_in_w),
    .pop_i(usb_rd_data_rd_req_w)
);

//-----------------------------------------------------------------
// Assignments
//-----------------------------------------------------------------
assign send_sof_w       = (sof_time_q == SOF_THRESHOLD && usb_ctrl_enable_sof_out_w) & status_sie_idle_w;
assign sof_gaurd_band_w = (sof_time_q <= SOF_GAURD_LOW || sof_time_q >= SOF_GAURD_HIGH);
assign clear_to_send_w  = (~sof_gaurd_band_w | ~usb_ctrl_enable_sof_out_w) & status_sie_idle_w;

assign token_pid_w      = sof_transfer_q ? PID_SOF : usb_xfer_token_pid_bits_out_w;

assign token_dev_w      = sof_transfer_q ? 
                          {sof_value_q[0], sof_value_q[1], sof_value_q[2], 
                          sof_value_q[3], sof_value_q[4], sof_value_q[5], sof_value_q[6]} :
                          {usb_xfer_token_dev_addr_out_w[0], usb_xfer_token_dev_addr_out_w[1], usb_xfer_token_dev_addr_out_w[2], usb_xfer_token_dev_addr_out_w[3], usb_xfer_token_dev_addr_out_w[4], usb_xfer_token_dev_addr_out_w[5], usb_xfer_token_dev_addr_out_w[6]};

assign token_ep_w       = sof_transfer_q ? 
                          {sof_value_q[7], sof_value_q[8], sof_value_q[9], sof_value_q[10]} : 
                          {usb_xfer_token_ep_addr_out_w[0], usb_xfer_token_ep_addr_out_w[1], usb_xfer_token_ep_addr_out_w[2], usb_xfer_token_ep_addr_out_w[3]};

//-----------------------------------------------------------------
// Control logic
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    fifo_flush_q       <= 1'b0;
    transfer_start_q   <= 1'b0;
    sof_transfer_q     <= 1'b0;
    transfer_req_ack_q <= 1'b0;
    in_transfer_q      <= 1'b0;
    resp_expected_q    <= 1'b0;
end
else
begin
    // Transfer in progress?
    if (transfer_start_q)
    begin
        // Transfer accepted
        if (transfer_ack_w)
            transfer_start_q   <= 1'b0;

        fifo_flush_q       <= 1'b0;
        transfer_req_ack_q <= 1'b0;
    end
    // Time to send another SOF token?
    else if (send_sof_w)
    begin
        // Start transfer
        in_transfer_q     <= 1'b0;
        resp_expected_q   <= 1'b0;
        transfer_start_q  <= 1'b1;
        sof_transfer_q    <= 1'b1;
    end               
    // Not in SOF gaurd band region or SOF disabled?
    else if (clear_to_send_w)
    begin
        // Transfer request
        if (usb_xfer_token_start_out_w)
        begin              
            // Flush un-used previous Rx data
            fifo_flush_q       <= 1'b1;

            // Start transfer
            in_transfer_q      <= usb_xfer_token_in_out_w;
            resp_expected_q    <= usb_xfer_token_ack_out_w;
            transfer_start_q   <= 1'b1;
            sof_transfer_q     <= 1'b0;
            transfer_req_ack_q <= 1'b1;
        end
    end
end

//-----------------------------------------------------------------
// SOF Frame Number
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    sof_value_q    <= 11'd0;
    sof_time_q     <= SOF_ZERO;
    sof_irq_q      <= 1'b0;
end
// Time to send another SOF token?
else if (send_sof_w)
begin
    sof_time_q    <= SOF_ZERO;
    sof_value_q   <= sof_value_q + 11'd1;

    // Start of frame interrupt
    sof_irq_q     <= 1'b1;
end
else
begin
    // Increment the SOF timer
    if (sof_time_q != SOF_THRESHOLD)
        sof_time_q <= sof_time_q + SOF_INC;

    sof_irq_q     <= 1'b0;
end

//-----------------------------------------------------------------
// Record Errors
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    usb_err_q <= 1'b0;
// Clear error
else if (usb_ctrl_wr_q)
    usb_err_q <= 1'b0;
// Record bus errors
else if (utmi_rxerror_i)
    usb_err_q <= 1'b1;

//-----------------------------------------------------------------
// Interrupts
//-----------------------------------------------------------------
reg err_cond_q;
reg intr_q;
reg device_det_q;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    intr_done_q   <= 1'b0;
    intr_sof_q    <= 1'b0;
    intr_err_q    <= 1'b0;
    err_cond_q    <= 1'b0;
    device_det_q  <= 1'b0;
    intr_q        <= 1'b0;
end
else
begin
    if (status_rx_done_w || status_tx_done_w)
        intr_done_q <= 1'b1;
    else if (usb_irq_ack_done_out_w)
        intr_done_q <= 1'b0;

    if (sof_irq_q)
        intr_sof_q  <= 1'b1;
    else if (usb_irq_ack_sof_out_w)
        intr_sof_q <= 1'b0;

    if ((status_crc_err_w || status_timeout_w) && (!err_cond_q))
        intr_err_q <= 1'b1;
    else if (usb_irq_ack_err_out_w)
        intr_err_q <= 1'b0;

    // Line state != SE0
    if (utmi_linestate_i != 2'b0)
        device_det_q  <= 1'b1;
    else if (usb_irq_ack_device_detect_out_w)
        device_det_q <= 1'b0;

    err_cond_q  <= (status_crc_err_w | status_timeout_w);

    intr_q <= (intr_done_q  & usb_irq_mask_done_out_w) |
              (intr_err_q   & usb_irq_mask_err_out_w)  |
              (intr_sof_q   & usb_irq_mask_sof_out_w)  |
              (device_det_q & usb_irq_mask_device_detect_out_w);
end

assign intr_o = intr_q;



endmodule
//-----------------------------------------------------------------
//                     USB Full Speed Host
//                           V0.5
//                     Ultra-Embedded.com
//                     Copyright 2015-2019
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
//                          Generated File
//-----------------------------------------------------------------

module usbh_sie
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           start_i
    ,input           in_transfer_i
    ,input           sof_transfer_i
    ,input           resp_expected_i
    ,input  [  7:0]  token_pid_i
    ,input  [  6:0]  token_dev_i
    ,input  [  3:0]  token_ep_i
    ,input  [ 15:0]  data_len_i
    ,input           data_idx_i
    ,input  [  7:0]  tx_data_i
    ,input           utmi_txready_i
    ,input  [  7:0]  utmi_data_i
    ,input           utmi_rxvalid_i
    ,input           utmi_rxactive_i

    // Outputs
    ,output          ack_o
    ,output          tx_pop_o
    ,output [  7:0]  rx_data_o
    ,output          rx_push_o
    ,output          tx_done_o
    ,output          rx_done_o
    ,output          crc_err_o
    ,output          timeout_o
    ,output [  7:0]  response_o
    ,output [ 15:0]  rx_count_o
    ,output          idle_o
    ,output [  7:0]  utmi_data_o
    ,output          utmi_txvalid_o
);



//-----------------------------------------------------------------
// Registers / Wires
//-----------------------------------------------------------------
reg                 start_ack_q;

// Status
reg                 status_tx_done_q;
reg                 status_rx_done_q;
reg                 status_crc_err_q;
reg                 status_timeout_q;
reg [7:0]           status_response_q;

reg [15:0]          byte_count_q;
reg                 in_transfer_q;

reg [2:0]           rx_time_q;
reg                 rx_time_en_q;
reg [7:0]           last_tx_time_q;

reg                 send_data1_q;
reg                 send_sof_q;
reg                 send_ack_q;

// CRC16
reg [15:0]          crc_sum_q;
wire [15:0]         crc_out_w;
wire [7:0]          crc_data_in_w;

// CRC5
wire [4:0]          crc5_out_w;
wire [4:0]          crc5_next_w = crc5_out_w ^ 5'h1F;

reg [15:0]          token_q;

reg                 wait_resp_q;

reg [3:0]           state_q;

//-----------------------------------------------------------------
// Definitions
//-----------------------------------------------------------------
localparam RX_TIMEOUT       = 8'd255; // ~5uS @ 48MHz
localparam TX_IFS           = 8'd7; // 2 FS bit times (x5 CLKs @ 60MHz, x4 CLKs @ 48MHz)

localparam PID_OUT          = 8'hE1;
localparam PID_IN           = 8'h69;
localparam PID_SOF          = 8'hA5;
localparam PID_SETUP        = 8'h2D;

localparam PID_DATA0        = 8'hC3;
localparam PID_DATA1        = 8'h4B;

localparam PID_ACK          = 8'hD2;
localparam PID_NAK          = 8'h5A;
localparam PID_STALL        = 8'h1E;

// States
localparam STATE_IDLE       = 4'd0;
localparam STATE_RX_DATA    = 4'd1;
localparam STATE_TX_PID     = 4'd2;
localparam STATE_TX_DATA    = 4'd3;
localparam STATE_TX_CRC1    = 4'd4;
localparam STATE_TX_CRC2    = 4'd5;
localparam STATE_TX_TOKEN1  = 4'd6;
localparam STATE_TX_TOKEN2  = 4'd7;
localparam STATE_TX_TOKEN3  = 4'd8;
localparam STATE_TX_ACKNAK  = 4'd9;
localparam STATE_TX_WAIT    = 4'd10;
localparam STATE_RX_WAIT    = 4'd11;
localparam STATE_TX_IFS     = 4'd12;

localparam RX_TIME_ZERO     = 3'd0;
localparam RX_TIME_INC      = 3'd1;
localparam RX_TIME_READY    = 3'd7; // 2-bit times (x5 CLKs @ 60MHz, x4 CLKs @ 48MHz)

//-----------------------------------------------------------------
// Wires
//-----------------------------------------------------------------
// Rx data
wire [7:0] rx_data_w;
wire       data_ready_w;
wire       crc_byte_w;
wire       rx_active_w;

// 2-bit times after last RX (inter-packet delay)?
wire autoresp_thresh_w = send_ack_q & rx_time_en_q & (rx_time_q == RX_TIME_READY);

// Response timeout (no response after 500uS from transmit)
wire rx_resp_timeout_w = (last_tx_time_q >= RX_TIMEOUT) & wait_resp_q;

// Tx - Tx IFS timeout
wire tx_ifs_ready_w    = (last_tx_time_q >= TX_IFS);

// CRC16 error on received data
wire crc_error_w = (state_q == STATE_RX_DATA) && !rx_active_w && in_transfer_q        &&
                   (status_response_q == PID_DATA0 || status_response_q == PID_DATA1) &&
                   (crc_sum_q != 16'hB001);

//-----------------------------------------------------------------
// State Machine
//-----------------------------------------------------------------
reg [3:0] next_state_r;

always @ *
begin
    next_state_r = state_q;
        
    //-----------------------------------------
    // Tx State Machine
    //-----------------------------------------
    case (state_q)

        //-----------------------------------------
        // TX_TOKEN1 (byte 1 of token)
        //-----------------------------------------
        STATE_TX_TOKEN1 :
        begin
            // Data sent?
            if (utmi_txready_i)
                next_state_r = STATE_TX_TOKEN2;
        end
        //-----------------------------------------
        // TX_TOKEN2 (byte 2 of token)
        //-----------------------------------------
        STATE_TX_TOKEN2 :
        begin
            // Data sent?
            if (utmi_txready_i)
                next_state_r = STATE_TX_TOKEN3;        
        end
        //-----------------------------------------
        // TX_TOKEN3 (byte 3 of token)
        //-----------------------------------------
        STATE_TX_TOKEN3 :
        begin
            // Data sent?
            if (utmi_txready_i)
            begin
                // SOF - no data packet
                if (send_sof_q)
                    next_state_r = STATE_TX_IFS;
                // IN - wait for data
                else if (in_transfer_q)
                    next_state_r = STATE_RX_WAIT;
                // OUT/SETUP - Send data or ZLP
                else
                    next_state_r = STATE_TX_IFS;
            end
        end
        //-----------------------------------------
        // TX_IFS
        //-----------------------------------------
        STATE_TX_IFS :
        begin
            // IFS expired
            if (tx_ifs_ready_w)
            begin
                // SOF - no data packet
                if (send_sof_q)
                    next_state_r = STATE_IDLE;
                // OUT/SETUP - Send data or ZLP
                else
                    next_state_r = STATE_TX_PID;
            end
        end
        //-----------------------------------------
        // TX_PID
        //-----------------------------------------
        STATE_TX_PID :
        begin
            // Last data byte sent?
            if (utmi_txready_i && (byte_count_q == 16'b0))
                next_state_r = STATE_TX_CRC1;
            else if (utmi_txready_i)
                next_state_r = STATE_TX_DATA;
        end
        //-----------------------------------------
        // TX_DATA
        //-----------------------------------------
        STATE_TX_DATA :
        begin
            // Last data byte sent?
            if (utmi_txready_i && (byte_count_q == 16'b0))
                next_state_r = STATE_TX_CRC1;
        end
        //-----------------------------------------
        // TX_CRC1 (first byte)
        //-----------------------------------------
        STATE_TX_CRC1 :
        begin
            // Data sent?
            if (utmi_txready_i)
                next_state_r = STATE_TX_CRC2;
        end
        //-----------------------------------------
        // TX_CRC (second byte)
        //-----------------------------------------
        STATE_TX_CRC2 :
        begin
            // Data sent?
            if (utmi_txready_i)
            begin
               // If a response is expected
               if (wait_resp_q)
                  next_state_r = STATE_RX_WAIT;
                // No response expected (e.g ISO transfer)
               else
                  next_state_r = STATE_IDLE;                
            end
        end
        //-----------------------------------------
        // STATE_TX_WAIT
        //-----------------------------------------
        STATE_TX_WAIT :
        begin
            // Waited long enough?
            if (autoresp_thresh_w)
                next_state_r = STATE_TX_ACKNAK;
        end        
        //-----------------------------------------
        // STATE_TX_ACKNAK
        //-----------------------------------------
        STATE_TX_ACKNAK :
        begin
            // Data sent?
            if (utmi_txready_i)
                next_state_r = STATE_IDLE;
        end
        //-----------------------------------------
        // STATE_RX_WAIT
        //-----------------------------------------
        STATE_RX_WAIT :
        begin
           // Data received?
           if (data_ready_w)
              next_state_r = STATE_RX_DATA;
            // Waited long enough?
           else if (rx_resp_timeout_w)
              next_state_r = STATE_IDLE;
        end
        //-----------------------------------------
        // RX_DATA
        //-----------------------------------------
        STATE_RX_DATA :
        begin
            // Receive complete
            if (~rx_active_w)
            begin
                // Send ACK but incoming data had CRC error, do not ACK
                if (send_ack_q && crc_error_w)
                    next_state_r = STATE_IDLE;
                // Send an ACK response without CPU interaction?
                else if (send_ack_q && (status_response_q == PID_DATA0 || status_response_q == PID_DATA1))
                    next_state_r = STATE_TX_WAIT;
                else
                    next_state_r = STATE_IDLE;
            end
        end
        //-----------------------------------------
        // IDLE / RECEIVE BEGIN
        //-----------------------------------------
        STATE_IDLE :
        begin
           // Token transfer request
           if (start_i)
              next_state_r  = STATE_TX_TOKEN1;
        end
        default :
           ;
    endcase
end

// Update state
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    state_q   <= STATE_IDLE;
else
    state_q   <= next_state_r;

//-----------------------------------------------------------------
// Tx Token
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    token_q         <= 16'h0000;
else if (state_q == STATE_IDLE)
    token_q         <= {token_dev_i, token_ep_i, 5'b0};
// PID of token sent, capture calculated CRC for token packet
else if (state_q == STATE_TX_TOKEN1 && utmi_txready_i)
    token_q[4:0]    <= crc5_next_w;

//-----------------------------------------------------------------
// Tx Timer
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    last_tx_time_q <= 8'd0;
// Start counting from last Tx
else if (state_q == STATE_IDLE || (utmi_txvalid_o && utmi_txready_i))
    last_tx_time_q <= 8'd0;
// Increment the Tx timeout
else if (last_tx_time_q != RX_TIMEOUT)
    last_tx_time_q <= last_tx_time_q + 8'd1;

//-----------------------------------------------------------------
// Transmit / Receive counter
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    byte_count_q <= 16'h0000;
// New transfer request (not automatic SOF request)
else if (state_q == STATE_IDLE && start_i && !sof_transfer_i)
    byte_count_q <= data_len_i;
else if (state_q == STATE_RX_WAIT)
    byte_count_q <= 16'h0000;
// Transmit byte
else if ((state_q == STATE_TX_PID || state_q == STATE_TX_DATA) && utmi_txready_i)
begin
    // Count down data left to send
    if (byte_count_q != 16'd0)
        byte_count_q <= byte_count_q - 16'd1;
end
// Received byte
else if (state_q == STATE_RX_DATA && data_ready_w && !crc_byte_w)
    byte_count_q <= byte_count_q + 16'd1;

//-----------------------------------------------------------------
// Transfer start ack
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    start_ack_q  <= 1'b0;
// First byte of PID sent, ack transfer request
else if (state_q == STATE_TX_TOKEN1 && utmi_txready_i)
    start_ack_q  <= 1'b1;
else
    start_ack_q  <= 1'b0;

//-----------------------------------------------------------------
// Record request details
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    in_transfer_q   <= 1'b0;
    send_ack_q      <= 1'b0;
    send_data1_q    <= 1'b0;
    send_sof_q      <= 1'b0;
end
// Start of new request
else if (state_q == STATE_IDLE && start_i)
begin
    // Transfer request
    // e.g. (H)SOF                                   [sof_transfer_i]
    //      (H)OUT + (H)DATA + (F)ACK/NACK/STALL     [data_len_i >= 0 && !in_transfer_i]
    //      (H)IN  + (F)DATA + (H)ACK                [in_transfer_i]
    //      (H)IN  + (F)NAK/STALL                    [in_transfer_i]
    in_transfer_q   <= in_transfer_i;

    // Send ACK in response to IN DATA
    send_ack_q      <= in_transfer_i && resp_expected_i;

    // DATA0/1
    send_data1_q    <= data_idx_i;

    send_sof_q      <= sof_transfer_i;
end

//-----------------------------------------------------------------
// Response delay timer
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
begin
    rx_time_q       <= RX_TIME_ZERO;
    rx_time_en_q    <= 1'b0;
end
else if (state_q == STATE_IDLE)
begin
    rx_time_q       <= RX_TIME_ZERO;
    rx_time_en_q    <= 1'b0;
end
// Receive complete
else if (state_q == STATE_RX_DATA && !utmi_rxactive_i)
begin
    // Reset time since end of last data byte
    rx_time_q       <= RX_TIME_ZERO;
    rx_time_en_q    <= 1'b1;
end
// Increment timer if enabled (and less than the threshold)
else if (rx_time_en_q && rx_time_q != RX_TIME_READY)
    rx_time_q       <= rx_time_q + RX_TIME_INC;

// Response expected
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    wait_resp_q <= 1'b0;
// Incoming data
else if (state_q == STATE_RX_WAIT && data_ready_w)
    wait_resp_q <= 1'b0;
else if (state_q == STATE_IDLE && start_i)
    wait_resp_q <= resp_expected_i;

//-----------------------------------------------------------------
// Status
//-----------------------------------------------------------------
always @ (posedge clk_i or posedge rst_i)
begin
   if (rst_i)
   begin
       status_response_q    <= 8'h00;
       status_timeout_q     <= 1'b0;
       status_rx_done_q     <= 1'b0;
       status_tx_done_q     <= 1'b0;
   end
   else
   begin
        case (state_q)

        //-----------------------------------------
        // RX_WAIT
        //-----------------------------------------
        STATE_RX_WAIT :
        begin
           // Store response PID
           if (data_ready_w)
               status_response_q   <= rx_data_w;

           // Waited long enough?
           if (rx_resp_timeout_w)
               status_timeout_q    <= 1'b1;

            status_tx_done_q     <= 1'b0;
        end
        //-----------------------------------------
        // RX_DATA
        //-----------------------------------------
        STATE_RX_DATA :
        begin
           // Receive complete
           if (!utmi_rxactive_i)
                status_rx_done_q   <= 1'b1;
           else
                status_rx_done_q   <= 1'b0;
        end
        //-----------------------------------------
        // TX_CRC (second byte)
        //-----------------------------------------
        STATE_TX_CRC2 :
        begin
            // Data sent?
            if (utmi_txready_i && !wait_resp_q)
            begin
                // Transfer now complete
                status_tx_done_q    <= 1'b1;
            end
        end
        //-----------------------------------------
        // IDLE / RECEIVE BEGIN
        //-----------------------------------------
        STATE_IDLE :
        begin
            // Transfer request
            // e.g. (H)SOF                                   [sof_transfer_i]
            //      (H)OUT + (H)DATA + (F)ACK/NACK/STALL     [data_len_i >= 0 && !in_transfer_i]
            //      (H)IN  + (F)DATA + (H)ACK                [in_transfer_i]
            //      (H)IN  + (F)NAK/STALL                    [in_transfer_i]
            if (start_i && !sof_transfer_i) // (not automatic SOF request)
            begin
                // Clear status
                status_response_q       <= 8'h00;
                status_timeout_q        <= 1'b0;
            end

            status_rx_done_q     <= 1'b0;
            status_tx_done_q     <= 1'b0;
        end
        //-----------------------------------------
        // DEFAULT
        //-----------------------------------------        
        default :
        begin
            status_rx_done_q     <= 1'b0;
            status_tx_done_q     <= 1'b0;
        end
       endcase
   end
end


//-----------------------------------------------------------------
// Data delay (to strip the CRC16 trailing bytes)
//-----------------------------------------------------------------
reg [31:0] data_buffer_q;
reg [3:0]  data_valid_q;
reg [3:0]  rx_active_q;

wire shift_en_w = (utmi_rxvalid_i & utmi_rxactive_i) || !utmi_rxactive_i;

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    data_buffer_q <= 32'b0;
else if (shift_en_w)
    data_buffer_q <= {utmi_data_i, data_buffer_q[31:8]};

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    data_valid_q <= 4'b0;
else if (shift_en_w)
    data_valid_q <= {(utmi_rxvalid_i & utmi_rxactive_i), data_valid_q[3:1]};
else
    data_valid_q <= {data_valid_q[3:1], 1'b0};

reg [1:0] data_crc_q;
always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    data_crc_q <= 2'b0;
else if (shift_en_w)
    data_crc_q <= {!utmi_rxactive_i, data_crc_q[1]};

always @ (posedge clk_i or posedge rst_i)
if (rst_i)
    rx_active_q <= 4'b0;
else
    rx_active_q <= {utmi_rxactive_i, rx_active_q[3:1]};

assign rx_data_w    = data_buffer_q[7:0];
assign data_ready_w = data_valid_q[0];
assign crc_byte_w   = data_crc_q[0];
assign rx_active_w  = rx_active_q[0];

//-----------------------------------------------------------------
// CRC
//-----------------------------------------------------------------

// CRC16 (Data)
usbh_crc16
u_crc16
(
    .crc_i(crc_sum_q),
    .data_i(crc_data_in_w),
    .crc_o(crc_out_w)
);

// CRC5 (Token)
usbh_crc5
u_crc5
(
    .crc_i(5'h1F),
    .data_i(token_q[15:5]),
    .crc_o(crc5_out_w)
);

// CRC control / check
always @ (posedge clk_i or posedge rst_i)
begin
   if (rst_i)
   begin
       crc_sum_q          <= 16'hFFFF;
       status_crc_err_q   <= 1'b0;
   end
   else
   begin
        case (state_q)
            //-----------------------------------------
            // TX_PID
            //-----------------------------------------
            STATE_TX_PID :
            begin
                // First byte is PID (not CRC'd), reset CRC16
                crc_sum_q      <= 16'hFFFF;
            end        
            //-----------------------------------------
            // TX_DATA
            //-----------------------------------------
            STATE_TX_DATA :
            begin
                // Data sent?
                if (utmi_txready_i)
                begin
                    // Next CRC start value
                    crc_sum_q      <= crc_out_w;
                end
            end
            //-----------------------------------------
            // RX_WAIT
            //-----------------------------------------
            STATE_RX_WAIT :
            begin
                // Reset CRC16
                crc_sum_q   <= 16'hFFFF;
            end            
            //-----------------------------------------
            // RX_DATA
            //-----------------------------------------
            STATE_RX_DATA :
            begin
               // Data received?
               if (data_ready_w)
               begin
                   // Next CRC start value
                   crc_sum_q          <= crc_out_w;
               end
               // Receive complete
               else if (!rx_active_w)
               begin
                    // If some data received, check CRC
                    if (crc_error_w)
                        status_crc_err_q   <= 1'b1;
                    else
                        status_crc_err_q   <= 1'b0;
               end
            end

            //-----------------------------------------
            // IDLE / RECEIVE BEGIN
            //-----------------------------------------
            STATE_IDLE :
            begin
               // Start transfer request
               if (start_i && !sof_transfer_i)
               begin
                  // Clear error flag!
                  status_crc_err_q  <= 1'b0;
               end
            end
           default :
               ;
        endcase
   end
end

//-----------------------------------------------------------------
// Assignments
//-----------------------------------------------------------------
wire [15:0] token_rev_w;

genvar i;
generate
for (i=0; i < 16; i=i+1) 
begin : LOOP
    assign token_rev_w[i] = token_q[15-i];
end
endgenerate

reg       utmi_txvalid_r;
reg [7:0] utmi_data_r;

always @ *
begin
    if (state_q == STATE_TX_CRC1)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = crc_sum_q[7:0] ^ 8'hFF;
    end
    else if (state_q == STATE_TX_CRC2)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = crc_sum_q[15:8] ^ 8'hFF;
    end
    else if (state_q == STATE_TX_TOKEN1)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = token_pid_i;
    end
    else if (state_q == STATE_TX_TOKEN2)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = token_rev_w[7:0];
    end
    else if (state_q == STATE_TX_TOKEN3)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = token_rev_w[15:8];
    end
    else if (state_q == STATE_TX_PID)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = send_data1_q ? PID_DATA1 : PID_DATA0;
    end
    else if (state_q == STATE_TX_ACKNAK)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = PID_ACK;
    end
    else if (state_q == STATE_TX_DATA)
    begin
        utmi_txvalid_r = 1'b1;
        utmi_data_r    = tx_data_i;
    end
    else
    begin
        utmi_txvalid_r = 1'b0;
        utmi_data_r    = 8'b0;
    end
end

assign utmi_txvalid_o = utmi_txvalid_r;
assign utmi_data_o    = utmi_data_r;

// Push incoming data into FIFO (not PID or CRC)
assign rx_data_o    = rx_data_w;
assign rx_push_o    = (state_q != STATE_IDLE && state_q != STATE_RX_WAIT) & data_ready_w & !crc_byte_w;

assign crc_data_in_w = (state_q == STATE_RX_DATA) ? rx_data_w : tx_data_i;

assign rx_count_o   = byte_count_q;
assign idle_o       = (state_q == STATE_IDLE);

assign ack_o        = start_ack_q;

assign tx_pop_o     = state_q == STATE_TX_DATA && utmi_txready_i;

assign tx_done_o    = status_tx_done_q;
assign rx_done_o    = status_rx_done_q;
assign crc_err_o    = status_crc_err_q;
assign timeout_o    = status_timeout_q;
assign response_o   = status_response_q;



endmodule