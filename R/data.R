#' The Lauderdale and Herzog (2016) "wordshoal" text scaling model
#'
#' An extension to the \pkg{quanteda} providing a `textmodel` for the 
#' "wordshoal" method describe in Lauderdale and Herzog (2016).
#' @references  Benjamin E. Lauderdale and Alexander Herzog.  2016.
#'   "\href{https://www.cambridge.org/core/journals/political-analysis/article/measuring-political-positions-from-legislative-speech/35D8B53C4B7367185325C25BBE5F42B4}{Measuring
#'    Political Positions from Legislative Speech}." \emph{Political Analysis}
#'   24 (3, July): 374-394.
"_PACKAGE"

#' Irish Dail speeches from 2007-2011
#' 
#' Sampled speeches and document-level variables from debates in the 30th Dail.
#' Only ten debates are included. 
#' @format The corpus object for the 30th Dail speeches, with document-level 
#'   variables for speaker, debate, and speaker's party.
#' @source Benjamin E. Lauderdale and Alexander Herzog.  2016.
#'   "\href{https://www.cambridge.org/core/journals/political-analysis/article/measuring-political-positions-from-legislative-speech/35D8B53C4B7367185325C25BBE5F42B4}{Measuring
#'    Political Positions from Legislative Speech}." \emph{Political Analysis}
#'   24 (3, July): 374-394.
#' @examples
#' summary(data_corpus_irish30, 5)
"data_corpus_irish30"
