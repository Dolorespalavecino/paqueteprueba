test_that("pulgadas_a_centimetros convierte bien", {
  expect_equal(pulgadas_a_centimetros(1), 2.54)
  expect_equal(pulgadas_a_centimetros(0), 0)
  expect_equal(pulgadas_a_centimetros(-1), -2.54)
  expect_equal(pulgadas_a_centimetros(c(0, 1, 12)), c(0, 2.54, 30.48))
})

test_that("pulgadas_a_centimetros devuelve un vector numérico del mismo largo", {
  expect_type(pulgadas_a_centimetros(1), "double")
  expect_length(pulgadas_a_centimetros(c(0, 1, 12)), 3)
})

test_that("pulgadas_a_centimetros da error si no es numérico", {
  expect_error(pulgadas_a_centimetros("hola"), "debe ser numérico")
  expect_error(pulgadas_a_centimetros(TRUE))
})
