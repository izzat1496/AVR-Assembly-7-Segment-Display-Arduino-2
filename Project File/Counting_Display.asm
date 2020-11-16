;In this project, we will create program to display from 00 to 99 by using 7-segment display by using AVR Assembly Languages.
; Created: 10/11/2020 5:12:27 AM

main:

ldi r16, low(RAMEND)   ; set up the stack
out SPL, r16
ldi r16, high(RAMEND)
out SPH, r16

ldi r17, 0xFF          ; load register 16 with 0xFF (all bits 1)
out DDRD, r17          ; set PortD as output

;display for 7segment display
call dispa_0 ;display 0 at segment a
call dispb   ;display 0-9 at segment b
call dispa_1 ;display 1 at segment a
call dispb   ;display 0-9 at segment b
call dispa_2 ;display 2 at segment a
call dispb   ;display 0-9 at segment b
call dispa_3 ;display 3 at segment a
call dispb   ;display 0-9 at segment b
call dispa_4 ;display 4 at segment a
call dispb   ;display 0-9 at segment b
call dispa_5 ;display 5 at segment a
call dispb   ;display 0-9 at segment b
call dispa_6 ;display 6 at segment a
call dispb   ;display 0-9 at segment b
call dispa_7 ;display 7 at segment a
call dispb   ;display 0-9 at segment b
call dispa_8 ;display 8 at segment a
call dispb   ;display 0-9 at segment b
call dispa_9 ;display 9 at segment a
call dispb   ;display 0-9 at segment b

rjmp main    ;jump back to main


dispb: ;subroutine that call other subroutine to display 0-9 at LSB 7 segment

call dispb_0
call dispb_1
call dispb_2
call dispb_3
call dispb_4
call dispb_5
call dispb_6
call dispb_7
call dispb_8
call dispb_9

ret

dispa_9:                ;subroutine to display 9 at MSB 7 segment

sbi PORTD, PIND4
cbi PORTD, PIND5
cbi PORTD, PIND6
sbi PORTD, PIND7

ret

dispa_8:                ;subroutine to display 8 at MSB 7 segment

cbi PORTD, PIND4
cbi PORTD, PIND5
cbi PORTD, PIND6
sbi PORTD, PIND7

ret

dispa_7:                ;subroutine to display 7 at MSB 7 segment

sbi PORTD, PIND4
sbi PORTD, PIND5
sbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_6:                ;subroutine to display 6 at MSB 7 segment
cbi PORTD, PIND4
sbi PORTD, PIND5
sbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_5:                ;subroutine to display 5 at MSB 7 segment
sbi PORTD, PIND4
cbi PORTD, PIND5
sbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_4:                ;subroutine to display 4 at MSB 7 segment

cbi PORTD, PIND4
cbi PORTD, PIND5
sbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_3:                ;subroutine to display 3 at MSB 7 segment
sbi PORTD, PIND4
sbi PORTD, PIND5
cbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_2:                ;subroutine to display 2 at MSB 7 segment

cbi PORTD, PIND4
sbi PORTD, PIND5
cbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_1:                ;subroutine to display 1 at MSB 7 segment
sbi PORTD, PIND4
cbi PORTD, PIND5
cbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispa_0:                ;subroutine to display 0 at MSB 7 segment
cbi PORTD, PIND4
cbi PORTD, PIND5
cbi PORTD, PIND6
cbi PORTD, PIND7

ret

dispb_9:                ;subroutine to display 9 at LSB 7 segment 

sbi PORTD, PIND0
cbi PORTD, PIND1
cbi PORTD, PIND2
sbi PORTD, PIND3

call DELAY_05

ret

dispb_8:                ;subroutine to display 8 at LSB 7 segment 

cbi PORTD, PIND0
cbi PORTD, PIND1
cbi PORTD, PIND2
sbi PORTD, PIND3

call DELAY_05

ret

dispb_7:                ;subroutine to display 7 at LSB 7 segment 

sbi PORTD, PIND0
sbi PORTD, PIND1
sbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_6:                ;subroutine to display 6 at LSB 7 segment 
cbi PORTD, PIND0
sbi PORTD, PIND1
sbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_5:                ;subroutine to display 5 at LSB 7 segment
sbi PORTD, PIND0
cbi PORTD, PIND1
sbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_4:                ;subroutine to display 4 at LSB 7 segment

cbi PORTD, PIND0
cbi PORTD, PIND1
sbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_3:                ;subroutine to display 3 at LSB 7 segment
sbi PORTD, PIND0
sbi PORTD, PIND1
cbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_2:                ;subroutine to display 2 at LSB 7 segment

cbi PORTD, PIND0
sbi PORTD, PIND1
cbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_1:                ;subroutine to display 1 at LSB 7 segment
sbi PORTD, PIND0
cbi PORTD, PIND1
cbi PORTD, PIND2
cbi PORTD, PIND3

call DELAY_05

ret

dispb_0:                ;subroutine to display 0 at LSB 7 segment
cbi PORTD, PIND0
cbi PORTD, PIND1
cbi PORTD, PIND2
cbi PORTD, PIND3
call DELAY_05

ret

DELAY_05:              ;subroutine to delay for 0.5 second
ldi r16, 31          ; load r16 with 31

OUTER_LOOP:            ; outer loop label
ldi r24, low(1021)   ; load registers r24:r25 with 1021, our new
                       ; init value
ldi r25, high(1021)  ; the loop label

DELAY_LOOP:            ; "add immediate to word": r24:r25 are
                       ; incremented
adiw r24, 1          ; if no overflow ("branch if not equal"), go

                       ; back to "delay_loop"
brne DELAY_LOOP
dec r16              ; decrement r16
brne OUTER_LOOP      ; and loop if outer loop not finished

ret                  ; return from subroutine
