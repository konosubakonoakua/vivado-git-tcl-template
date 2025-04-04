@echo off
set VIVADO_PATH="C:\Xilinx\Vivado\2021.1\bin\vivado.bat"

set TCL_SCRIPT="create.tcl"

if not exist %VIVADO_PATH% (
    echo Vivado not found, please check VIVADO_PATH.
    pause
    exit /b 1
)

if not exist %TCL_SCRIPT% (
    echo TCL script not found, please check TCL_SCRIPT.
    pause
    exit /b 1
)

%VIVADO_PATH% -mode gui -source %TCL_SCRIPT%

pause
