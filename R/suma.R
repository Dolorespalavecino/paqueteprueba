#' Suma
#'
#'Esta funcion suma dos numeros positivos.
#' @param x numero positivo para sumar
#' @param y otro numero positivo para sumar
#'
#' @returns vector con la suma de los sumeros positivos
#' @export
#'
#' @examples
#' suma(3,5)
#' suma(28,78)



#Cambio 1: VALORES POR DEFECTO
suma <- function(x = 2, y = 2) {
  x + y
}

#Cambio 2: CHEQUEAR QUE SEAN NUMERICOS
suma<- function(x=2,y=2){
if (!is.numeric(x) | !is.numeric(y)) {
  cli::cli_abort(c(
    "Los argumentos deben ser num\u00e9ricos.",
    "i" = "X es {class(x)[1]} e Y es {class(y)[1]}."
  ))
}

x + y
}

#Cambio 3: NO SUMAR NEGATIVOS
suma <- function(x = 2, y = 2) {

  if (!is.numeric(x) | !is.numeric(y)) {
    cli::cli_abort(c(
      "Los argumentos deben ser num\u00e9ricos.",
      "i" = "x es {class(x)[1]} e y es {class(y)[1]}."
    ))
  }

  if (x < 0 | y < 0) {
    cli::cli_abort(c(
      "No puedo sumar negativos.",
      "i" = "x vale {x} e y vale {y}."
    ))
  }

  x + y
}
