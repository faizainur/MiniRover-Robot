#include "stdutils.h"
#include <at89x52.h>

#define CPU_CLOCK 11.0592u

#define GET_TH1_VAL_9600 0x0FDu
#define GET_TH1_VAL_4800 0x0FAu
#define GET_TH1_VAL_2400 0x0F4u
#define GET_TH1_VAL_1200 0x0E8u


void serial_begin(uint32_t baudrate);
void serial_println(char *data);
char rx_char();
void tx_char(char data);
void tx_string(char *data);
uint8_t rx_string(char *data);
