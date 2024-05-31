# Nexys A7 projects

Project for the Digilent Nexus A7 development board (Xilinx/AMD Artix-7-100T).\
Projects written with free software Vivado using VHDL (no Verilog).

## Setup the project

Download and install Xilinx/AMD Vivado ML (standard edition is free, but requires and account).

### Add the board in Vivado:

* Menu: Tool -> Vivado store
* Tab: Boards
* Click refresh to update the boards
* Instal: Digilent Nexus A7-100T

### Create project:

* Menu: File -> Project -> New
* Enter project name and location
* Select RTL project
* Select board: Nexys A7-100T
* Finish
* Project settings:
  * Target language: VHDL
* Add the constraints file to the project:
  * Menu: File -> Add sources
  * Add or create contraints
  * Add files
  * Select the nexys_a7_100t.xdc from this repo
  * Check: Copy contraints file into project
  * Finish

### Programming the flash

* Enable generate bin file in Bitstream Settings
* Add the following lines to the project XDC file to speed up loading of the bit file (if not there already):
  * set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
  * set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
* Add the flash to the hardware manager:
  * Flash: s25fl128sxxxxxx0-spi-x1_x2_x4

## Links

* https://github.com/Digilent
* https://digilent.com/reference/programmable-logic/nexys-a7/start
* https://digilent.com/shop/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/
* https://www.xilinx.com/developer/products/vivado.html
