# 1 Crear una funcion que me diga si un número es par o no
function par_impar {
    param([int]$numero)
        
    if ($numero % 2 -eq 0) {
        Write-Host "El numero $numero es par"
    }
    else {
        Write-Host "El numero $numero es impar"
    }
}
Es-Par 10 
Es-Par 13
# 2 Escribe un programa que imprima los números del 1 al 100, pero aplicando las siguientes normas:
# Devuelve Fizz si el número es divisible por 3.
# Devuelve Buzz si el número es divisible por 5.
# Devuelve FizzBuzz si el número es divisible por 3 y por 5.
for ($i = 1; $i -le 100; $i++) {
    if ($i % 3 -eq 0 -and $i % 5 -eq 0) {
        Write-Host "FizzBuzz"
    }
    elseif ($i % 3 -eq 0) {
        Write-Host "Fizz"
    }
    elseif ($i % 5 -eq 0) {
        Write-Host "Buzz"
    }
    else {
        Write-Host $i
    }
}
# 3 Dado el siguiente arreglo, crear una funcion que me diga si el número que pasamos por parámetro existe en el arreglo
# a $numeros = @(1,2,3,4,5,6,7,8,9,10) 
$numeros = @(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
function numero_existente {
    param (
        [int]$numero
    )

    if ($numeros -contains $numero) {
        return "$numero existe en el arreglo."
    } else {
        return "$numero no existe en el arreglo."
    }
}

Existe-Numero 5
Existe-Numero 15


# 4 Dado el arreglo anterior crear una funcion que me devuelva la suma de todos los valores del arreglo
# 5 Modificar la función anterior para que me devuelva solo la suma de los números pares
$numeros = @(1,2,3,4,5,6,7,8,9,10)

function Suma_Total {
    return ($numeros | Measure-Object -Sum).Sum
}

function Suma_Pares {
    $pares = $numeros | Where-Object { $_ % 2 -eq 0 }
    return ($pares | Measure-Object -Sum).Sum
}

$resultadoTotal = Suma-Total
$resultadoPares = Suma-Pares

Write-Host "Suma total: $resultadoTotal"
Write-Host "Suma de pares: $resultadoPares"