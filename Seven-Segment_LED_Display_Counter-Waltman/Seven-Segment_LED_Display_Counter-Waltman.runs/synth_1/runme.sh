#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/2025.1/Vitis/bin;C:/2025.1/Vivado/ids_lite/ISE/bin/nt64;C:/2025.1/Vivado/ids_lite/ISE/lib/nt64:C:/2025.1/Vivado/bin
else
  PATH=C:/2025.1/Vitis/bin;C:/2025.1/Vivado/ids_lite/ISE/bin/nt64;C:/2025.1/Vivado/ids_lite/ISE/lib/nt64:C:/2025.1/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='C:/Mac/Home/Documents/GitHub/EE410-Advanced_Digital_Systems/Seven-Segment_LED_Display_Counter-Waltman/Seven-Segment_LED_Display_Counter-Waltman.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log pmod_ssd.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source pmod_ssd.tcl
