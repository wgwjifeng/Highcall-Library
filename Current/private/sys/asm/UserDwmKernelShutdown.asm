; Hc/NtUserDwmKernelShutdown
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDwmKernelShutdown:DWORD

.DATA
.CODE

HcUserDwmKernelShutdown PROC
	mov r10, rcx
	mov eax, sciUserDwmKernelShutdown
	syscall
	ret
HcUserDwmKernelShutdown ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDwmKernelShutdown:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDwmKernelShutdown PROC
	mov eax, sciUserDwmKernelShutdown
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
HcUserDwmKernelShutdown ENDP

ENDIF

END