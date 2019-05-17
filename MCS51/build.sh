## Empty bin folder
rm -rf bin/*
mkdir bin/hex
## Compile Dependencies
sdcc -mmcs51 --std-c11 -c src/libs/delay.c -o bin/
sdcc -mmcs51 --std-c11 -c src/libs/lcd.c -o bin/
sdcc -mmcs51 --std-c11 -c src/libs/uart.c -o bin/
sdcc -mmcs51 --std-c11 -c src/libs/hcsr04.c -o bin/

## Compile main file
sdcc -mmcs51 --std-c11 -c src/main.c -o bin/

## Run linker to generate hex file
sdcc bin/main.rel bin/delay.rel bin/lcd.rel bin/uart.rel bin/hcsr04.rel -o bin/hex/

