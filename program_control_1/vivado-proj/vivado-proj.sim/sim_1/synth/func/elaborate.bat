@echo off
set xv_path=F:\\vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto c1ce403156014630bbc868f96409fd62 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot program_control_1_tb_func_synth xil_defaultlib.program_control_1_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0