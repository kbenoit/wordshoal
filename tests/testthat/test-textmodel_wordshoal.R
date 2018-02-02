context("test textmodel_wordshoal")

test_that("textmodel_wordshoal works", {
    iedfm <- quanteda::dfm(data_corpus_irish30, remove_punct = TRUE)
    wordshoalfit <-
        textmodel_wordshoal(iedfm, dir = c(7,1),
                            groups = quanteda::docvars(data_corpus_irish30, "debateID"),
                            authors = quanteda::docvars(data_corpus_irish30, "member.name"))
    fitdf <- merge(as.data.frame(summary(wordshoalfit)),
                   quanteda::docvars(data_corpus_irish30),
                   by.x = "row.names", by.y = "member.name")
    fitdf <- subset(fitdf, !duplicated(memberID))
    aggs <- aggregate(theta ~ party.name, data = fitdf, mean)
    
    expect_is(wordshoalfit, "list")
    expect_is(wordshoalfit, "textmodel_wordshoal_fitted")
    expect_identical(
        names(wordshoalfit),
        c("tol", "authors", "groups", "theta", "beta", "alpha", "psi", "se.theta", "call")
    )
    expect_is(aggs, "data.frame")
    expect_equal(dim(aggs), c(7, 2))
    expect_equal(names(aggs), c("party.name", "theta"))
})