; Hc/NtUserGetWindowCompositionAttribute
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetWindowCompositionAttribute:DWORD

.DATA
.CODE

HcUserGetWindowCompositionAttribute PROC
	mov r10, rcx
	mov eax, sciUserGetWindowCompositionAttribute
	syscall
	ret
HcUserGetWindowCompositionAttribute ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetWindowCompositionAttribute:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetWindowCompositionAttribute PROC
	mov eax, sciUserGetWindowCompositionAttribute
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserGetWindowCompositionAttribute ENDP

ENDIF

END