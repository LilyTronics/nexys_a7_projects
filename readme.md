# Nexys A7 projects

Project for the Digilent Nexus A7 development board (Xilinx/AMD Artix-7-100T).\
Projects written with free software Vivado using VHDL (no Verilog).

## Setup the project

Download and install Xilinx/AMD Vivado ML Standard (standard edition is free, but requires and account).

### Add the board in Vivado:

* Menu: Tools -> Vivado store
* Tab: Boards
* Click the refresh button to update the boards
* Install: Digilent Nexys A7-100T

### Create project:

* Menu: File -> Project -> New
* Enter project name and location
* Select RTL project
* Select board: Nexys A7-100T
* Finish
* Open project settings
  * General:
    * Target language: VHDL
  * Bitstream
    * Enable -bin_file
* Open the hardware manager
  * Connect to the hardware
  * Add the flash program memory:
    * Click 'Add Configuration Memory Device' in the project tree
    * Select: s25fl128sxxxxxx0-spi-x1_x2_x4
    * Click OK
* Add the constraints file to the project:
  * Menu: File -> Add sources
  * Add or create contraints
  * Add files (click the plus button)
  * Select the nexys_a7_100t.xdc from this repo
  * Check: Copy contraints file into project
  * Finish
  * Add the following lines to the project XDC file to speed up loading of the bit file (if not there already):
    * set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
    * set_property BITSTREAM.GENERAL.COMPRESS true [current_design]

## Links

* https://github.com/Digilent
* https://digilent.com/reference/programmable-logic/nexys-a7/start
* https://digilent.com/shop/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/
* https://www.xilinx.com/developer/products/vivado.html

