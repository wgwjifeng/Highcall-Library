; Hc/NtUserModifyUserStartupInfoFlags
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserModifyUserStartupInfoFlags:DWORD

.DATA
.CODE

HcUserModifyUserStartupInfoFlags PROC
	mov r10, rcx
	mov eax, sciUserModifyUserStartupInfoFlags
	syscall
	ret
HcUserModifyUserStartupInfoFlags ENDP

ELSE
; 32bit

EXTERNDEF C sciUserModifyUserStartupInfoFlags:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserModifyUserStartupInfoFlags PROC
	mov eax, sciUserModifyUserStartupInfoFlags
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
HcUserModifyUserStartupInfoFlags ENDP

ENDIF

END