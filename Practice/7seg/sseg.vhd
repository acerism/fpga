library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

ENTITY SSEG IS
PORT (
KEY: IN STD_LOGIC_VECTOR(1 downto 0);
--HEX0: OUT STD_LOGIC_VECTOR(6 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0)
);
END SSEG;

ARCHITECTURE DISPLAY OF SSEG IS
SIGNAL VALU: INTEGER RANGE 0 TO 9:=0;
BEGIN
LEDR <= STD_LOGIC_VECTOR(to_unsigned(VALU,10));

PROCESS(KEY)
BEGIN

IF(KEY(0)='1')THEN
	IF(VALU = 9)THEN
		VALU <= 0;
	ELSE
		VALU <= VALU + 1;
	END IF;
END IF;

IF(KEY(1)='1')THEN
	IF(VALU = 0)THEN
		VALU <= 9;
	ELSE
		VALU <= VALU - 1;
	END IF;
END IF;
		
END PROCESS;
END DISPLAY;