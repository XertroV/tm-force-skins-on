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





== SKIN URL GET CHECK THING

Trackmania.exe.text+BACA68 - 0F28 4C 24 20         - movaps xmm1,[rsp+20]
Trackmania.exe.text+BACA6D - 66 0F7F 4C 24 20      - movdqa [rsp+20],xmm1
Trackmania.exe.text+BACA73 - 66 0F7F 44 24 30      - movdqa [rsp+30],xmm0
Trackmania.exe.text+BACA79 - E8 827BD2FF           - call Trackmania.exe.text+8D4600
Trackmania.exe.text+BACA7E - 48 8B F8              - mov rdi,rax
Trackmania.exe.text+BACA81 - E9 DF000000           - jmp Trackmania.exe.text+BACB65
Trackmania.exe.text+BACA86 - 84 C9                 - test cl,cl
Trackmania.exe.text+BACA88 - 74 05                 - je Trackmania.exe.text+BACA8F
Trackmania.exe.text+BACA8A - 48 8B 03              - mov rax,[rbx] { access skin name, prefix checked at some point?
 }
Trackmania.exe.text+BACA8D - EB 03                 - jmp Trackmania.exe.text+BACA92
Trackmania.exe.text+BACA8F - 48 8B C3              - mov rax,rbx
Trackmania.exe.text+BACA92 - 48 89 44 24 20        - mov [rsp+20],rax
Trackmania.exe.text+BACA97 - 33 C0                 - xor eax,eax
Trackmania.exe.text+BACA99 - 44 89 44 24 28        - mov [rsp+28],r8d
Trackmania.exe.text+BACA9E - 89 44 24 2C           - mov [rsp+2C],eax
Trackmania.exe.text+BACAA2 - 38 43 1B              - cmp [rbx+1B],al
Trackmania.exe.text+BACAA5 - 74 06                 - je Trackmania.exe.text+BACAAD
Trackmania.exe.text+BACAA7 - 48 8B 43 10           - mov rax,[rbx+10] { access skin URL (charpilot specifically?)
 }
Trackmania.exe.text+BACAAB - EB 04                 - jmp Trackmania.exe.text+BACAB1
Trackmania.exe.text+BACAAD - 48 8D 43 10           - lea rax,[rbx+10]
Trackmania.exe.text+BACAB1 - 0F28 44 24 20         - movaps xmm0,[rsp+20]
Trackmania.exe.text+BACAB6 - 4C 8D 44 24 20        - lea r8,[rsp+20]
Trackmania.exe.text+BACABB - 48 8B 0D 26214001     - mov rcx,[Trackmania.exe+1FAFBE8] { (18C892774A0) }


0F 28 4C 24 20 66 0F 7F 4C 24 20 66 0F 7F 44 24 30 E8 82 7B D2 FF 48 8B F8 E9 DF 00 00 00 84 C9 74 05 48 8B 03 EB 03 48 8B C3 48 89 44 24 20 33 C0 44 89 44 24 28 89 44 24 2C 38 43 1B 74 06 48 8B 43 10 EB 04 48 8D 43 10 0F 28 44 24 20 4C 8D 44 24 20 48 8B 0D 26 21 40 01










== bookmark 9

Trackmania.exe.text+BA969C - 8B 46 2C              - mov eax,[rsi+2C]
Trackmania.exe.text+BA969F - 48 8D 54 24 20        - lea rdx,[rsp+20]
Trackmania.exe.text+BA96A4 - 48 89 4C 24 20        - mov [rsp+20],rcx
Trackmania.exe.text+BA96A9 - 33 FF                 - xor edi,edi
Trackmania.exe.text+BA96AB - 89 7C 24 2C           - mov [rsp+2C],edi
Trackmania.exe.text+BA96AF - 48 8B CB              - mov rcx,rbx
Trackmania.exe.text+BA96B2 - 89 44 24 28           - mov [rsp+28],eax
Trackmania.exe.text+BA96B6 - 0F28 44 24 20         - movaps xmm0,[rsp+20]
Trackmania.exe.text+BA96BB - 66 0F7F 44 24 20      - movdqa [rsp+20],xmm0
Trackmania.exe.text+BA96C1 - E8 BA9955FF           - call Trackmania.exe.text+103080 { lots happens here, updates skin url and other things
 }
Trackmania.exe.text+BA96C6 - 40 38 7E 3B           - cmp [rsi+3B],dil { RBX has location of strings (skin name, url)
 }
Trackmania.exe.text+BA96CA - 74 06                 - je Trackmania.exe.text+BA96D2
Trackmania.exe.text+BA96CC - 48 8B 4E 30           - mov rcx,[rsi+30]
Trackmania.exe.text+BA96D0 - EB 04                 - jmp Trackmania.exe.text+BA96D6
Trackmania.exe.text+BA96D2 - 48 8D 4E 30           - lea rcx,[rsi+30]
Trackmania.exe.text+BA96D6 - 8B 46 3C              - mov eax,[rsi+3C]        { common between both paths again, can hook from here out }
Trackmania.exe.text+BA96D9 - 48 8D 54 24 20        - lea rdx,[rsp+20]
Trackmania.exe.text+BA96DE - 48 89 4C 24 20        - mov [rsp+20],rcx
Trackmania.exe.text+BA96E3 - 48 8D 4B 10           - lea rcx,[rbx+10]
Trackmania.exe.text+BA96E7 - 89 44 24 28           - mov [rsp+28],eax
Trackmania.exe.text+BA96EB - 0F28 44 24 20         - movaps xmm0,[rsp+20]
Trackmania.exe.text+BA96F0 - 66 0F7F 44 24 20      - movdqa [rsp+20],xmm0
Trackmania.exe.text+BA96F6 - E8 953156FF           - call Trackmania.exe.text+10C890 { SSOString_Assign }


idea: hook call to 103080, check string after, if it's char pilot, update it.


Skins\Models\CharacterPilot\Stadium.zip  (len=39)

(start from just before call, afterwards is the same for 2 similar functions)
66 0F 7F 44 24 20 E8 BA 99 55 FF 40 38 7E 3B 74 06 48 8B 4E 30 EB 04 48 8D 4E 30 8B 46 3C
66 0F 7F 44 24 20 E8 ?? ?? ?? ?? 40 38 7E 3B 74 06 48 8B 4E 30 EB 04 48 8D 4E 30 8B 46 3C 48 8D 54 24 20

unique: 66 0F 7F 44 24 20 E8 ?? ?? ?? ?? 40 38 7E 3B

whole pattern covering what we want to hook: (35 bytes; 30 offset to last 5 bytes)
66 0F 7F 44 24 20 E8 ?? ?? ?? ?? 40 38 7E 3B 74 06 48 8B 4E 30 EB 04 48 8D 4E 30 8B 46 3C 48 8D 54 24 20



called from CommitMenuProfileRemoteData maybe?



== bookmark 1

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
Trackmania.exe.text+1259E79 - E8 82EE8AFF           - call Trackmania.exe.text+B08D00

== bookmark 3

Trackmania.exe.text+BAC25F - 44 89 74 24 38        - mov [rsp+38],r14d
Trackmania.exe.text+BAC264 - 44 89 7C 24 3C        - mov [rsp+3C],r15d
Trackmania.exe.text+BAC269 - E8 32608FFF           - call Trackmania.exe.text+4A22A0
Trackmania.exe.text+BAC26E - 85 C0                 - test eax,eax { assembles string, gets Skins\Models\ prefix
 }
Trackmania.exe.text+BAC270 - 0F84 98040000         - je Trackmania.exe.text+BAC70E
Trackmania.exe.text+BAC276 - 0F28 44 24 40         - movaps xmm0,[rsp+40]
Trackmania.exe.text+BAC27B - 4C 8D 45 A7           - lea r8,[rbp-59]
Trackmania.exe.text+BAC27F - 48 8D 54 24 30        - lea rdx,[rsp+30]
Trackmania.exe.text+BAC284 - 66 0F7F 44 24 40      - movdqa [rsp+40],xmm0
Trackmania.exe.text+BAC28A - 48 8D 4C 24 40        - lea rcx,[rsp+40]
Trackmania.exe.text+BAC28F - 4C 89 7C 24 30        - mov [rsp+30],r15
Trackmania.exe.text+BAC294 - 4C 89 7C 24 38        - mov [rsp+38],r15
Trackmania.exe.text+BAC299 - 4C 89 7D A7           - mov [rbp-59],r15
Trackmania.exe.text+BAC29D - 4C 89 7D AF           - mov [rbp-51],r15
Trackmania.exe.text+BAC2A1 - E8 2A15D1FF           - call Trackmania.exe.text+8BD7D0
Trackmania.exe.text+BAC2A6 - 83 7D AF 0F           - cmp dword ptr [rbp-51],0F { RDX has 9 or F
 }
Trackmania.exe.text+BAC2AA - 48 8D 05 67510801     - lea rax,[Trackmania.exe.rdata+2CB418] { ("CharacterPilot\") }
Trackmania.exe.text+BAC2B1 - 48 89 44 24 40        - mov [rsp+40],rax
Trackmania.exe.text+BAC2B6 - C7 44 24 48 0F000000  - mov [rsp+48],0000000F { RDI has CSystemPackDesc
 }
Trackmania.exe.text+BAC2BE - 74 05                 - je Trackmania.exe.text+BAC2C5 { This is different for each of them;
!!! NOP this to treat char pilot paths like normal skins !!!
 }
Trackmania.exe.text+BAC2C0 - 41 8B F7              - mov esi,r15d
Trackmania.exe.text+BAC2C3 - EB 25                 - jmp Trackmania.exe.text+BAC2EA
Trackmania.exe.text+BAC2C5 - 0F28 44 24 40         - movaps xmm0,[rsp+40]
Trackmania.exe.text+BAC2CA - 48 8D 54 24 40        - lea rdx,[rsp+40]
Trackmania.exe.text+BAC2CF - 45 33 C0              - xor r8d,r8d
Trackmania.exe.text+BAC2D2 - 66 0F7F 44 24 40      - movdqa [rsp+40],xmm0
Trackmania.exe.text+BAC2D8 - 48 8D 4D A7           - lea rcx,[rbp-59]
Trackmania.exe.text+BAC2DC - E8 EF7355FF           - call Trackmania.exe.text+1036D0
Trackmania.exe.text+BAC2E1 - 85 C0                 - test eax,eax
Trackmania.exe.text+BAC2E3 - 41 8B F7              - mov esi,r15d
Trackmania.exe.text+BAC2E6 - 40 0F94 C6            - sete sil
Trackmania.exe.text+BAC2EA - C7 44 24 48 06000000  - mov [rsp+48],00000006 { 6 }
Trackmania.exe.text+BAC2F2 - 48 8D 05 33730101     - lea rax,[Trackmania.exe.rdata+25D62C] { ("Female") }


== bookmark 5


Trackmania.exe.text+BACB90 - 40 53                 - push rbx
Trackmania.exe.text+BACB92 - 48 83 EC 50           - sub rsp,50 { 80 }
Trackmania.exe.text+BACB96 - 48 8B C2              - mov rax,rdx
Trackmania.exe.text+BACB99 - C7 01 00000000        - mov [rcx],00000000 { 0 }
Trackmania.exe.text+BACB9F - 48 8B D9              - mov rbx,rcx
Trackmania.exe.text+BACBA2 - BA 06000000           - mov edx,00000006 { 6 }
Trackmania.exe.text+BACBA7 - 48 8B C8              - mov rcx,rax
Trackmania.exe.text+BACBAA - E8 01FEFFFF           - call Trackmania.exe.text+BAC9B0 { accesses skin name string
 }
Trackmania.exe.text+BACBAF - 48 85 C0              - test rax,rax
Trackmania.exe.text+BACBB2 - 74 52                 - je Trackmania.exe.text+BACC06
Trackmania.exe.text+BACBB4 - 48 8B D0              - mov rdx,rax
Trackmania.exe.text+BACBB7 - 48 8D 4C 24 20        - lea rcx,[rsp+20]
Trackmania.exe.text+BACBBC - E8 FFF5FFFF           - call Trackmania.exe.text+BAC1C0 { load system pack desc
 }
Trackmania.exe.text+BACBC1 - 0F10 00               - movups xmm0,[rax]
Trackmania.exe.text+BACBC4 - 0F11 03               - movups [rbx],xmm0
Trackmania.exe.text+BACBC7 - 0F10 48 10            - movups xmm1,[rax+10]
Trackmania.exe.text+BACBCB - 0F11 4B 10            - movups [rbx+10],xmm1
Trackmania.exe.text+BACBCF - F2 0F10 40 20         - movsd xmm0,[rax+20]
