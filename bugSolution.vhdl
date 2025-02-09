To fix this, explicitly constrain the generic:

```vhdl
generic (DATA_WIDTH : integer range 1 to 1024 := 8);
type data_array is array (0 to DATA_WIDTH-1) of std_logic_vector(7 downto 0);
signal my_array : data_array;
```

Now, `DATA_WIDTH` is constrained to a range between 1 and 1024 (adjust the range as necessary for your application).  The synthesizer can now correctly infer the array bounds, preventing synthesis errors and ensuring the code behaves as intended.  This constraint provides the synthesizer with sufficient information to determine the exact array size during synthesis.