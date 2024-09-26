MCU = atmega32
FREQ = 16000000UL
FILE = m32
APN = m32

default:
	avr-gcc -v -Wall -Os -DF_CPU=$(FREQ) -mmcu=$(MCU) -c -o obj.o $(FILE).c
	avr-gcc -v -Wall -o $(FILE).bin obj.o
	avr-objcopy -v -O ihex -R .eeprom $(FILE).bin $(FILE)_firmware.hex

flash:
	avrdude -F -V -c usbasp -p $(APN) -B 10 -P usb -U flash:w:$(FILE).hex -vvv

read:
	avrdude -F -V -c usbasp -p $(APN) -P usb -U flash:r:$(FILE)_dump.bin:r -vvv
	avr-objcopy -v -O ihex -R .eeprom $(FILE)_dump.bin $(FILE)_dump.hex
	

erase:
	avrdude -F -V -c usbasp -p $(APN) -B 10 -P usb -e -vvv
