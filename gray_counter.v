//! Module description 
// documentation
//! ***this is code*** sample
//! | Tables   | Are           | Cool  |
//! |----------|:-------------:|------:|
//! | col 1 is | left-aligned  | $1600 |
//! | col 2 is | centered      | $12   |
//! | col 3 is | right-aligned | $1    |
module gray_counter(
    out   , // counter out
    clk   , //! clock
    clk1  , //! clock sample
    clk2  , //! clock ```comment of code```
    clk3  , //! clock comment
    rst     //! **active high reset**
);
    input clk, clk1, clk2, clk3, rst;
    output [7:0] out;
    wire [7:0] out;
    reg [7:0] count;
endmodule