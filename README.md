# SVA

# Syscall Shellcode Executor

A simple PoC to execute shellcode using direct NTAPI syscalls instead of standard Win32 APIs (`VirtualAlloc`, etc.).

## How it works
The code performs the following steps manually:
1. **Allocate:** Calls `NtAllocateVirtualMemory` to reserve and commit space.
2. **Write:** Uses `NtWriteVirtualMemory` to copy the shellcode to the allocated memory.
3. **Protect:** Changes memory permissions to `PAGE_EXECUTE_READ` via `NtProtectVirtualMemory`.
4. **Execute:** Spawns a thread at the base address to trigger the payload.

## Requirements
- You need a `syscall.h` file containing the syscall stubs for your specific Windows version.
- Compile with MSVC (x64).

## Usage
1. Make sure your `syscall.h` is correctly linked.
2. Replace the `shellcode` array with your own payload.
3. Compile and run as Administrator (if needed for testing).

## Disclaimer
This project is for educational and research purposes only. I am not responsible for any misuse.
