--------------------------------------
-- TRABALHO TP3 - MORAES  16/MAIO/23
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity tp3 is 
  port (clock   : in std_logic;
        reset   : in std_logic;
        din     : in std_logic;
        padrao  : in std_logic(7 downto 0);
        prog    : in std_logic_vector(2 downto 0);
        );
end entity; 

--------------------------------------
-- Arquitetura
--------------------------------------
architecture tp3 of tp3 is
  type state is (idle, registrando_padroes, buscando, blocked, resetting);
  signal EA, PE: state;
  signal match_0,match_1,match_2,match_3, alarme_int, found:= std_logic = '0';
  signal numero_int:=std_logic_vector(3 downto 0);
  
  . . . 
begin  

  -- REGISTRADOR DE DESLOCAMENTO QUE RECEBE O FLUXO DE ENTRADA

  -- 4 PORT MAPS PARA OS ompara_dado  

  found   <=  . . . 

  program(0) <= . . .
  program(1) <= . . .
  program(2) <= . . .
  program(3) <= . . .
  
  --  registradores para ativar as comparações

  --  registrador para o alarme interno

  -- MAQUINA DE ESTADOS (FSM)
  FSM: process(clock)
  begin
    if rising_edge(clock) then
      if reset = '1' then
        EA <= resetting;
      else
      EA <= PE;
      end if;
    end if;
  end process FSM;

  ------- MUDANÇAS DA FSM
  FSM_cases: process(prog, EA)
  begin
    case EA is  
        when idle =>
            if prog = "101" then
                PE <= buscando;
            elsif prog = "001" or "010" or "011" or "100" then
                PE <= registrando_padroes;
            else
                PE <= EA;
            end if;
---------------------------------------------------------------------            
        when registrando_padroes then
            PE <=idle;
---------------------------------------------------------------------
        when buscando then
            if prog = "111" then
              PE <= resetting;
            elsif found = '1' then
              PE <= blocked;
            else
              PE <= EA;
            end if;
---------------------------------------------------------------------
        when blocked then
            if prog = "110" then
              PE <= buscando;
            elsif prog = "111" then
              PE <= resetting;
            else
              PE <= EA;
            end if;
--------------------------------------------------------------------
        when resetting then
            PE <= idle;
    end case;
  end process FSM_cases;

  -- SAIDAS
  alarme <= . . . 
  dout   <= . . . 
  numero <=  . . . 

end architecture;