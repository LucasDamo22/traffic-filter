-------------------------------------------
-- MODLO COMPARA DADO  -  MORAES 16/MAIO/23
-------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity compara_dado is 
  port (clock    : in std_logic;
        reset    : in std_logic;
        
        dado     : in std_logic_vector(7 downto 0);
        pattern  : in std_logic_vector(7 downto 0);
        prog     : in std_logic;
        habilita : in std_logic;

        match    :out std_logic
      );
end compara_dado; 

architecture a1 of compara_dado is
signal reg_padrao: std_logic_vector(7 downto 0):=(others=>'0');
signal en: std_logic:='0';
signal comparador: std_logic:='0';
  
begin
    process(clock)
      begin
        if reset = '1' then 
        reg_padrao <= (others=>'0');
        elsif rising_edge(clock) then
          if prog = '1' then
            reg_padrao <= pattern;
          end if;
          if dado = reg_padrao then
            comparador <='1'; else comparador <= '0';
          end if;
        end if;
    end process;

match <= comparador and habilita;
    

end a1;