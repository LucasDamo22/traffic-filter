--------------------------------------
-- TRABALHO TP3 - MORAES  16/MAIO/23
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;


--------------------------------------
-- Entidade
--------------------------------------
entity tp3 is 
  port (clock   : in std_logic;
        reset   : in std_logic;
        din     : in std_logic;
        padrao  : in std_logic_vector(7 downto 0);
        prog    : in std_logic_vector(2 downto 0);

        dout    : out std_logic; 
        alarme  : out std_logic;
        numero  : out std_logic_vector(1 downto 0)
        );
end entity; 

--------------------------------------
-- Arquitetura
--------------------------------------
architecture tp3 of tp3 is
  type state is (idle, registrando_padroes, buscando, blocked, resetting);
  signal EA, PE: state;
  signal match_0,match_1,match_2,match_3, alarme_int, found: std_logic;
  signal numero_int:std_logic_vector(3 downto 0);

  
  
begin  

  -- REGISTRADOR DE DESLOCAMENTO QUE RECEBE O FLUXO DE ENTRADA

  -- 4 PORT MAPS PARA OS ompara_dado  

  -- found   <=  . . . 

  -- program(0) <= . . .
  -- program(1) <= . . .
  -- program(2) <= . . .
  -- program(3) <= . . .
  
  --  registradores para ativar as comparações

  --  registrador para o alarme interno

  ------- MUDANÇAS DA FSM
  FSM_cases: process(clock, reset)
  begin
    if reset = '1' then
            PE <= resetting;
  
    elsif rising_edge(clock) then
      

        case EA is  
        when idle =>
            if unsigned(prog) = 3 then
                PE <= buscando;
            elsif unsigned(prog) >= 1 and unsigned(prog) <= 5 then
                PE <= registrando_padroes;
            else
                PE <= idle;
            end if;
  ---------------------------------------------------------------------            
        when registrando_padroes =>
            PE <=idle;
  ---------------------------------------------------------------------
        when buscando =>
            if prog = "111" then
              PE <= resetting;
            elsif found = '1' then
              PE <= blocked;
            
            end if;
  ---------------------------------------------------------------------
        when blocked =>
            if prog = "110" then
              PE <= buscando;
            elsif prog = "111" then
              PE <= resetting;
            
            end if;
  --------------------------------------------------------------------
        when resetting =>
            PE <= idle;

       end case;


    
      end if;
     


  end process FSM_cases;

process(clock,reset)
begin
  if reset = '1' then
    EA <= resetting;
  elsif rising_edge(clock) then
  EA <= PE;
  end if;
end process;

  -- SAIDAS
  -- alarme <= . . . 
  -- dout   <= . . . 
  -- numero <=  . . . 

end architecture;