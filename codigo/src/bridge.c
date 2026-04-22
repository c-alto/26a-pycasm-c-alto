#include <stdint.h>

extern int64_t suma_array(int64_t*, int64_t);
extern int64_t contar_pares(int64_t*, int64_t);
extern int64_t dot_product(int64_t*, int64_t*, int64_t);

int64_t c_suma_array(int64_t* arr, int64_t n){
    return suma_array(arr, n);
}

int64_t c_contar_pares(int64_t* arr, int64_t n){
    return contar_pares(arr, n);
}

int64_t c_dot(int64_t* a, int64_t* b, int64_t n){
    return dot_product(a, b, n);
}

