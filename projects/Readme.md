# cgranja-piscineElec-design – Carte type Pro Mini (ATmega328P)

Petite carte basée sur un **ATmega328P-AU 16 MHz** 

---

## 1. Nomenclature (BOM)

| Référence | Qté | Valeur | Manufacture Part Number | Description | Caracteristiques | Empreinte |
| --- | --- | --- | --- | --- | --- | --- |
| C1,C2 | 2 | 12pF | CL10C120JB8NNNC | Unpolarized capacitor | 50V 12pF C0G ±5% 0603 Ceramic Capacitors RoHS | MyLibraryFootprint:MLF-CapacitorResistor-0603-1608mm |
| C3,C4,C5 | 3 | 100nF | CC0603KRX7R9BB104 | Unpolarized capacitor | 50V 100nF X7R ±10% 0603 Ceramic Capacitors RoHS | MyLibraryFootprint:MLF-CapacitorResistor-0603-1608mm |
| C6 | 1 | 1uF | CL10A105KB8NNNC | Unpolarized capacitor | 50V 1uF X5R ±10% 0603 Ceramic Capacitors RoHS | MyLibraryFootprint:MLF-CapacitorResistor-0603-1608mm |
| D1 | 1 | Green | TZ-P2-0603YGTCS1-0.6T | Light eminiting diode | 20mA 50mcd 570nm~575nm Yellow Green 1.9V~2.4V 60mW 0603 LED Indication - Discrete RoHS | MyLibraryFootprint:MLF-LED-0603-1608mm |
| D2 | 1 | Red | XL-1608SURC-06 | Light eminiting diode | 20mA 225mcd op View Mount 620nm~630nm Red 2.3V 50mW 0603 LED Indication - Discrete RoHS | MyLibraryFootprint:MLF-LED-0603-1608mm |
| J1 | 1 | ~ | | Header 1×12 (I/O) | | MyLibraryFootprint:MLF-J |
| J2 | 1 | ~ |  |Header 1×12 (I/O) | | MyLibraryFootprint:MLF-J2 |
| J3 | 1 | FTDI | | Header 1×6 (FTDI) | | MyLibraryFootprint:MLF-J3 |
| R1 | 1 | 33Ω | 0603WAF3300T5E |Resistor (LED SCK) | 100mW 330Ω 75V ±100ppm/℃ Thick Film Resistor ±1% 0603 Chip Resistor - Surface Mount RoHS | MyLibraryFootprint:MLF-CapacitorResistor-0603-1608mm |
| R2,R3 | 2 | 10K | RC0603FR-0710KL | Resistor (pull-up RST / DTR) | 100mW 10kΩ 75V ±100ppm/℃ Thick Film Resistor ±1% 0603 Chip Resistor - Surface Mount RoHS | MyLibraryFootprint:MLF-CapacitorResistor-0603-1608mm |
| SW1 | 1 | SW_Push | B3U-1000P | Bouton poussoir RESET | 12V 2.5mm Round Button 3mm SPST 50mA SMD,3x2.5mm Tactile Switches RoHS | MyLibraryFootprint:MLF-Switch_button_B3U-1000P |
| U1 | 1 | ATmega328P-A | ATMEGA328P-AU | MCU TQFP-32 16 MHz | AVR 20MHz 23 TQFP-32(7x7) Microcontrollers RoHS | MyLibraryFootprint:MLF-ATmega328P-AU-32Av3 |
| Y1 | 1 | 16MHz | X322516MLB4SI | Quartz 4 broches (GND sur 2 et 4) | Crystal Oscillator 9pF SMD3225-4P Crystals RoHS | MyLibraryFootprint:MLF-Crystal |

---

## 2. Brochage (pinout)


### 2.1 J3 – Connecteur FTDI (programmation série)

Connecteur 1×6, compatible FTDI standard Pro Mini. De **GND** vers **DTR** 
6. GND  
5. GND / CTS (suivant le module FTDI)  
4. VCC (5 V)  
3. RXI (vers D0 du µC)  
2. TXO (depuis D1 du µC)  
1. DTR (reset auto via condensateur vers RESET)

---

### 2.2 J2 – (alimentation / analog / SPI)

Connecteur 1×12, de haut en bas : 

1. **RAW** – entrée VIN non régulée (5–12 V)  
2. **GND** – masse  
3. **RST** – reset actif bas  
4. **VCC** – 5 V régulé  
5. **A3** – PC3 / ADC3  
6. **A2** – PC2 / ADC2  
7. **A1** – PC1 / ADC1  
8. **A0** – PC0 / ADC0  
9. **D13 / SCK** – PB5, SPI clock, LED verte D1  
10. **D12 / MISO** – PB4, SPI MISO  
11. **D11 / MOSI** – PB3, SPI MOSI  
12. **D10 / SS** – PB2, SPI SS / PWM

---

### 2.3 J2 – (UART / GPIO numériques)

Connecteur 1×12, de haut en bas :

12. **TXO / D1** – PD1, UART TX  
11. **RXI / D0** – PD0, UART RX  
10. **RST** – reset  
9. **GND** – masse  
8. **D2** – PD2, INT0  
7. **D3** – PD3, INT1 / PWM  
6. **D4** – PD4  
5. **D5** – PD5, PWM  
4. **D6** – PD6, PWM  
3. **D7** – PD7  
2. **D8** – PB0  
1. **D9** – PB1, PWM

Les entrées analogiques supplémentaires **A4–A7** sont connectées directement aux broches correspondantes du microcontrôleur (A4/A5 pour I²C, A6/A7 uniquement analogiques).  


