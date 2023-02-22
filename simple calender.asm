;name: Riaz Ahmed
;Project 2 - calendar

.model small
.data

    Instruction db "    Project 2 CSc210 - Riaz Ahmed     ",13,10
                db "press w to go forward and q to go back",13,10
                db "press a to jump to jan 2021 or press  ",13,10
                db "s to jump to dec 2021 at any time.$"

    Jan       db "        January 2021       ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10 
              db "                     1   2 ",13,10
              db " 3   4   5   6   7   8   9 ",13,10 
              db "10  11  12  13  14  15  16 ",13,10 
              db "17  18  19  20  21  22  23 ",13,10 
              db "24  25  26  27  28  29  30 ",13,10  
              db "31"
              
              EndJan    db "$"

    Feb       db "       February 2021       ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10 
              db "     1   2   3   4   5   6 ",13,10 
              db " 7   8   9  10  11  12  13 ",13,10 
              db "14  15  16  17  18  19  20 ",13,10 
              db "21  22  23  24  25  26  27 ",13,10 
              db "28"
              
              EndFeb    db "$"
              
    Mar       db "         March 2021        ",13,10
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "     1   2   3   4   5   6 ",13,10
              db " 7   8   9  10  11  12  13 ",13,10
              db "14  15  16  17  18  19  20 ",13,10
              db "21  22  23  24  25  26  27 ",13,10
              db "28  29  30  31"
              
              EndMar    db "$"

    Apr       db "         April 2021        ",13,10
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "                 1   2   3 ",13,10
              db " 4   5   6   7   8   9  10 ",13,10
              db "11  12  13  14  15  16  17 ",13,10
              db "18  19  20  21  22  23  24 ",13,10
              db "25  26  27  28  29  30"
              
              EndApr    db "$"
                                               
    May       db "         May 2021          ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "                         1 ",13,10
              db " 2   3   4   5   6   7   8 ",13,10
              db " 9  10  11  12  13  14  15 ",13,10
              db "16  17  18  19  20  21  22 ",13,10
              db "23  24  25  26  27  28  29 ",13,10
              db "30  31"
              
              EndMay    db "$"
    
    Jun       db "         June 2021         ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10 
              db "         1   2   3   4   5 ",13,10
              db " 6   7   8   9  10  11  12 ",13,10
              db "13  14  15  16  17  18  19 ",13,10
              db "20  21  22  23  24  25  26 ",13,10
              db "27  28  29  30"
              
              EndJun    db "$"
                                              
    Jul       db "         July 2021         ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "                 1   2   3 ",13,10
              db " 4   5   6   7   8   9  10 ",13,10
              db "11  12  13  14  15  16  17 ",13,10
              db "18  19  20  21  22  23  24 ",13,10
              db "25  26  27  28  29  30  31"
              
              EndJul    db "$"
    
    Aug       db "        August 2021        ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db " 1   2   3   4   5   6   7 ",13,10 
              db " 8   9  10  11  12  13  14 ",13,10
              db "15  16  17  18  19  20  21 ",13,10
              db "22  23  24  25  26  27  28 ",13,10
              db "29  30  31"
              
              EndAug    db "$"
                                              
    Sep       db "      September 2021       ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "             1   2   3   4 ",13,10
              db " 5   6   7   8   9  10  11 ",13,10
              db "12  13  14  15  16  17  18 ",13,10
              db "19  20  21  22  23  24  25 ",13,10
              db "26  27  28  29  30"
              
              EndSep    db "$"
                                               
    Oct       db "       October 2021        ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "                     1   2 ",13,10 
              db " 3   4   5   6   7   8   9 ",13,10
              db "10  11  12  13  14  15  16 ",13,10
              db "17  18  19  20  21  22  23 ",13,10
              db "24  25  26  27  28  29  30 ",13,10
              db "31"
              
              EndOct    db "$"
 
    Nov       db "       November 2021       ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10
              db "     1   2   3   4   5   6 ",13,10 
              db " 7   8   9  10  11  12  13 ",13,10
              db "14  15  16  17  18  19  20 ",13,10
              db "21  22  23  24  25  26  27 ",13,10
              db "28  29  30" 
              
              EndNov    db "$"
    
    Dce       db "       December 2021       ",13,10 
              db "Sun Mon Tue Wed Thu Fri Sat",13,10 
              db "             1   2   3   4 ",13,10
              db " 5   6   7   8   9  10  11 ",13,10
              db "12  13  14  15  16  17  18 ",13,10
              db "19  20  21  22  23  24  25 ",13,10
              db "26  27  28  29  30  31"
              
              EndDce    db "$"
              
    end db "   Project 2 CSc210 - Riaz Ahmed    ",13,10
        db "press q to go back, press a to jump ",13,10
        db "to jan 2021 or press s to jump to   ",13,10
        db "dec 2021 at any time or press any   ",13,10 
        db "other key to end $" 

  


.code
 
start:
    mov ax,@data       ; initialize data
    mov ds,ax
    
    call clear
    
    mov dx, offset Instruction   
    call color 
    
    mov ah,9
    int 21h
    
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pJan
    cmp al, 'q'        ; jump prev
    je start
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    

    
    pJan:
    call clear
    mov dx,offset Jan  ; print jan  
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pFeb
    cmp al, 'q'        ; jump prev
    je start
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    
    pFeb:
    call clear
    mov dx,offset Feb  ; print feb
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pMar
    cmp al, 'q'        ; jump prev
    je pJan
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pMar:
    call clear
    mov dx,offset Mar  ; print mar
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pApr
    cmp al, 'q'        ; jump prev
    je pFeb
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pApr:
    call clear
    mov dx,offset Apr  ; print apr
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pMay
    cmp al, 'q'        ; jump prev
    je pMar
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pMay:
    call clear
    mov dx,offset May  ; print may
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pJun
    cmp al, 'q'        ; jump prev
    je pApr
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pJun:
    call clear
    mov dx,offset Jun  ; print jun
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pJul
    cmp al, 'q'        ; jump prev
    je pMay
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pJul:
    call clear
    mov dx,offset Jul  ; print jul
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pAug
    cmp al, 'q'        ; jump prev
    je pJun
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pAug:
    call clear
    mov dx,offset Aug  ; print aug
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pSep
    cmp al, 'q'        ; jump prev
    je pJul
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pSep:
    call clear
    mov dx,offset Sep  ; print sep
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pOct
    cmp al, 'q'        ; jump prev
    je pAug
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pOct:
    call clear
    mov dx,offset Oct  ; print oct
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pNov
    cmp al, 'q'        ; jump prev
    je pSep
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pNov:
    call clear
    mov dx,offset Nov  ; print nov
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pDce
    cmp al, 'q'        ; jump prev
    je pOct
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pDce:
    call clear
    mov dx,offset Dce  ; print december
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'w'        ; jump next
    je pEnd
    cmp al, 'q'        ; jump prev
    je pNov
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    
    pEnd:
    call clear
    mov dx,offset end  ; print end
    ;call color
    mov ah,9
    int 21h
    mov ah,1h
    int 21h
    cmp al, 'q'        ; jump prev
    je PDce
    cmp al, 'a'        ; jump to jan
    je pJan
    cmp al, 's'        ; jump to dce
    je pDce
    mov ax, 4c00h      ; terminate
    int 21h
    

 clear:                ; this clears screen
    mov ax,0003h
    int 10h
 ret
 color:
    mov ax,0920h       ; this adds color             
    mov bx,79h                  
    mov cx,38                       
    int 10h
    ret
 ;color2:
 ;   mov ax,0920h                    
 ;   mov bx,0920h                 
 ;   mov cx,28                       
 ;   int 10h
 ;   ret 