if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name VTLib\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_typical.lib]
create_rc_corner -name VRCCorner\
   -cap_table ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary.cap\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name VDCCorner\
   -library_set VTLib\
   -rc_corner VRCCorner
create_constraint_mode -name VSDC\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name VView1 -constraint_mode VSDC -delay_corner VDCCorner
set_analysis_view -setup [list VView1] -hold [list VView1]
