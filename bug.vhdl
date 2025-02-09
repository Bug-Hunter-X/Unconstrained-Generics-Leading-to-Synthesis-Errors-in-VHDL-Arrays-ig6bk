In VHDL, a subtle error can occur when using generics with arrays.  If a generic is used to define the size of an array, and that generic is not properly constrained, the synthesis tool might not correctly infer the array bounds, leading to unexpected behavior or synthesis failures.

For example:

```vhdl
generic (DATA_WIDTH : integer := 8);

type data_array is array (0 to DATA_WIDTH-1) of std_logic_vector(7 downto 0);
signal my_array : data_array;
```

If `DATA_WIDTH` is not constrained to a specific range (e.g., `DATA_WIDTH : integer range 1 to 1024`), the synthesizer may assume an unbounded array size, causing problems.  This is particularly tricky because the code might compile without errors but fail during synthesis or simulation.