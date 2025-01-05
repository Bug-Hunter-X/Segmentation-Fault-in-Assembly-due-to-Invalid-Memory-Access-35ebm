mov ecx, 100 ;Example, replace with your actual array size
mov eax, ebx
add eax, ecx
cmp eax, 0x1000 ;Example, replace with your memory limit
ja memory_access_error ; jump if the calculated address is outside the limit
mov eax, [ebx + ecx*4 + 0x10]
; ... rest of your code
memory_access_error:
; Handle the memory access error appropriately. You may want to exit the program,
; display an error message, or attempt to recover gracefully.
mov eax, 1 ;sys_exit
int 0x80