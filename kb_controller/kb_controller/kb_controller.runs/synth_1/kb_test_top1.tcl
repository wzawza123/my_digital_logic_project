# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_param simulator.modelsimInstallPath F:/modeltech_pe_10.4c/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/kb_controller/kb_controller.cache/wt [current_project]
set_property parent.project_path D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/kb_controller/kb_controller.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/src/kb_driver.v
  D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/src/test_top.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/kb_controller/kb_controller.srcs/constrs_1/new/kb_top_test.xdc
set_property used_in_implementation false [get_files D:/wza/vivado_program_files/project_for_digital_logic/kb_controller/kb_controller/kb_controller.srcs/constrs_1/new/kb_top_test.xdc]


synth_design -top kb_test_top1 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef kb_test_top1.dcp

catch { report_utilization -file kb_test_top1_utilization_synth.rpt -pb kb_test_top1_utilization_synth.pb }
