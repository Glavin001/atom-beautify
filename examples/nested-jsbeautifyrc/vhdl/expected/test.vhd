library ieee;
use ieee.std_logic_1164.all;
entity test is
  port(
    clk : in  std_logic;
    d   : in  std_logic;
    q   : out std_logic);
end test;
architecture rtl of test is
begin
  process (clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end;
end rtl;
