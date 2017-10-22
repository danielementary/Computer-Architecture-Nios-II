library ieee;
use ieee.std_logic_1164.all;

entity logic_unit is
  port(
    a  : in  std_logic_vector(31 downto 0);
    b  : in  std_logic_vector(31 downto 0);
    op : in  std_logic_vector(1 downto 0);
    r  : out std_logic_vector(31 downto 0)
  );
end logic_unit;

architecture synth of logic_unit is
begin

  WITH op SELECT r <= A NOR B WHEN "00",
                      A AND B WHEN "01",
                      A OR B WHEN "10",
                      A XOR B WHEN OTHERS;
                      
end synth;
