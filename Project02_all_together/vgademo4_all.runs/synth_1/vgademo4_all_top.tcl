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
set_property webtalk.parent_dir C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.cache/wt [current_project]
set_property parent.project_path C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_cache_permissions disable [current_project]
add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/typeface.coe
add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/theseus.coe
add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.ip_user_files/mem_init_files/rom.coe
add_files -quiet c:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
set_property used_in_implementation false [get_files c:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
add_files -quiet c:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/rom_chars/rom_chars.dcp
set_property used_in_implementation false [get_files c:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/ip/rom_chars/rom_chars.dcp]
read_vhdl -library xil_defaultlib {
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/character_slide.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/imports/new/MY_CHAR_DRIVER.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/Red_cube.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/Green_cube.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/clk_div_25k.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/imports/new/debounce.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/title_block.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/merge_display.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/vga_controller_640_60.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/static_background.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/Blue_cube.vhd
  C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/sources_1/new/vgademo4_all_top.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/constrs_1/new/vgatop_pins.xdc
set_property used_in_implementation false [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/vgademo4_all.srcs/constrs_1/new/vgatop_pins.xdc]


synth_design -top vgademo4_all_top -part xc7a35tcpg236-1


write_checkpoint -force -noxdef vgademo4_all_top.dcp

catch { report_utilization -file vgademo4_all_top_utilization_synth.rpt -pb vgademo4_all_top_utilization_synth.pb }
