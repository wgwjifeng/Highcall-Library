; Hc/NtUserNotifyProcessCreate
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserNotifyProcessCreate:DWORD

.DATA
.CODE

HcUserNotifyProcessCreate PROC
	mov r10, rcx
	mov eax, sciUserNotifyProcessCreate
	syscall
	ret
HcUserNotifyProcessCreate ENDP

ELSE
; 32bit

EXTERNDEF C sciUserNotifyProcessCreate:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserNotifyProcessCreate PROC
	mov eax, sciUserNotifyProcessCreate
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
HcUserNotifyProcessCreate ENDP

ENDIF

END