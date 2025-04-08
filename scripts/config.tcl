# config
set _vivado_version "2021.1"

set _proj_name project

set _fpgapart xczu9eg-ffvb1156-2-i

set _bd_name design_1

set _top ${_bd_name}_wrapper

set _tb_top ${_bd_name}_wrapper

set _jobs 8

# relative to xci file path: src/ip/*.xci
set _ip_gen_path "../../proj/$_proj_name/$_proj_name.gen/ip"


# file
set _hdf_path "../hw_handoff/"

set _archive_path "../release/"

set _bd_script "../src/bd/$_bd_name.tcl"

set _hdl_files {
    ../src/hdl/top.v
}

set _ip_files {
    ../src/ip/foo.xci
}

set _sim_files {
    ../src/sim/tb_foo.v
}

set _constr_files {
    ../src/constraints/top.xdc
}

set _ip_repo_paths {
    ../repo/foo
}
