
# wordshoal

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/wordshoal)](https://cran.r-project.org/package=wordshoal)
[![Travis-CI Build
Status](https://travis-ci.org/kbenoit/wordshoal.svg?branch=master)](https://travis-ci.org/kbenoit/wordshoal)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/kbenoit/wordshoal?branch=master&svg=true)](https://ci.appveyor.com/project/kbenoit/wordshoal)
[![Coverage
Status](https://img.shields.io/codecov/c/github/kbenoit/wordshoal/master.svg)](https://codecov.io/github/kbenoit/wordshoal?branch=master)

## About

An extension package for [**quanteda**](http://quanteda.io) for
computing the “wordshoal” text model from Benjamin E. Lauderdale and
Alexander Herzog. 2016. “[Measuring Political Positions from Legislative
Speech.](https://www.cambridge.org/core/journals/political-analysis/article/measuring-political-positions-from-legislative-speech/35D8B53C4B7367185325C25BBE5F42B4)”
*Political Analysis* 24 (3, July): 374-394.

This package was [moved from
**quanteda**](https://github.com/kbenoit/quanteda/pull/1172) on
2017-12-27.

**Maintainer:** [Benjamin Lauderdale](B.E.lauderdale@lse.ac.uk), 
[Akitaka Matsuo](a.matsuo@lse.ac.uk)

## How to Install

``` r
# devtools package required to install quanteda from Github 
devtools::install_github("kbenoit/wordshoal") 
```

## How to Use

See `?wordshoal::textmodel_wordshoal`.
