transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {c:/altera/13.0sp1/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {c:/altera/13.0sp1/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {c:/altera/13.0sp1/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {c:/altera/13.0sp1/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {c:/altera/13.0sp1/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/cycloneiv_hssi
vmap cycloneiv_hssi ./vhdl_libs/cycloneiv_hssi
vcom -93 -work cycloneiv_hssi {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_hssi_components.vhd}
vcom -93 -work cycloneiv_hssi {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_hssi_atoms.vhd}

vlib vhdl_libs/cycloneiv_pcie_hip
vmap cycloneiv_pcie_hip ./vhdl_libs/cycloneiv_pcie_hip
vcom -93 -work cycloneiv_pcie_hip {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_pcie_hip_components.vhd}
vcom -93 -work cycloneiv_pcie_hip {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_pcie_hip_atoms.vhd}

vlib vhdl_libs/cycloneiv
vmap cycloneiv ./vhdl_libs/cycloneiv
vcom -93 -work cycloneiv {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_atoms.vhd}
vcom -93 -work cycloneiv {c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneiv_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ram.vho}

vcom -93 -work work {C:/fpga_codes/FPGA - 2021-2/slide_5/exer_01/ram/ram_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=ram_vhd.sdo -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  ram_tb

add wave *
view structure
view signals
run -all
