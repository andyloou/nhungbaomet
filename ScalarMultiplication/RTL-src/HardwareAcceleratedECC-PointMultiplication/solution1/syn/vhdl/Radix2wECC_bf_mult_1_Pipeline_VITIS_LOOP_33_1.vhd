-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Radix2wECC_bf_mult_1_Pipeline_VITIS_LOOP_33_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp_V_12 : IN STD_LOGIC_VECTOR (165 downto 0);
    tmp_V_13_out_i : IN STD_LOGIC_VECTOR (165 downto 0);
    tmp_V_13_out_o : OUT STD_LOGIC_VECTOR (165 downto 0);
    tmp_V_13_out_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Radix2wECC_bf_mult_1_Pipeline_VITIS_LOOP_33_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_A6 : STD_LOGIC_VECTOR (7 downto 0) := "10100110";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv166_lc_2 : STD_LOGIC_VECTOR (165 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_A3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv155_lc_1 : STD_LOGIC_VECTOR (154 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv164_lc_1 : STD_LOGIC_VECTOR (163 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln33_fu_78_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_reg_206 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_Result_20_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_20_reg_214 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_22_fu_183_p4 : STD_LOGIC_VECTOR (165 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal i_14_fu_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_17_fu_84_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln820_fu_90_p1 : STD_LOGIC_VECTOR (165 downto 0);
    signal shl_ln820_fu_94_p2 : STD_LOGIC_VECTOR (165 downto 0);
    signal tmp_fu_100_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_108_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_9_fu_118_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln820_fu_126_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln820_1_fu_130_p8 : STD_LOGIC_VECTOR (163 downto 0);
    signal index_assign_cast_fu_163_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_fu_166_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Repl2_s_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln844_fu_179_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Radix2wECC_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component Radix2wECC_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_14_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln33_fu_78_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_14_fu_54 <= i_17_fu_84_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_14_fu_54 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_206 <= ap_sig_allocacmp_i;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln33_fu_78_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_20_reg_214 <= p_Result_20_fu_148_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    and_ln820_1_fu_130_p8 <= ((((((tmp_fu_100_p3 & ap_const_lv155_lc_1) & tmp_8_fu_108_p4) & ap_const_lv2_0) & tmp_9_fu_118_p3) & ap_const_lv2_0) & trunc_ln820_fu_126_p1);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln33_fu_78_p2)
    begin
        if (((icmp_ln33_fu_78_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_14_fu_54)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_i <= i_14_fu_54;
        end if; 
    end process;

    i_17_fu_84_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv8_1));
    icmp_ln33_fu_78_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv8_A6) else "0";
    index_assign_cast_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_206),32));
    p_Repl2_s_fu_174_p2 <= (p_Result_s_fu_166_p3 xor p_Result_20_reg_214);
    p_Result_20_fu_148_p2 <= "0" when (and_ln820_1_fu_130_p8 = ap_const_lv164_lc_1) else "1";
    
    p_Result_22_fu_183_p4_proc : process(tmp_V_13_out_i, index_assign_cast_fu_163_p1, zext_ln844_fu_179_p1)
    variable result: std_logic_vector(0 downto 0);
    begin
        p_Result_22_fu_183_p4 <= tmp_V_13_out_i;
        if to_integer(unsigned(index_assign_cast_fu_163_p1)) >= tmp_V_13_out_i'low and to_integer(unsigned(index_assign_cast_fu_163_p1)) <= tmp_V_13_out_i'high then
            result(0) := '0';
            for i in zext_ln844_fu_179_p1'range loop
                result(0) := result(0) or zext_ln844_fu_179_p1(i);
            end loop;
            p_Result_22_fu_183_p4(to_integer(unsigned(index_assign_cast_fu_163_p1))) <= result(0);
        end if;
    end process;

    p_Result_s_fu_166_p3 <= tmp_V_13_out_i(to_integer(unsigned(index_assign_cast_fu_163_p1)) downto to_integer(unsigned(index_assign_cast_fu_163_p1))) when (to_integer(unsigned(index_assign_cast_fu_163_p1)) >= 0 and to_integer(unsigned(index_assign_cast_fu_163_p1)) <=165) else "-";
    shl_ln820_fu_94_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv166_lc_2),to_integer(unsigned('0' & zext_ln820_fu_90_p1(31-1 downto 0)))));
    tmp_8_fu_108_p4 <= shl_ln820_fu_94_p2(7 downto 6);
    tmp_9_fu_118_p3 <= shl_ln820_fu_94_p2(3 downto 3);

    tmp_V_13_out_o_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_V_12, tmp_V_13_out_i, p_Result_22_fu_183_p4, ap_block_pp0_stage0, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                tmp_V_13_out_o <= tmp_V_12;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                tmp_V_13_out_o <= p_Result_22_fu_183_p4;
            else 
                tmp_V_13_out_o <= tmp_V_13_out_i;
            end if;
        else 
            tmp_V_13_out_o <= tmp_V_13_out_i;
        end if; 
    end process;


    tmp_V_13_out_o_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, ap_loop_init)
    begin
        if ((((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            tmp_V_13_out_o_ap_vld <= ap_const_logic_1;
        else 
            tmp_V_13_out_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_100_p3 <= shl_ln820_fu_94_p2(163 downto 163);
    trunc_ln820_fu_126_p1 <= shl_ln820_fu_94_p2(1 - 1 downto 0);
    zext_ln820_fu_90_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i),166));
    zext_ln844_fu_179_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Repl2_s_fu_174_p2),32));
end behav;
