%include 'in_out.asm'
SECTION .data
msg1: DB 'наименьшее значение: ', 0h
A dd 82
B dd 61
C dd 59
SECTION .bss
min resb 10
SECTION .text 
GLOBAL _start 
_start:
mov eax, [A]
mov [min],eax
mov ebx, [B]
mov ecx, [C]
cmp eax,ebx; сравниваю а и б
jl aaa
mov [min],ebx
aaa:
mov ebx, [min]
cmp ebx,ecx
jl fff 
mov [min],ecx
fff:
mov eax,msg1 
call sprint 
mov eax, [min] 
call iprintLF
call quit