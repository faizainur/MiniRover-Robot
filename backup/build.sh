## Empty bin folder
rm -rf *

## Compile Dependencies
sdcc -mmcs51 --std-c11 -c src/libs/delay.c -o bin/
sdcc -mmcs51 --std-c11 -c src/libs/lcd.c -o bin/

## Compile main file
sdcc -mmcs51 --std-c11 -c src/main.c -o bin/

## Run linker to generate hex file
sdcc bin/main.rel bin/delay.rel bin/lcd.rel

## Flash hex file to MCU
avrdude -c usbasp  -p 8051 -b 200 -U flash:w:main.ihx:i