.global suma_array
.global contar_pares
.global dot_product

// -----------------------------------
// int64_t suma_array(int64_t* arr, int64_t n)
// x0 = arr
// x1 = n
// retorno en x0
// -----------------------------------
suma_array:
    mov x2, #0      // índice i
    mov x3, #0      // acumulador suma

loop_suma:
    cmp x2, x1
    bge end_suma

    ldr x4, [x0, x2, lsl #3]  // arr[i]
    add x3, x3, x4

    add x2, x2, #1
    b loop_suma

end_suma:
    mov x0, x3
    ret

// -----------------------------------
// int64_t contar_pares(int64_t* arr, int64_t n)
// -----------------------------------
contar_pares:
    mov x2, #0
    mov x3, #0

loop_par:
    cmp x2, x1
    bge end_par

    ldr x4, [x0, x2, lsl #3]
    and x5, x4, #1
    cmp x5, #0
    bne skip_par

    add x3, x3, #1

skip_par:
    add x2, x2, #1
    b loop_par

end_par:
    mov x0, x3
    ret

// -----------------------------------
// int64_t dot_product(int64_t* a, int64_t* b, int64_t n)
// x0 = a
// x1 = b
// x2 = n
// -----------------------------------
dot_product:
    mov x3, #0      // acumulador
    mov x4, #0      // índice

loop_dot:
    cmp x4, x2
    bge end_dot

    ldr x5, [x0, x4, lsl #3]
    ldr x6, [x1, x4, lsl #3]

    mul x7, x5, x6
    add x3, x3, x7

    add x4, x4, #1
    b loop_dot

end_dot:
    mov x0, x3
    ret
