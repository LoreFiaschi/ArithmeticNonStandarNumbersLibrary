-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity main_operator_div_b_num_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 60
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          address1      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DataWidth-1 downto 0);
          address2      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of main_operator_div_b_num_ROM_AUTO_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem0 : mem_array := (
    0 => "11000000111110101001011101111000", 
    1 => "01000001000100011101110100010000", 
    2 => "11000000010101101000101011110000", 
    3 => "11000000111110101001011101111000", 
    4 => "01000000100110001100010001011101", 
    5 => "11000000010101101000101011110000", 
    6 => "01000001000110000101101101010111", 
    7 => "01000000110010110110110110000111", 
    8 => "00111111101101010100000001111001", 
    9 => "10111111101011111010100000101111", 
    10 => "00111111110010001000110010010011", 
    11 => "10111111101001100010000110010110", 
    12 => "11000000101001000010001101100100", 
    13 => "01000000110001000000101101111000", 
    14 => "11000000110011000000010001000011", 
    15 => "01000000001110110011010111111100", 
    16 => "01000000101010001000111011110011", 
    17 => "01000000100000000001001011000010", 
    18 => "01000000001110110011010111111100", 
    19 => "11000001000000010011110001100000", 
    20 => "01000000100000000001001011000010", 
    21 => "01000000101010000101000110000011", 
    22 => "10111111111101100000100010101111", 
    23 => "01000001000011100110111111110010", 
    24 => "11000000100100100111011011110011", 
    25 => "11000000000110000111111111001100", 
    26 => "01000001000100000101101001110001", 
    27 => "11000000100100100111011011110011", 
    28 => "01000000011100000010000111101010", 
    29 => "01000001000100000101101001110001", 
    30 => "01000000101010100001110100101010", 
    31 => "11000000100011000000101101001110", 
    32 => "01000001000101001110110111111010", 
    33 => "01000000101010100001110100101010", 
    34 => "01000000110011001100101100010100", 
    35 => "00111111110101000111001001011100", 
    36 => "01000001000001001010110000010011", 
    37 => "11000000000100101000101000011110", 
    38 => "01000000011000000011101011111011", 
    39 => "01000000110100100101011001011000", 
    40 => "01000000100011001010100011000001", 
    41 => "01000000011111101111111111101011", 
    42 => "01000000110100100101011001011000", 
    43 => "01000000100011001010100011000001", 
    44 => "01000000011111101111111111101011", 
    45 => "11000001000110000000101001010010", 
    46 => "00111111101111010000000100111011", 
    47 => "01000000110011010010010101011011", 
    48 => "11000000111110111000010101001001", 
    49 => "11000000100011110000110100000110", 
    50 => "10111111111100000000101011010000", 
    51 => "10111111110110010001100011010010", 
    52 => "00111111100001000000111100010011", 
    53 => "11000000100111101000101011000110", 
    54 => "10111111110110010001100011010010", 
    55 => "00111111100001000000111100010011", 
    56 => "11000000100111101000101011000110", 
    57 => "11000000111011111110110100111110", 
    58 => "11000000001111000100001100101101", 
    59 => "11000000101110110000100101000010" );
signal mem1 : mem_array := (
    0 => "11000000111110101001011101111000", 
    1 => "01000001000100011101110100010000", 
    2 => "11000000010101101000101011110000", 
    3 => "11000000111110101001011101111000", 
    4 => "01000000100110001100010001011101", 
    5 => "11000000010101101000101011110000", 
    6 => "01000001000110000101101101010111", 
    7 => "01000000110010110110110110000111", 
    8 => "00111111101101010100000001111001", 
    9 => "10111111101011111010100000101111", 
    10 => "00111111110010001000110010010011", 
    11 => "10111111101001100010000110010110", 
    12 => "11000000101001000010001101100100", 
    13 => "01000000110001000000101101111000", 
    14 => "11000000110011000000010001000011", 
    15 => "01000000001110110011010111111100", 
    16 => "01000000101010001000111011110011", 
    17 => "01000000100000000001001011000010", 
    18 => "01000000001110110011010111111100", 
    19 => "11000001000000010011110001100000", 
    20 => "01000000100000000001001011000010", 
    21 => "01000000101010000101000110000011", 
    22 => "10111111111101100000100010101111", 
    23 => "01000001000011100110111111110010", 
    24 => "11000000100100100111011011110011", 
    25 => "11000000000110000111111111001100", 
    26 => "01000001000100000101101001110001", 
    27 => "11000000100100100111011011110011", 
    28 => "01000000011100000010000111101010", 
    29 => "01000001000100000101101001110001", 
    30 => "01000000101010100001110100101010", 
    31 => "11000000100011000000101101001110", 
    32 => "01000001000101001110110111111010", 
    33 => "01000000101010100001110100101010", 
    34 => "01000000110011001100101100010100", 
    35 => "00111111110101000111001001011100", 
    36 => "01000001000001001010110000010011", 
    37 => "11000000000100101000101000011110", 
    38 => "01000000011000000011101011111011", 
    39 => "01000000110100100101011001011000", 
    40 => "01000000100011001010100011000001", 
    41 => "01000000011111101111111111101011", 
    42 => "01000000110100100101011001011000", 
    43 => "01000000100011001010100011000001", 
    44 => "01000000011111101111111111101011", 
    45 => "11000001000110000000101001010010", 
    46 => "00111111101111010000000100111011", 
    47 => "01000000110011010010010101011011", 
    48 => "11000000111110111000010101001001", 
    49 => "11000000100011110000110100000110", 
    50 => "10111111111100000000101011010000", 
    51 => "10111111110110010001100011010010", 
    52 => "00111111100001000000111100010011", 
    53 => "11000000100111101000101011000110", 
    54 => "10111111110110010001100011010010", 
    55 => "00111111100001000000111100010011", 
    56 => "11000000100111101000101011000110", 
    57 => "11000000111011111110110100111110", 
    58 => "11000000001111000100001100101101", 
    59 => "11000000101110110000100101000010" );


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

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;
    end if;
end process;

end rtl;

