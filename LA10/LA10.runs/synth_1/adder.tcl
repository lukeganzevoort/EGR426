# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Luke/Documents/EGR426/LA10/LA10.cache/wt [current_project]
set_property parent.project_path C:/Users/Luke/Documents/EGR426/LA10/LA10.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Luke/Documents/EGR426/LA10/LA10.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Luke/Documents/EGR426/LA10/LA10.srcs/sources_1/new/CGEN.vhd
  C:/Users/Luke/Documents/EGR426/LA10/LA10.srcs/sources_1/new/adder.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top adder -part xc7a35tcpg236-1


write_checkpoint -force -noxdef adder.dcp

catch { report_utilization -file adder_utilization_synth.rpt -pb adder_utilization_synth.pb }