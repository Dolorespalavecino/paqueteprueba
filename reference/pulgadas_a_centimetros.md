# Convierte pulgadas a centímetros

Toma una medida en pulgadas y la convierte a centímetros multiplicándola
por 2.54.

## Usage

``` r
pulgadas_a_centimetros(medida_pulgadas)
```

## Arguments

- medida_pulgadas:

  Un número o vector numérico con la medida en pulgadas.

## Value

Un número o vector numérico con la medida en centímetros.

## Examples

``` r
pulgadas_a_centimetros(1)
#> [1] 2.54
pulgadas_a_centimetros(c(0, 1, 12))
#> [1]  0.00  2.54 30.48
```
