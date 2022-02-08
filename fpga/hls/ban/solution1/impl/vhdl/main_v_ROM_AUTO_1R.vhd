-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity main_v_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 5; 
             AddressRange    : integer := 20
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of main_v_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111110011111111101010110", 
    1 => "00111110100100110111010000110110", 
    2 => "00111110000100101010101000011010", 
    3 => "00111111011010000000010000001010", 
    4 => "00111110111111001001000100010001", 
    5 => "00111111011110010000100001000001", 
    6 => "00111110110101101100110100101010", 
    7 => "00111111011101000111011111111000", 
    8 => "00111101101101011111000100010101", 
    9 => "00111111010111100000000011100111", 
    10 => "00111111001100110001010101011010", 
    11 => "00111110000101100010100010011000", 
    12 => "00111110010111010011101011000000", 
    13 => "00111111000100100011001011110111", 
    14 => "00111110000100110110001011001010", 
    15 => "00111011011101101110111111001101", 
    16 => "00111110101110010011001001110111", 
    17 => "00111111000100010000001010110101", 
    18 => "00111110110111000101001111100011", 
    19 => "00111110010110101010100001111100" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

