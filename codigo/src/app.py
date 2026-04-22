import ctypes
import numpy as np

lib = ctypes.CDLL("./build/libops.so")

lib.c_suma_array.argtypes = [ctypes.POINTER(ctypes.c_long), ctypes.c_long]
lib.c_suma_array.restype = ctypes.c_long

lib.c_contar_pares.argtypes = [ctypes.POINTER(ctypes.c_long), ctypes.c_long]
lib.c_contar_pares.restype = ctypes.c_long

lib.c_dot.argtypes = [
    ctypes.POINTER(ctypes.c_long),
    ctypes.POINTER(ctypes.c_long),
    ctypes.c_long
]
lib.c_dot.restype = ctypes.c_long

arr = np.array([1,2,3,4,5,6], dtype=np.int64)
ptr = arr.ctypes.data_as(ctypes.POINTER(ctypes.c_long))

print("Suma:", lib.c_suma_array(ptr, len(arr)))
print("Pares:", lib.c_contar_pares(ptr, len(arr)))
print("Dot:", lib.c_dot(ptr, ptr, len(arr)))
