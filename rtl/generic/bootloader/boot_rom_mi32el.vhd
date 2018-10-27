library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.boot_block_pack.all;

package boot_rom_mi32el is

constant boot_rom_mi32el : boot_block_type := (
x"25", x"F8", x"00", x"00", x"25", x"F8", x"00", x"00",
x"04", x"00", x"00", x"08", x"10", x"80", x"1D", x"3C",
x"E8", x"FF", x"BD", x"27", x"03", x"00", x"02", x"24",
x"14", x"00", x"BF", x"AF", x"80", x"FB", x"02", x"AC",
x"FE", x"FF", x"02", x"24", x"F0", x"FF", x"02", x"AC",
x"25", x"20", x"00", x"00", x"57", x"00", x"00", x"0C",
x"00", x"02", x"05", x"24", x"0F", x"80", x"02", x"3C",
x"FE", x"81", x"42", x"34", x"00", x"00", x"44", x"90",
x"55", x"00", x"03", x"24", x"12", x"00", x"83", x"14",
x"AA", x"00", x"03", x"24", x"01", x"00", x"44", x"90",
x"0F", x"00", x"83", x"14", x"00", x"00", x"00", x"00",
x"0E", x"FE", x"43", x"90", x"0D", x"FE", x"44", x"90",
x"00", x"1A", x"03", x"00", x"21", x"18", x"64", x"00",
x"00", x"10", x"04", x"24", x"08", x"00", x"64", x"14",
x"00", x"00", x"00", x"00", x"11", x"FE", x"45", x"90",
x"10", x"FE", x"42", x"90", x"00", x"2A", x"05", x"00",
x"21", x"28", x"A2", x"00", x"02", x"00", x"A2", x"28",
x"14", x"00", x"40", x"10", x"00", x"2B", x"05", x"00",
x"E4", x"00", x"00", x"0C", x"00", x"00", x"00", x"00",
x"77", x"00", x"00", x"0C", x"00", x"00", x"00", x"00",
x"25", x"08", x"40", x"00", x"00", x"80", x"04", x"3C",
x"10", x"00", x"05", x"3C", x"24", x"E8", x"44", x"00",
x"04", x"00", x"A0", x"13", x"00", x"40", x"02", x"24",
x"00", x"00", x"40", x"BC", x"FE", x"FF", x"40", x"14",
x"FC", x"FF", x"42", x"24", x"25", x"F8", x"00", x"00",
x"08", x"00", x"20", x"00", x"25", x"E8", x"A5", x"03",
x"14", x"00", x"BF", x"8F", x"08", x"00", x"E0", x"03",
x"18", x"00", x"BD", x"27", x"00", x"02", x"04", x"24",
x"57", x"00", x"00", x"0C", x"00", x"FE", x"A5", x"24",
x"10", x"00", x"03", x"3C", x"20", x"00", x"02", x"3C",
x"01", x"00", x"63", x"24", x"20", x"00", x"05", x"24",
x"43", x"23", x"02", x"00", x"10", x"FF", x"04", x"A0",
x"2A", x"20", x"43", x"00", x"08", x"00", x"80", x"10",
x"00", x"00", x"00", x"00", x"01", x"FB", x"04", x"80",
x"01", x"00", x"84", x"30", x"04", x"00", x"80", x"10",
x"00", x"00", x"00", x"00", x"00", x"FB", x"04", x"80",
x"DB", x"FF", x"85", x"10", x"00", x"00", x"00", x"00",
x"FF", x"FF", x"42", x"24", x"F3", x"FF", x"40", x"14",
x"43", x"23", x"02", x"00", x"0F", x"80", x"02", x"3C",
x"D9", x"FF", x"00", x"10", x"00", x"80", x"42", x"34",
x"01", x"FB", x"02", x"80", x"01", x"00", x"42", x"30",
x"FD", x"FF", x"40", x"10", x"00", x"00", x"00", x"00",
x"00", x"FB", x"02", x"80", x"08", x"00", x"E0", x"03",
x"FF", x"00", x"42", x"30", x"E0", x"FF", x"BD", x"27",
x"14", x"00", x"B0", x"AF", x"25", x"80", x"80", x"00",
x"40", x"FB", x"04", x"24", x"1C", x"00", x"BF", x"AF",
x"18", x"00", x"B1", x"AF", x"95", x"01", x"00", x"0C",
x"25", x"88", x"A0", x"00", x"0B", x"00", x"05", x"24",
x"8E", x"01", x"00", x"0C", x"40", x"FB", x"04", x"24",
x"25", x"28", x"00", x"00", x"8E", x"01", x"00", x"0C",
x"40", x"FB", x"04", x"24", x"02", x"2A", x"10", x"00",
x"8E", x"01", x"00", x"0C", x"40", x"FB", x"04", x"24",
x"25", x"28", x"00", x"02", x"8E", x"01", x"00", x"0C",
x"40", x"FB", x"04", x"24", x"FF", x"00", x"05", x"24",
x"8E", x"01", x"00", x"0C", x"40", x"FB", x"04", x"24",
x"1C", x"00", x"BF", x"8F", x"14", x"00", x"B0", x"8F",
x"25", x"30", x"20", x"02", x"0F", x"80", x"05", x"3C",
x"18", x"00", x"B1", x"8F", x"00", x"80", x"A5", x"34",
x"40", x"FB", x"04", x"24", x"72", x"01", x"00", x"08",
x"20", x"00", x"BD", x"27", x"D0", x"FF", x"BD", x"27",
x"24", x"00", x"B5", x"AF", x"20", x"00", x"B4", x"AF",
x"1C", x"00", x"B3", x"AF", x"18", x"00", x"B2", x"AF",
x"2C", x"00", x"BF", x"AF", x"28", x"00", x"B6", x"AF",
x"14", x"00", x"B1", x"AF", x"10", x"00", x"B0", x"AF",
x"91", x"00", x"12", x"24", x"A1", x"00", x"13", x"24",
x"B0", x"00", x"14", x"24", x"B1", x"00", x"15", x"24",
x"82", x"12", x"16", x"00", x"50", x"00", x"00", x"0C",
x"10", x"FF", x"02", x"A0", x"37", x"00", x"52", x"10",
x"92", x"00", x"43", x"2C", x"0F", x"00", x"60", x"10",
x"81", x"00", x"03", x"24", x"26", x"00", x"43", x"10",
x"90", x"00", x"03", x"24", x"22", x"00", x"43", x"10",
x"80", x"00", x"03", x"24", x"F5", x"FF", x"43", x"14",
x"82", x"12", x"16", x"00", x"04", x"00", x"03", x"24",
x"50", x"00", x"00", x"0C", x"00", x"B2", x"16", x"00",
x"FF", x"FF", x"63", x"24", x"FC", x"FF", x"60", x"14",
x"21", x"B0", x"56", x"00", x"ED", x"FF", x"00", x"10",
x"82", x"12", x"16", x"00", x"43", x"00", x"53", x"10",
x"00", x"00", x"00", x"00", x"A2", x"00", x"43", x"2C",
x"05", x"00", x"60", x"10", x"A0", x"00", x"03", x"24",
x"E5", x"FF", x"43", x"14", x"25", x"18", x"00", x"00",
x"28", x"00", x"00", x"10", x"25", x"80", x"00", x"00",
x"3D", x"00", x"54", x"10", x"00", x"00", x"00", x"00",
x"DF", x"FF", x"55", x"14", x"2C", x"00", x"BF", x"8F",
x"25", x"10", x"C0", x"02", x"24", x"00", x"B5", x"8F",
x"28", x"00", x"B6", x"8F", x"20", x"00", x"B4", x"8F",
x"1C", x"00", x"B3", x"8F", x"18", x"00", x"B2", x"8F",
x"14", x"00", x"B1", x"8F", x"10", x"00", x"B0", x"8F",
x"08", x"00", x"E0", x"03", x"30", x"00", x"BD", x"27",
x"D3", x"FF", x"00", x"10", x"25", x"88", x"C0", x"02",
x"25", x"18", x"00", x"02", x"04", x"00", x"02", x"24",
x"03", x"2E", x"03", x"00", x"01", x"FB", x"04", x"80",
x"04", x"00", x"84", x"30", x"FD", x"FF", x"80", x"14",
x"00", x"00", x"00", x"00", x"00", x"FB", x"05", x"A0",
x"FF", x"FF", x"42", x"24", x"F8", x"FF", x"40", x"14",
x"00", x"1A", x"03", x"00", x"C7", x"FF", x"00", x"10",
x"82", x"12", x"16", x"00", x"C4", x"FF", x"00", x"10",
x"25", x"80", x"C0", x"02", x"21", x"10", x"10", x"02",
x"C2", x"87", x"10", x"00", x"50", x"00", x"00", x"0C",
x"25", x"80", x"02", x"02", x"21", x"20", x"76", x"00",
x"00", x"00", x"82", x"A0", x"21", x"80", x"50", x"00",
x"01", x"00", x"63", x"24", x"F7", x"FF", x"71", x"14",
x"82", x"12", x"16", x"00", x"B9", x"FF", x"00", x"10",
x"00", x"00", x"00", x"00", x"21", x"10", x"10", x"02",
x"C2", x"87", x"10", x"00", x"25", x"80", x"02", x"02",
x"21", x"10", x"76", x"00", x"00", x"00", x"42", x"80",
x"01", x"FB", x"04", x"80", x"04", x"00", x"84", x"30",
x"FD", x"FF", x"80", x"14", x"00", x"00", x"00", x"00",
x"00", x"FB", x"02", x"A0", x"21", x"80", x"02", x"02",
x"01", x"00", x"63", x"24", x"F3", x"FF", x"71", x"14",
x"82", x"12", x"16", x"00", x"A9", x"FF", x"00", x"10",
x"00", x"00", x"00", x"00", x"25", x"80", x"00", x"00",
x"FA", x"FF", x"00", x"10", x"25", x"18", x"00", x"00",
x"9D", x"01", x"00", x"0C", x"25", x"20", x"C0", x"02",
x"A2", x"FF", x"00", x"10", x"82", x"12", x"16", x"00",
x"F8", x"FF", x"BD", x"27", x"6D", x"33", x"0B", x"3C",
x"3E", x"20", x"0A", x"3C", x"25", x"48", x"00", x"00",
x"04", x"00", x"B1", x"AF", x"00", x"00", x"B0", x"AF",
x"25", x"28", x"00", x"00", x"25", x"10", x"00", x"00",
x"0D", x"0A", x"6B", x"25", x"32", x"6C", x"4A", x"25",
x"FF", x"FF", x"0C", x"24", x"00", x"08", x"0D", x"3C",
x"01", x"00", x"0E", x"24", x"03", x"00", x"0F", x"24",
x"53", x"00", x"18", x"24", x"25", x"30", x"00", x"00",
x"25", x"18", x"60", x"01", x"25", x"20", x"60", x"00",
x"01", x"FB", x"03", x"80", x"04", x"00", x"63", x"30",
x"FD", x"FF", x"60", x"14", x"00", x"00", x"00", x"00",
x"00", x"FB", x"04", x"A0", x"03", x"1A", x"04", x"00",
x"25", x"38", x"66", x"00", x"2C", x"00", x"E0", x"10",
x"25", x"20", x"40", x"01", x"F6", x"FF", x"60", x"14",
x"25", x"20", x"60", x"00", x"0D", x"00", x"19", x"24",
x"FF", x"00", x"07", x"24", x"FF", x"FF", x"04", x"24",
x"02", x"00", x"08", x"24", x"03", x"8A", x"05", x"00",
x"2A", x"00", x"81", x"04", x"00", x"00", x"00", x"00",
x"00", x"48", x"02", x"40", x"24", x"18", x"4D", x"00",
x"02", x"00", x"60", x"10", x"C3", x"84", x"02", x"00",
x"FF", x"00", x"03", x"24", x"FF", x"00", x"46", x"30",
x"FF", x"00", x"10", x"32", x"2A", x"30", x"06", x"02",
x"1E", x"00", x"C0", x"10", x"00", x"00", x"00", x"00",
x"0F", x"00", x"63", x"38", x"10", x"FF", x"03", x"A0",
x"01", x"FB", x"03", x"80", x"01", x"00", x"63", x"30",
x"EF", x"FF", x"60", x"10", x"00", x"00", x"00", x"00",
x"00", x"FB", x"03", x"80", x"19", x"00", x"81", x"04",
x"F6", x"FF", x"66", x"24", x"10", x"00", x"78", x"10",
x"00", x"00", x"00", x"00", x"51", x"00", x"6C", x"10",
x"00", x"00", x"B0", x"8F", x"D3", x"FF", x"79", x"10",
x"20", x"00", x"66", x"28", x"E3", x"FF", x"C0", x"14",
x"25", x"10", x"00", x"00", x"01", x"FB", x"02", x"80",
x"04", x"00", x"42", x"30", x"FD", x"FF", x"40", x"14",
x"00", x"00", x"00", x"00", x"00", x"FB", x"03", x"A0",
x"DD", x"FF", x"00", x"10", x"03", x"8A", x"05", x"00",
x"CB", x"FF", x"00", x"10", x"FF", x"FF", x"06", x"24",
x"25", x"10", x"00", x"00", x"D7", x"FF", x"00", x"10",
x"25", x"20", x"00", x"00", x"E3", x"FF", x"00", x"10",
x"F0", x"00", x"63", x"38", x"E2", x"FF", x"00", x"10",
x"10", x"FF", x"11", x"A0", x"04", x"00", x"C6", x"2C",
x"CD", x"FF", x"C0", x"14", x"00", x"81", x"02", x"00",
x"61", x"00", x"62", x"28", x"05", x"00", x"40", x"14",
x"41", x"00", x"66", x"28", x"E0", x"FF", x"63", x"24",
x"C9", x"FF", x"62", x"24", x"04", x"00", x"00", x"10",
x"25", x"10", x"50", x"00", x"D0", x"FF", x"62", x"24",
x"FB", x"FF", x"C0", x"10", x"25", x"10", x"50", x"00",
x"01", x"00", x"84", x"24", x"15", x"00", x"8E", x"14",
x"F9", x"FF", x"43", x"24", x"03", x"00", x"63", x"2C",
x"0D", x"00", x"60", x"10", x"04", x"00", x"43", x"28",
x"00", x"F0", x"04", x"3C", x"00", x"10", x"05", x"3C",
x"24", x"E8", x"24", x"01", x"00", x"80", x"02", x"34",
x"00", x"00", x"40", x"BC", x"FE", x"FF", x"40", x"14",
x"FC", x"FF", x"42", x"24", x"25", x"F8", x"00", x"00",
x"08", x"00", x"20", x"01", x"21", x"E8", x"A5", x"03",
x"B4", x"FF", x"00", x"10", x"25", x"10", x"00", x"00",
x"FD", x"FF", x"60", x"10", x"00", x"00", x"00", x"00",
x"21", x"10", x"42", x"00", x"FA", x"FF", x"00", x"10",
x"05", x"00", x"47", x"24", x"04", x"00", x"8F", x"14",
x"06", x"00", x"E3", x"28", x"21", x"10", x"42", x"00",
x"F5", x"FF", x"00", x"10", x"21", x"40", x"02", x"01",
x"A9", x"FF", x"60", x"14", x"03", x"8A", x"05", x"00",
x"05", x"00", x"87", x"14", x"00", x"00", x"00", x"00",
x"A4", x"FF", x"20", x"15", x"25", x"28", x"40", x"00",
x"A2", x"FF", x"00", x"10", x"25", x"48", x"40", x"00",
x"2A", x"18", x"E4", x"00", x"A0", x"FF", x"60", x"10",
x"03", x"8A", x"05", x"00", x"01", x"00", x"83", x"30",
x"9D", x"FF", x"60", x"10", x"2A", x"18", x"88", x"00",
x"9B", x"FF", x"60", x"10", x"00", x"00", x"00", x"00",
x"00", x"00", x"A2", x"A0", x"97", x"FF", x"00", x"10",
x"01", x"00", x"A5", x"24", x"04", x"00", x"B1", x"8F",
x"08", x"00", x"E0", x"03", x"08", x"00", x"BD", x"27",
x"0D", x"00", x"C0", x"10", x"FF", x"00", x"02", x"24",
x"00", x"00", x"82", x"A0", x"00", x"00", x"83", x"8C",
x"00", x"01", x"62", x"30", x"FD", x"FF", x"40", x"10",
x"25", x"10", x"00", x"00", x"FF", x"FF", x"C6", x"24",
x"FF", x"00", x"07", x"24", x"02", x"12", x"02", x"00",
x"00", x"1E", x"03", x"00", x"04", x"00", x"C0", x"14",
x"25", x"10", x"43", x"00", x"00", x"00", x"A2", x"AC",
x"08", x"00", x"E0", x"03", x"00", x"00", x"00", x"00",
x"00", x"00", x"87", x"A0", x"03", x"00", x"C3", x"30",
x"03", x"00", x"60", x"14", x"00", x"00", x"00", x"00",
x"00", x"00", x"A2", x"AC", x"04", x"00", x"A5", x"24",
x"00", x"00", x"83", x"8C", x"00", x"01", x"68", x"30",
x"FD", x"FF", x"00", x"11", x"00", x"00", x"00", x"00",
x"EE", x"FF", x"00", x"10", x"FF", x"FF", x"C6", x"24",
x"00", x"00", x"85", x"A0", x"00", x"00", x"82", x"8C",
x"00", x"01", x"43", x"30", x"FD", x"FF", x"60", x"10",
x"FF", x"00", x"42", x"30", x"08", x"00", x"E0", x"03",
x"00", x"00", x"00", x"00", x"80", x"00", x"02", x"24",
x"01", x"00", x"82", x"A0", x"00", x"00", x"82", x"8C",
x"00", x"01", x"42", x"30", x"FD", x"FF", x"40", x"10",
x"00", x"00", x"00", x"00", x"08", x"00", x"E0", x"03",
x"00", x"00", x"00", x"00", x"E0", x"FF", x"BD", x"27",
x"14", x"00", x"B0", x"AF", x"1C", x"00", x"BF", x"AF",
x"18", x"00", x"B1", x"AF", x"25", x"80", x"80", x"00",
x"00", x"80", x"11", x"40", x"02", x"24", x"11", x"00",
x"E8", x"03", x"05", x"24", x"C8", x"01", x"00", x"0C",
x"FF", x"0F", x"84", x"30", x"42", x"2F", x"11", x"00",
x"25", x"20", x"40", x"00", x"FE", x"01", x"00", x"0C",
x"01", x"00", x"A5", x"24", x"0F", x"00", x"03", x"3C",
x"41", x"42", x"63", x"24", x"2A", x"18", x"03", x"02",
x"25", x"88", x"40", x"00", x"04", x"00", x"60", x"14",
x"25", x"10", x"00", x"02", x"0A", x"00", x"05", x"24",
x"FE", x"01", x"00", x"0C", x"25", x"20", x"00", x"02",
x"80", x"22", x"02", x"00", x"FE", x"01", x"00", x"0C",
x"E8", x"03", x"05", x"24", x"80", x"22", x"02", x"00",
x"FE", x"01", x"00", x"0C", x"25", x"28", x"20", x"02",
x"0F", x"00", x"03", x"3C", x"41", x"42", x"63", x"24",
x"2A", x"80", x"03", x"02", x"04", x"00", x"00", x"16",
x"01", x"00", x"42", x"24", x"80", x"18", x"02", x"00",
x"21", x"10", x"62", x"00", x"21", x"10", x"42", x"00",
x"02", x"FB", x"02", x"A4", x"1C", x"00", x"BF", x"8F",
x"18", x"00", x"B1", x"8F", x"14", x"00", x"B0", x"8F",
x"08", x"00", x"E0", x"03", x"20", x"00", x"BD", x"27",
x"25", x"10", x"00", x"00", x"03", x"00", x"A0", x"14",
x"01", x"00", x"A3", x"30", x"08", x"00", x"E0", x"03",
x"00", x"00", x"00", x"00", x"02", x"00", x"60", x"10",
x"00", x"00", x"00", x"00", x"21", x"10", x"44", x"00",
x"42", x"28", x"05", x"00", x"F7", x"FF", x"00", x"10",
x"21", x"20", x"84", x"00", x"01", x"00", x"C2", x"30",
x"08", x"00", x"40", x"10", x"2B", x"10", x"A4", x"00",
x"C3", x"1F", x"05", x"00", x"C3", x"17", x"04", x"00",
x"26", x"28", x"A3", x"00", x"26", x"20", x"82", x"00",
x"23", x"28", x"A3", x"00", x"23", x"20", x"82", x"00",
x"2B", x"10", x"A4", x"00", x"0D", x"00", x"40", x"10",
x"01", x"00", x"03", x"24", x"05", x"00", x"A0", x"1C",
x"25", x"10", x"00", x"00", x"0B", x"00", x"00", x"10",
x"2B", x"38", x"85", x"00", x"05", x"00", x"A0", x"18",
x"00", x"00", x"00", x"00", x"21", x"28", x"A5", x"00",
x"2B", x"10", x"A4", x"00", x"FB", x"FF", x"40", x"14",
x"21", x"18", x"63", x"00", x"0F", x"00", x"60", x"10",
x"00", x"00", x"00", x"00", x"25", x"10", x"00", x"00",
x"2B", x"38", x"85", x"00", x"03", x"00", x"E0", x"14",
x"00", x"00", x"00", x"00", x"23", x"20", x"85", x"00",
x"25", x"10", x"43", x"00", x"42", x"18", x"03", x"00",
x"F9", x"FF", x"60", x"14", x"42", x"28", x"05", x"00",
x"02", x"00", x"C6", x"30", x"06", x"00", x"C0", x"14",
x"00", x"00", x"00", x"00", x"08", x"00", x"E0", x"03",
x"00", x"00", x"00", x"00", x"02", x"00", x"C6", x"30",
x"FC", x"FF", x"C0", x"10", x"25", x"10", x"00", x"00",
x"08", x"00", x"E0", x"03", x"25", x"10", x"80", x"00",
x"D3", x"01", x"00", x"08", x"25", x"30", x"00", x"00",
	others => (others => '0')
    );

end boot_rom_mi32el;
