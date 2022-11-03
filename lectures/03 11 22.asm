;int i = , N = 18
; double ii = 1.0, Res = 0.0
; while (i <= N)
; {
;   Res += 1/ii
;   ii += 1.0
;   i++
; }

; 1000 i = 1       | R1
; 1004 N = 18      | R2
; 1008 ii = 1.0    | F1
; 1016 Res = 0.0   | F2
; 1024 1.0         | F3

LD [1000], R1
LD [1004], R2
CMP R1, R2
JG [56]
LD [1024], F3
LD [1008], F1
FDIV F3, F1, F4
LD [1016], F2
FADD F2, F4, F2
ST F2, [1016]
LD [1008], F1
LD [1024], F3
FADD F1, F3, F1
ST F1, [1008]
LD [1000], R1
TNC R1
ST R1, [1000]
JMP [0]
NOD


; INT 0/1
; FADD 3/1
; FDIV 3/4
