
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Ec551_Lab1 -dir "X:/Ec551_Lab1/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top Full_add $srcset
set_property target_constrs_file "Full_add.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Add_half_0_delay.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Full_add.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {Full_add.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
