Trackmania.exe.text+1259E50 - 48 83 EC 28           - sub rsp,28 { 40 }
Trackmania.exe.text+1259E54 - 48 8B 41 20           - mov rax,[rcx+20]
Trackmania.exe.text+1259E58 - 4C 8B C1              - mov r8,rcx
Trackmania.exe.text+1259E5B - 83 B8 90010000 00     - cmp dword ptr [rax+00000190],00 { if zero, load skins (checks DisableProfileSkins on CGameCtnNetServerInfo)
 }
Trackmania.exe.text+1259E62 - EB 0A                 - jmp Trackmania.exe.text+1259E6E { je 7FF7A7F4AE6E (74 0A) -> jmp X (EB 0A)
 }
Trackmania.exe.text+1259E64 - B8 01000000           - mov eax,00000001 { 1 }
Trackmania.exe.text+1259E69 - 48 83 C4 28           - add rsp,28 { 40 }
Trackmania.exe.text+1259E6D - C3                    - ret
Trackmania.exe.text+1259E6E - E8 BDEE8AFF           - call Trackmania.exe.text+B08D30
Trackmania.exe.text+1259E73 - 49 8B 48 28           - mov rcx,[r8+28]
Trackmania.exe.text+1259E77 - 8B D0                 - mov edx,eax

== BYTES

48 83 EC 28 48 8B 41 20 4C 8B C1 83 B8 90 01 00 00 00 EB 0A B8 01 00 00 00 48 83 C4 28 C3 E8 BD EE 8A FF 49 8B 48 28 8B D0


== PATTERN

48 83 EC 28 48 8B 41 20 4C 8B C1 83 B8 90 01 00 00 00 EB 0A B8 01 00 00 00 48 83 C4 28 C3 E8 BD EE 8A FF 49 8B 48 28 8B D0

=== cmp to ret

idea: patch 74 0a -> EB 0a

83 B8 90 01 00 00 00 74 0A B8 01 00 00 00 48 83 C4 ?? C3
