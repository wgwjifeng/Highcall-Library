; Hc/NtUserSetGestureConfig
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserSetGestureConfig:DWORD

.DATA
.CODE

HcUserSetGestureConfig PROC
	mov r10, rcx
	mov eax, sciUserSetGestureConfig
	syscall
	ret
HcUserSetGestureConfig ENDP

ELSE
; 32bit

EXTERNDEF C sciUserSetGestureConfig:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserSetGestureConfig PROC
	mov eax, sciUserSetGestureConfig
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
HcUserSetGestureConfig ENDP

ENDIF

END