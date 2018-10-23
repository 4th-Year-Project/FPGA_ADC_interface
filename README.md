# FPGA_ADC_interface
interface to collect data from ADC and output in a format so can be stored in memory

# System Diagram

# State Diagram

# Good to know
- 3.3v IO Voltage
- Gist of interface
  - CS and RD connect to EOC
  - CONVST pull low to start conversion
  - A0 to A2 put next channel address on bus
  - EOC pulses low to show conversion complete
- [AD7829-1 Data sheet](https://www.analog.com/media/en/technical-documentation/data-sheets/AD7829-1.pdf)

| Pin | Description |
| ------ | ------ |
| CONVST | Logic Input Signal. The convert start signal initiates an 8-bit analog-to-digital conversion on the falling edge of this signal. The falling edge of this signal places the track/hold in hold mode. The track/hold goes into track mode again 120 ns after the start of a conversion. The state of the CONVST signal is checked at the end of a conversion. If it is logic low, the AD7829-1 powers down (see the Operating Modes section). |
| EOC | Logic Output. The end of conversion signal indicates when a conversion has finished. The signal can be used to interrupt a microcontroller when a conversion has finished or latch data into a gate array (see the Parallel Interface section). |
| CS | Logic Input Signal. The chip select signal is used to enable the parallel port of the AD7829. This is necessary if the ADC is sharing a common data bus with another device. |
| RD | Logic Input Signal. The read signal is used to take the output buffers out of their high impedance state and drive data onto the data bus. The signal is internally gated with the CS signal. Both RD and CS must be logic low to enable the data bus. |
| A2 to A0 | Channel Address Inputs. The address of the next multiplexer channel must be present on these inputs when the RD signal goes low. |
| DB7 to DB0 | Data Output Lines. They are normally held in a high impedance state. Data is driven onto the data bus when both RD and CS go active low. |

# To-do

