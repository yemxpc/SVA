.code
NtAllocateVirtualMemory proc
    mov r10, rcx
    mov eax, 18h    ; Windows 10/11 x64 için SSN (numara)
    syscall
    ret
NtAllocateVirtualMemory endp

NtWriteVirtualMemory proc
    mov r10,rcx
    mov eax,3Ah
    syscall
    ret
NtWriteVirtualMemory endp

NtProtectVirtualMemory proc
    mov r10,rcx
    mov eax,50h
    syscall
    ret
NtProtectVirtualMemory endp

end
