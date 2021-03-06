# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\dianhsu\Desktop\axi-demo\demo1\vitis\zed_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\dianhsu\Desktop\axi-demo\demo1\vitis\zed_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zed_platform}\
-hw {C:\Users\dianhsu\Desktop\axi-demo\demo1\vivado\demo1\demo1_db_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/dianhsu/Desktop/axi-demo/demo1/vitis}

platform write
platform generate -domains 
platform active {zed_platform}
platform generate
catch {platform remove zed_hw}
domain create -name {linux} -os {linux} -proc {ps7_cortexa9} -arch {32-bit} -display-name {linux} -desc {} -runtime {cpp}
platform write
domain config -image {}
domain -report -json
platform write
domain config -runtime {cpp}
platform write
domain config -bootmode {sd}
platform write
platform generate -domains 
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
platform active {zed_platform}
domain remove linux
platform generate -domains 
platform write
domain create -name {linux_domain} -os {linux} -proc {ps7_cortexa9} -arch {32-bit} -display-name {linux_application_domain} -desc {} -runtime {cpp}
platform write
domain config -image {}
platform write
domain -report -json
domain config -runtime {cpp}
platform write
domain config -bootmode {sd}
platform write
platform generate -domains 
domain config -boot {C:\Users\dianhsu\Desktop\linux}
platform write
domain config -image {C:\Users\dianhsu\Desktop\linux}
platform write
platform generate -domains 
domain config -bif {C:\Users\dianhsu\Desktop\axi-demo\demo1\vitis\test_system\_ide\bootimage\test_system.bif}
platform write
platform generate -domains 
platform active {zed_platform}
domain active {zynq_fsbl}
bsp reload
domain active {linux_domain}
library -lib-path {C:\Users\dianhsu\Desktop\axi-demo\demo1\vitis\test_system\_ide\bootimage\writebif.log} -inc-path {}
platform write
library -lib-path {} -inc-path {}
platform write
platform generate -domains 
platform generate
platform generate
