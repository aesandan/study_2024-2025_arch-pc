%include 'in_out.asm'
SECTION .data
msg: DB 'Выражение для вычисления:(12x+3)5. Введите значение x: ',0
rem: DB 'Ответ: ',0
SECTION .bss
x: RESB 80 
SECTION .text 
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov ecx, x 
mov edx, 80 
call sread 
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, "eax=x"
mov ebx, 12 
mul ebx
add eax, 3
mov ecx, 5
mul ecx
mov edi,eax
mov eax,rem
call sprint
mov eax, edi 
call iprintLF
call quit