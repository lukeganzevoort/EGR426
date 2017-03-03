proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.cache/wt [current_project]
  set_property parent.project_path C:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.xpr [current_project]
  set_property ip_output_repo C:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet C:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.runs/synth_1/vgademo1_bars_top.dcp
  add_files -quiet c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells inst c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc C:/Users/Luke/Documents/EGR426/Project02_theseus_and_the_minotaur/static_background_proj_2.srcs/constrs_1/new/vgatop_pins.xdc
  link_design -top vgademo1_bars_top -part xc7a35tcpg236-1
  write_hwdef -file vgademo1_bars_top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force vgademo1_bars_top_opt.dcp
  report_drc -file vgademo1_bars_top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force vgademo1_bars_top_placed.dcp
  report_io -file vgademo1_bars_top_io_placed.rpt
  report_utilization -file vgademo1_bars_top_utilization_placed.rpt -pb vgademo1_bars_top_utilization_placed.pb
  report_control_sets -verbose -file vgademo1_bars_top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force vgademo1_bars_top_routed.dcp
  report_drc -file vgademo1_bars_top_drc_routed.rpt -pb vgademo1_bars_top_drc_routed.pb -rpx vgademo1_bars_top_drc_routed.rpx
  report_methodology -file vgademo1_bars_top_methodology_drc_routed.rpt -rpx vgademo1_bars_top_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file vgademo1_bars_top_timing_summary_routed.rpt -rpx vgademo1_bars_top_timing_summary_routed.rpx
  report_power -file vgademo1_bars_top_power_routed.rpt -pb vgademo1_bars_top_power_summary_routed.pb -rpx vgademo1_bars_top_power_routed.rpx
  report_route_status -file vgademo1_bars_top_route_status.rpt -pb vgademo1_bars_top_route_status.pb
  report_clock_utilization -file vgademo1_bars_top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force vgademo1_bars_top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  catch { write_mem_info -force vgademo1_bars_top.mmi }
  write_bitstream -force -no_partial_bitfile vgademo1_bars_top.bit 
  catch { write_sysdef -hwdef vgademo1_bars_top.hwdef -bitfile vgademo1_bars_top.bit -meminfo vgademo1_bars_top.mmi -file vgademo1_bars_top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

