
################################################################
# This is a generated script based on design: Demo_7Seg
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Demo_7Seg_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name Demo_7Seg

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set AN0 [ create_bd_port -dir O AN0 ]
  set BI_RBO [ create_bd_port -dir IO BI_RBO ]
  set DP [ create_bd_port -dir I DP ]
  set GND [ create_bd_port -dir I GND ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set clk_in [ create_bd_port -dir I clk_in ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]

  # Create instance: BCD2SEG7_0, and set properties
  set BCD2SEG7_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:BCD2SEG7:1.0 BCD2SEG7_0 ]

  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:clk_div:1.0 clk_div_0 ]
  set_property -dict [ list \
CONFIG.N {99999999} \
 ] $clk_div_0

  # Create instance: decimal_counter_0, and set properties
  set decimal_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:decimal_counter:1.0 decimal_counter_0 ]

  # Create port connections
  connect_bd_net -net BCD2SEG7_0_a [get_bd_ports a] [get_bd_pins BCD2SEG7_0/a]
  connect_bd_net -net BCD2SEG7_0_b [get_bd_ports b] [get_bd_pins BCD2SEG7_0/b]
  connect_bd_net -net BCD2SEG7_0_c [get_bd_ports c] [get_bd_pins BCD2SEG7_0/c]
  connect_bd_net -net BCD2SEG7_0_d [get_bd_ports d] [get_bd_pins BCD2SEG7_0/d]
  connect_bd_net -net BCD2SEG7_0_e [get_bd_ports e] [get_bd_pins BCD2SEG7_0/e]
  connect_bd_net -net BCD2SEG7_0_f [get_bd_ports f] [get_bd_pins BCD2SEG7_0/f]
  connect_bd_net -net BCD2SEG7_0_g [get_bd_ports g] [get_bd_pins BCD2SEG7_0/g]
  connect_bd_net -net DP_1 [get_bd_ports DP] [get_bd_pins BCD2SEG7_0/LT_n] [get_bd_pins BCD2SEG7_0/RBI_n]
  connect_bd_net -net GND_1 [get_bd_ports AN0] [get_bd_ports GND] [get_bd_pins decimal_counter_0/R0_1] [get_bd_pins decimal_counter_0/R0_2] [get_bd_pins decimal_counter_0/R9_1] [get_bd_pins decimal_counter_0/R9_2]
  connect_bd_net -net Net [get_bd_ports BI_RBO] [get_bd_pins BCD2SEG7_0/BI_RBO_n]
  connect_bd_net -net clk_div_0_clk_out [get_bd_pins clk_div_0/clk_out] [get_bd_pins decimal_counter_0/CP1_n]
  connect_bd_net -net clk_in_1 [get_bd_ports clk_in] [get_bd_pins clk_div_0/clk_in]
  connect_bd_net -net decimal_counter_0_Qa [get_bd_pins BCD2SEG7_0/BCD_A] [get_bd_pins decimal_counter_0/CP2_n] [get_bd_pins decimal_counter_0/Qa]
  connect_bd_net -net decimal_counter_0_Qb [get_bd_pins BCD2SEG7_0/BCD_B] [get_bd_pins decimal_counter_0/Qb]
  connect_bd_net -net decimal_counter_0_Qc [get_bd_pins BCD2SEG7_0/BCD_C] [get_bd_pins decimal_counter_0/Qc]
  connect_bd_net -net decimal_counter_0_Qd [get_bd_pins BCD2SEG7_0/BCD_D] [get_bd_pins decimal_counter_0/Qd]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port GND -pg 1 -y 150 -defaultsOSRD
preplace port DP -pg 1 -y 50 -defaultsOSRD
preplace port clk_in -pg 1 -y 100 -defaultsOSRD
preplace port a -pg 1 -y 40 -defaultsOSRD
preplace port b -pg 1 -y 60 -defaultsOSRD
preplace port AN0 -pg 1 -y 250 -defaultsOSRD
preplace port c -pg 1 -y 80 -defaultsOSRD
preplace port BI_RBO -pg 1 -y 180 -defaultsOSRD
preplace port d -pg 1 -y 100 -defaultsOSRD
preplace port e -pg 1 -y 120 -defaultsOSRD
preplace port f -pg 1 -y 140 -defaultsOSRD
preplace port g -pg 1 -y 160 -defaultsOSRD
preplace inst decimal_counter_0 -pg 1 -lvl 2 -y 150 -defaultsOSRD
preplace inst BCD2SEG7_0 -pg 1 -lvl 3 -y 110 -defaultsOSRD
preplace inst clk_div_0 -pg 1 -lvl 1 -y 100 -defaultsOSRD
preplace netloc decimal_counter_0_Qa 1 1 2 180 40 360
preplace netloc decimal_counter_0_Qb 1 2 1 N
preplace netloc decimal_counter_0_Qc 1 2 1 380
preplace netloc BCD2SEG7_0_a 1 3 1 NJ
preplace netloc GND_1 1 0 4 NJ 150 180 250 NJ 250 NJ
preplace netloc decimal_counter_0_Qd 1 2 1 370
preplace netloc BCD2SEG7_0_b 1 3 1 NJ
preplace netloc DP_1 1 0 3 NJ 50 NJ 50 350
preplace netloc BCD2SEG7_0_c 1 3 1 NJ
preplace netloc clk_in_1 1 0 1 NJ
preplace netloc BCD2SEG7_0_d 1 3 1 NJ
preplace netloc clk_div_0_clk_out 1 1 1 N
preplace netloc BCD2SEG7_0_e 1 3 1 NJ
preplace netloc BCD2SEG7_0_f 1 3 1 NJ
preplace netloc Net 1 3 1 NJ
preplace netloc BCD2SEG7_0_g 1 3 1 NJ
levelinfo -pg 1 0 100 270 460 560 -top 0 -bot 270
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


