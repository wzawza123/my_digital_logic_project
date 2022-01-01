@echo off
set xv_path=F:\\vivado\\Vivado\\2016.2\\bin
call %xv_path%/xsim program_control_1_tb_time_impl -key {Post-Implementation:sim_1:Timing:program_control_1_tb} -tclbatch program_control_1_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
