----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2025 01:58:14
-- Design Name: 
-- Module Name: HA_DataFlow - DataFlow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HA_DataFlow is
Port ( a: in std_logic;
       b: in std_logic;
       sum: out std_logic;
       cout: out std_logic );
end HA_DataFlow;

architecture DataFlow of HA_DataFlow is

begin
sum <= a xor b;
cout <= a and b;

end DataFlow;
