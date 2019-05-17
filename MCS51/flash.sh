## Flash hex file to MCU

### 8051
# avrdude -c usbasp  -p 8051 -b 200 -U flash:w:bin/hex/main.ihx:i

### 8052
avrdude -c usbasp  -p 8052 -b 200 -U flash:w:bin/hex/main.ihx:i