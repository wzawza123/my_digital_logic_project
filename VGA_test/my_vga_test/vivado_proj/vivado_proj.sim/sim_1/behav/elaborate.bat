@echo off
set xv_path=F:\\vivado\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 9e2b2ce650e04060894951c0f1be86d7 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot top_behav xil_defaultlib.top xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
