LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE WORK.MY.ALL;

ENTITY TUT2 IS
PORT (
SW: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--HEX2: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
CLOCK_50: IN STD_LOGIC
);
END TUT2;


ARCHITECTURE MAIN OF TUT2 IS
SIGNAL NUMBER: INTEGER RANGE 0 TO 9:=0;
BEGIN
NUMBER <= TO_INTEGER(UNSIGNED(SW(2 DOWNTO 0)));

HEX0 <= INT_TO_7SEG(NUMBER);
END MAIN;