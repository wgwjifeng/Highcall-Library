; Hc/NtUserBuildPropList
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserBuildPropList:DWORD

.DATA
.CODE

HcUserBuildPropList PROC
	mov r10, rcx
	mov eax, sciUserBuildPropList
	syscall
	ret
HcUserBuildPropList ENDP

ELSE
; 32bit

EXTERNDEF C sciUserBuildPropList:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserBuildPropList PROC
	mov eax, sciUserBuildPropList
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
HcUserBuildPropList ENDP

ENDIF

END