# viñeta_prueba

``` r

library(paqueteprueba)
```

## Introducción

`paqueteprueba` es un paquete de práctica creado para aprender a
desarrollar paquetes de R. **No está pensado para ser usado en análisis
reales.**

Incluye dos funciones:

- [`suma()`](https://dolorespalavecino.github.io/paqueteprueba/reference/suma.md):
  suma dos números.
- [`pulgadas_a_centimetros()`](https://dolorespalavecino.github.io/paqueteprueba/reference/pulgadas_a_centimetros.md):
  convierte medidas de pulgadas a centímetros.

## Sumar números con `suma()`

La función
[`suma()`](https://dolorespalavecino.github.io/paqueteprueba/reference/suma.md)
recibe dos números, `x` e `y`, y devuelve su suma.

``` r

suma(2, 3)
#> [1] 5
suma(10, 1)
#> [1] 11
```

Si no le pasamos argumentos, usa los valores por defecto:

``` r

suma()
#> [1] 4
```

## Convertir medidas con `pulgadas_a_centimetros()`

Muchos planos de muebles vienen en pulgadas, pero en Argentina se
trabaja en centímetros. La función
[`pulgadas_a_centimetros()`](https://dolorespalavecino.github.io/paqueteprueba/reference/pulgadas_a_centimetros.md)
hace la conversión multiplicando la medida por 2.54.

Una pulgada son 2.54 centímetros:

``` r

pulgadas_a_centimetros(1)
#> [1] 2.54
```

También funciona con números decimales:

``` r

pulgadas_a_centimetros(7.5)
#> [1] 19.05
```

Y con un vector de medidas, en cuyo caso convierte cada una:

``` r

pulgadas_a_centimetros(c(0, 1, 12))
#> [1]  0.00  2.54 30.48
```

### ¿Qué pasa si la medida no es un número?

La función revisa que el argumento sea numérico. Si no lo es, devuelve
un mensaje de error que explica qué tipo de dato recibió:

``` r

pulgadas_a_centimetros("100")
#> Error in `pulgadas_a_centimetros()`:
#> ! medida_pulgadas debe ser numérico.
#> ℹ La variable ingresada es un character.
```
