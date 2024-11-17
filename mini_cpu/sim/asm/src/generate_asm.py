head = f'''main:   
\tli      x2, 0x20000000          # uart address
\tli      x6,  0x1500             # x6 <== 0x1500, delay 1ms
\taddi    x7, x0, 0               # x7 <== 0\n'''

tail = f'''\nend:    j       end

\tret'''

def generate_assembly_code(message):
    assembly_code = []
    index = 1

    for char in message:
        ascii_value = ord(char)
        hex_value = hex(ascii_value)  # Convert to hexadecimal
        assembly_code.append(\
f'''addi    x5, x0, {hex_value}           # x5 <== "{char}"
\t sw      x5, 0(x2)              # Store x5 at the UART address loaded in x2

delay{index}: addi    x7, x7, 1              # x7 <== x7 + 1
\t bne     x7, x6, delay{index}       # x6 != x7
\t addi    x7, x0, 0             # x7 <== 0
        ''')
        index += 1

    return ' '.join(assembly_code)

message = "Hello! Advantest"
assembly_output = generate_assembly_code(message)
res = head + assembly_output + tail

print(res)
# Write to miniCPU_sim.asm file
with open('sim/asm/src/miniCPU_sim.asm', 'w') as f:
    f.write(res)
