/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
// Add BSP header files
#include <stdlib.h>  // Standard C functions, e.g. exit()
#include <stdbool.h> // Provides a Boolean data type for ANSI/ISO-C
#include "xparameters.h" // Parameter definitions for processor periperals
#include "xscugic.h"     // Processor interrupt controller device driver
#include "xexample.h"   // Device driver for HLS HW block
#include "xil_cache.h"
int main() {
	init_platform();
	Xil_DCacheDisable();
	print("Program to test communication with Example block in PL\n\r");

	for (int i = 0; i < 50; i++)
		Xil_Out32(XPAR_PS7_DDR_0_S_AXI_BASEADDR + i * 4, i);
	//Setup the matrix mult

	XExample example;
	XExample_Config *ConfigPtr;

	ConfigPtr = XExample_LookupConfig(XPAR_EXAMPLE_0_DEVICE_ID);

	if (!ConfigPtr) {
		printf("ERROR: Lookup of accelerator configuration failed.\n\r");
		return XST_FAILURE;
	}

	printf("Initialize the Device\n");
	long status = XExample_CfgInitialize(&example, ConfigPtr);
	if (status != XST_SUCCESS) {
		printf("ERROR: Could not initialize accelerator.\n\r");
		return (-1);
	}

	//set the input parameters of the HLS block
	XExample_Set_a(&example, XPAR_PS7_DDR_0_S_AXI_BASEADDR);

	XExample_Start(&example);
	while (XExample_IsDone(&example) == 0)
		;

	//call the software version of the function
	for (int i = 0; i < 50; ++i) {
		printf("%4ld ", Xil_In32(XPAR_PS7_DDR_0_S_AXI_BASEADDR + i * 4));
	}
	printf("\n\r");
	cleanup_platform();
	return 0;
}
