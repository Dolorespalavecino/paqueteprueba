#' Convierte pulgadas a centímetros
#'
#' Toma una medida en pulgadas y la convierte a centímetros
#' multiplicándola por 2.54.
#'
#' @param medida_pulgadas Un número o vector numérico con la medida en pulgadas.
#'
#' @return Un número o vector numérico con la medida en centímetros.
#' @export
#'
#' @examples
#' pulgadas_a_centimetros(1)
#' pulgadas_a_centimetros(c(0, 1, 12))
pulgadas_a_centimetros <- function(medida_pulgadas) {

  if (!is.numeric(medida_pulgadas)) {
    cli::cli_abort(c(
      "medida_pulgadas debe ser numérico.",
      "i" = "La variable ingresada es un {class(medida_pulgadas)[1]}."
    ))
  }

  medida_pulgadas * 2.54
}
