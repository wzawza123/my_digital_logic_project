@echo off
set xv_path=F:\\vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto e9127ddbdadd47eeaba062e2af3fe03a -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_behav xil_defaultlib.top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
