Sys.setenv("R_TESTS" = "")

library(testthat)
library(wordshoal)
library(quanteda)

test_check("wordshoal")
