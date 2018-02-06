context("test textmodel_wordshoal")

# load("../data_corpus_irish30.rda") 
# data_corpus_irish30_orig <- data_corpus_irish30
# data_corpus_irish30 <- corpus_subset(data_corpus_irish30_orig, debateID > 20 & debateID <= 30)
data(data_corpus_irish30)
ie_corpus <- data_corpus_irish30
ie_dfm <- dfm(ie_corpus, remove_punct = TRUE)

test_that("textmodel_wordshoal() works in general", {
    set.seed(1)
    expect_output(
        textmodel_wordshoal(ie_dfm, dir = c(7,1),
                            groups = docvars(ie_corpus, "debateID"), 
                            authors = docvars(ie_corpus, "member.name")),
        "Scaling 10 document groups"
    )
})

test_that("print/summary works for textmodel_wordshoal object", {
    set.seed(1)
    expect_output(
        wordshoalfit <- textmodel_wordshoal(ie_dfm, dir = c(7,1),
                                            groups = docvars(ie_corpus, "debateID"), 
                                            authors = docvars(ie_corpus, "member.name")),
        "Scaling 10 document groups"
    )
    
    expect_output(
        print(wordshoalfit),
        "\\s*Call:\\n\\s*textmodel_wordshoal.dfm\\(.*72 authors"
    )

    expect_output(
        print(summary(wordshoalfit)),
        "Estimated Author Positions:"
    )
    
    expect_equal(
        dim(summary(wordshoalfit)$estimated.author.positions),
        c(72,2)
    )
    
})

test_that("textmodel_wordshoal works", {
    wordshoalfit <- textmodel_wordshoal(ie_dfm, dir = c(7,1),
                                        groups = docvars(ie_corpus, "debateID"), 
                                        authors = docvars(ie_corpus, "member.name"))
    expect_is(wordshoalfit, "list")
    expect_is(wordshoalfit, "textmodel_wordshoal_fitted")
    expect_identical(
        names(wordshoalfit),
        c("tol", "authors", "groups", "theta", "beta", "alpha", "psi", "se.theta", "call")
    )
})
