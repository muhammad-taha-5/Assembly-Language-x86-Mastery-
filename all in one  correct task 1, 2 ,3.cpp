//#include <iostream>
//using namespace std;
//
//int main() {
//    const int size = 10;
//    int arr[size] = { 1,2,3,4,5,6,7,8,9,10 };
//    int evensum = 0;
//
//    cout << "Array: ";
//    for (int i = 0; i < size; i++) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//
//    _asm {
//        lea esi, arr        // ESI points to array
//        mov ecx, 10       // loop counter
//        xor eax, eax        // clear eax
//
//        start :
//        mov eax, [esi]      // load array element
//            test eax, 1         // check LSB
//            jnz skip            // if odd, skip
//
//            add evensum, eax    // add even number
//
//            skip :
//        add esi, 4          // move to next element
//            loop start
//    }
//
//    cout << "Sum of even elements: " << evensum << endl;
//
//    return 0;
//}

//#include <iostream>
//using namespace std;
//
//int main() {
//    const int size = 10;
//    int arr[size];
//
//    // Initialize array in C++
//    for (int i = 0; i < size; i++) {
//        arr[i] = rand() % 100;
//    }
//
//    cout << "Before sorting:\n";
//    for (int i = 0; i < size; i++) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//
//    // Bubble sort using inline assembly
//    for (int i = 0; i < size - 1; i++) {
//        for (int j = 0; j < size - i - 1; j++) {
//            _asm {
//                mov esi, j            // index j
//                shl esi, 2            // multiply by 4 (int = 4 bytes)
//
//                mov eax, [arr + esi]      // arr[j]
//                mov ebx, [arr + esi + 4]  // arr[j+1]
//
//                cmp eax, ebx
//                jle no_swap
//
//                // swap
//                mov[arr + esi], ebx
//                mov[arr + esi + 4], eax
//
//                no_swap :
//            }
//        }
//    }
//
//    cout << "After sorting:\n";
//    for (int i = 0; i < size; i++) {
//        cout << arr[i] << " ";
//    }
//    cout << endl;
//
//    return 0;
//}






#include <iostream>
using namespace std;

int main() {
    int size = 8;
    unsigned char arr[8];
    int finalSum = 0;

    // Initialize array in C++
    cout << "Array values: ";
    for (int i = 0; i < size; i++) {
        arr[i] = i;
        cout << (int)arr[i] << " ";
    }
    cout << endl;

    _asm {
        pxor mm1, mm1        // mm1 = 0 (sum register)
        mov esi, 0           // index = 0
    }

LOOP_START:
    _asm
    {
        mov ebx, 8
        cmp esi, ebx
        jge LOOP_END

        mov al, arr[esi]     // load array element
        test al, 1           // check odd/even
        jnz SKIP_ADD         // if odd → skip

        // even number logic
        movzx eax, al
        movd mm0, eax
        paddb mm1, mm0       // add even value to sum

        SKIP_ADD :
        inc esi
            jmp LOOP_START
    }

LOOP_END:
    _asm {
        movd finalSum, mm1   // store result
        emms                 // clear MMX state
    }

    cout << "Sum of even numbers: " << finalSum << endl;

    return 0;
}


                             reverse order 
.model small
.stack 100h
.data
    str1    db 'computer','$'
    str2    db 8 dup('$')      ; reversed string
    msg1    db 13,10,'Original string: $'
    msg2    db 13,10,'Reversed string: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    mov es, ax

    ; -------------------------
    ; Print original string
    ; -------------------------
    lea dx, msg1
    mov ah, 09h
    int 21h

    lea dx, str1
    mov ah, 09h
    int 21h

    ; -------------------------
    ; Reverse string using
    ; string instructions
    ; -------------------------
    lea si, str1
    lea di, str2

    mov cx, 8              ; length of "computer"
    add si, cx
    dec si                 ; point to last character
    std                    ; direction = backward

reverse_loop:
    lodsb                  ; AL ← [SI], SI--
    cld                    ; switch to forward for store
    stosb                  ; [DI] ← AL, DI++
    std                    ; restore backward
    loop reverse_loop

    cld                    ; clear direction flag

    ; -------------------------
    ; Print reversed string
    ; -------------------------
    lea dx, msg2
    mov ah, 09h
    int 21h

    lea dx, str2
    mov ah, 09h
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h

main endp
end main
