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
        padrao  : in std_logic_vector(7 downto 0);
        prog    : in std_logic_vector(2 downto 0);

        dout    :out std_logic;
        alarme  :out std_logic;
        numero  : out std_logic_vector(1 downto 0)

        );
end entity; 

--------------------------------------
-- Arquitetura
--------------------------------------
architecture tp3 of tp3 is
  type state is (idle, registrando_padroes, buscando, blocked, resetting);
  signal EA, PE: state;
  signal alarme_int, found: std_logic;
  signal data: std_logic_vector(7 downto 0);
  signal numero_int:std_logic_vector(3 downto 0);
  signal program:std_logic_vector(3 downto 0);
  signal match:std_logic_vector(3 downto 0);
  
  signal sel:std_logic_vector(3 downto 0):=(others=>'0');
  
 
begin  

  -- REGISTRADOR DE DESLOCAMENTO QUE RECEBE O FLUXO DE ENTRADA

  -- 4 PORT MAPS PARA OS ompara_dado  
    compara_dado_0: entity work.compara_dado
    port map(
      clock   => clock,
      reset   => reset,
      dado    => data,
      pattern => padrao,
      prog    => program(0),
      habilita=> sel(0),
      match   => match(0)
    );

    compara_dado_1: entity work.compara_dado
    port map(
      clock   => clock,
      reset   => reset,
      dado    => data,
      pattern => padrao,
      prog    => program(1),
      habilita=> sel(1),
      match   => match(1)
    );
    compara_dado_2: entity work.compara_dado
    port map(
      clock   => clock,
      reset   => reset,
      dado    => data,
      pattern => padrao,
      prog    => program(2),
      habilita=> sel(2),
      match   => match(2)
    );
    compara_dado_3: entity work.compara_dado
    port map(
      clock   => clock,
      reset   => reset,
      dado    => data,
      pattern => padrao,
      prog    => program(3),
      habilita=> sel(3),
      match   => match(3)
    );
  -- found   <=  . . . 

  program(0) <= '1' when (EA = registrando_padroes and prog = "001") else '0';
  program(1) <= '1' when (EA = registrando_padroes and prog = "010") else '0';
  program(2) <= '1' when (EA = registrando_padroes and prog = "011") else '0';
  program(3) <= '1' when (EA = registrando_padroes and prog = "100") else '0';
  
  --  registradores para ativar as comparações
  process(clock, reset, EA) begin
    if reset = '1' then
      sel(0)<= '0';
    elsif rising_edge(clock) then
      if EA = registrando_padroes and prog = "001" then
        sel(0)<='1';
      elsif EA = registrando_padroes and prog = "010" then
        sel(1)<='1';
      elsif EA = registrando_padroes and prog = "011" then
       sel(2)<='1';
      elsif EA = registrando_padroes and prog = "100" then
       sel(3)<='1';
      end if;
    end if;
  end process;
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
            elsif prog = "001" or prog = "010" or prog = "011" or prog = "100" then
                PE <= registrando_padroes;
            else
                PE <= EA;
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
            else
              PE <= EA;
            end if;
---------------------------------------------------------------------
        when blocked =>
            if prog = "110" then
              PE <= buscando;
            elsif prog = "111" then
              PE <= resetting;
            else
              PE <= EA;
            end if;
--------------------------------------------------------------------
        when resetting =>
            PE <= idle;
    end case;
  end process FSM_cases;



  -- SAIDAS
  -- alarme <= . . . 
  -- dout   <= . . . 
  -- numero <=  . . . 

end architecture;