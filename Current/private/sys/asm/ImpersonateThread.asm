; Hc/NtImpersonateThread
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciImpersonateThread:DWORD

.DATA
.CODE

HcImpersonateThread PROC
	mov r10, rcx
	mov eax, sciImpersonateThread
	syscall
	ret
HcImpersonateThread ENDP

ELSE
; 32bit

EXTERNDEF C sciImpersonateThread:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcImpersonateThread PROC
	mov eax, sciImpersonateThread
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
HcImpersonateThread ENDP

ENDIF

END