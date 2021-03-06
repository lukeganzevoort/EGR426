# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ganzevol/Debug/Debug.cache/wt [current_project]
set_property parent.project_path C:/Users/ganzevol/Debug/Debug.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/ganzevol/Debug/Debug.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet c:/Users/ganzevol/Debug/Debug.srcs/sources_1/ip/ila_led/ila_led.dcp
set_property used_in_implementation false [get_files c:/Users/ganzevol/Debug/Debug.srcs/sources_1/ip/ila_led/ila_led.dcp]
read_vhdl -library xil_defaultlib C:/Users/ganzevol/Debug/counter_vhdl.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ganzevol/Debug/counter_pins.xdc
set_property used_in_implementation false [get_files C:/Users/ganzevol/Debug/counter_pins.xdc]


synth_design -top counter_vhdl -part xc7a35tcpg236-1


write_checkpoint -force -noxdef counter_vhdl.dcp

catch { report_utilization -file counter_vhdl_utilization_synth.rpt -pb counter_vhdl_utilization_synth.pb }
