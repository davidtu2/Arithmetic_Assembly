TITLE Homework 3              (David Tu_Homework 3_Visual Studio 2013_ver1.asm)

; This program calculates the following expression: ((A+B)-(C+D)+C)
; using 32-bit hexidecimal numbers
; David Tu
; Creation Date: 2/25/2016
; Revisions: Version 1
; Date: 2/25/2016
; Modified By: 2/26/2016

INCLUDE Irvine32.inc

.data
finalVal DWORD ?

.code
main PROC
	mov eax, 4000h		; EAX = 4000h
	mov ebx, 1000h		; EBX = 1000h
	mov ecx, 3000h		; ECX = 3000h
	mov edx, 1500h		; EDX = 1500h

	add ebx, eax		; EBX = 5000h, EAX = 4000h
	add edx, ecx		; EDX = 4500h, ECX = 3000h

	sub ebx, edx		; EBX = 0B00h, EDX = 4500h
	add ebx, ecx		; EBX = 3B00h, ECX = 3000h

	mov finalVal, ebx	; finalVal = 3B00h

	call	DumpRegs

	exit
main ENDP
END main