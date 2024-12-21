%include 'in_out.asm'
SECTION .data
msg1 db "Функция: f(x)=3x-1", 0 
msg2 db "Результат: ", 0
SECTION .text
GLOBAL _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi, 0

next:
cmp ecx,0h
jz _end
pop eax
call atoi

mov ebx, eax
add eax, ebx 
add eax, ebx
sub eax,1

add esi, eax
loop next
_end:
mov eax, msg1
call sprintLF
mov eax, msg2
call sprint
mov eax, esi
call iprintLF 
call quit