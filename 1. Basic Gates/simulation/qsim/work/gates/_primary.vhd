library verilog;
use verilog.vl_types.all;
entity gates is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic;
        f               : out    vl_logic;
        h               : out    vl_logic;
        k               : out    vl_logic
    );
end gates;
