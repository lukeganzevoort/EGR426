# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.cache/wt [current_project]
set_property parent.project_path C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci
set_property is_locked true [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1 -new_name map_walls -ip [get_ips map_walls]]

if { $cached_ip eq {} } {

synth_design -top map_walls -part xc7a35tcpg236-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix map_walls_ map_walls.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ map_walls_stub.v
 lappend ipCachedFiles map_walls_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ map_walls_stub.vhdl
 lappend ipCachedFiles map_walls_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ map_walls_sim_netlist.v
 lappend ipCachedFiles map_walls_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ map_walls_sim_netlist.vhdl
 lappend ipCachedFiles map_walls_sim_netlist.vhdl

 config_ip_cache -add -dcp map_walls.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips map_walls]
}

rename_ref -prefix_all map_walls_

write_checkpoint -force -noxdef map_walls.dcp

catch { report_utilization -file map_walls_utilization_synth.rpt -pb map_walls_utilization_synth.pb }

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


}; # end if cached_ip 

add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.v -of_objects [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.vhdl -of_objects [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.v -of_objects [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.vhdl -of_objects [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

add_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls.dcp -of_objects [get_files C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.srcs/sources_1/ip/map_walls/map_walls.xci]

if {[file isdir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls]} {
  catch { 
    file copy -force C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.v C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls
  }
}

if {[file isdir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls]} {
  catch { 
    file copy -force C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_sim_netlist.vhdl C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls
  }
}

if {[file isdir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls]} {
  catch { 
    file copy -force C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.v C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls
  }
}

if {[file isdir C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls]} {
  catch { 
    file copy -force C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.runs/map_walls_synth_1/map_walls_stub.vhdl C:/Users/Luke/Documents/EGR426/Project02_all_together/theseus.ip_user_files/ip/map_walls
  }
}
