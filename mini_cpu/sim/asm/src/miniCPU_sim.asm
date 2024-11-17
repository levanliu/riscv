main:   
	li      x2, 0x20000000          # uart address
	li      x6,  0x1500             # x6 <== 0x1500, delay 1ms
	addi    x7, x0, 0               # x7 <== 0
addi    x5, x0, 0x48           # x5 <== "H"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay1: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay1       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x65           # x5 <== "e"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay2: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay2       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x6c           # x5 <== "l"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay3: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay3       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x6c           # x5 <== "l"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay4: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay4       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x6f           # x5 <== "o"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay5: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay5       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x21           # x5 <== "!"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay6: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay6       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x20           # x5 <== " "
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay7: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay7       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x41           # x5 <== "A"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay8: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay8       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x64           # x5 <== "d"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay9: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay9       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x76           # x5 <== "v"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay10: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay10       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x61           # x5 <== "a"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay11: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay11       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x6e           # x5 <== "n"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay12: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay12       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x74           # x5 <== "t"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay13: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay13       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x65           # x5 <== "e"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay14: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay14       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x73           # x5 <== "s"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay15: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay15       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
         addi    x5, x0, 0x74           # x5 <== "t"
	 sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay16: addi    x7, x7, 1              # x7 <== x7 + 1
	 bne     x7, x6, delay16       # x6 != x7
	 addi    x7, x0, 0             # x7 <== 0
        
end:    j       end

	ret