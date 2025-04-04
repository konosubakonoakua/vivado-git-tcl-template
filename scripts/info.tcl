# config
set _vivado_version "2021.1"

set _proj_name prj

set _fpgapart xc7z100ffg900-2

set _bd_name design_1

set _top ${_bd_name}_wrapper

set _tb_top ${_bd_name}_wrapper

set _jobs 8


# file
set _hdf_path "../hw_handoff/"

set _archive_path "../release/"

set _bd_script "../src/bd/$_bd_name.tcl"

set _hdl_files {
    ../src/hdl/top.v
    ../src/hdl/foo.v
}

set _ip_files {
    ../src/ip/foo.xci
    ../src/ip/bar.xci
}

set _sim_files {
    ../src/sim/tb_foo.v
}

set _constr_files {
    ../src/constraints/top.xdc
    ../src/constraints/foo.xdc
}

set _ip_repo_paths {
    ../repo/foo
    ../repo/bar
}
