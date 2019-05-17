## Flash hex file to MCU
avrdude -c usbasp  -p 8052 -b 200 -U flash:w:bin/hex/main.ihx:i