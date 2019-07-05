
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/newsr.svg?branch=master)](https://travis-ci.org/news-r/newsr) <!-- badges: end -->

newsr
=====

All of news-r *R* tools in one place.

Packages
--------

-   [newsapi](https://github.com/news-r/newsapi) - newsapi.org (news aggregator)
-   [guardian](https://github.com/news-r/guardian) - The Guardian API
-   [papers](https://github.com/news-r/papers) - Information on newspapers
-   [loc](https://github.com/news-r/loc) - Library of Congress API
-   [webhoser](https://github.com/news-r/webhoser) - webhose.io API (news aggregator)
-   [webhoserx](https://github.com/news-r/webhoserx) - Feature extraction extension for `webhoser`
-   [currents](https://github.com/news-r/currents) - Currents API (news aggregator)
-   [nytimes](https://github.com/news-r/nytimes) - New York Times API
-   [spotlight](https://github.com/news-r/spotlight) - Entity extraction with DBPedia Spotlight
-   [stocknews](https://github.com/news-r/stocknews) - Stocknews API (financial news)
-   [ft](https://github.com/news-r/ft) - Financial Times API
-   [accunews](https://github.com/news-r/accunews) - AccuNews API (local news)
-   [newsriver](https://github.com/news-r/newsriver) - newsriver.io API (news aggregator)
-   [hoaxy](https://github.com/news-r/hoaxy) - Fake news monitoring
-   [factcheck](https://github.com/news-r/hoaxy) - Fact check queries or publishers

Installation
------------

``` r
# install.packages("remotes")
remotes::install_github("news-r/newsr")
```

``` r
library(newsr)
#> ── Attaching newsr ───────────────────────────────────────── newsr 0.0.1 ──
#> ✔ newsapi   0.0.1          ✔ currents  0.0.1     
#> ✔ guardian  0.0.1          ✔ nytimes   0.0.0.9000
#> ✔ papers    0.0.0.9000     ✔ spotlight 0.0.0.9000
#> ✔ loc       0.0.0.9000     ✔ stocknews 0.0.1     
#> ✔ webhoser  0.0.1          ✔ ft        0.0.1     
#> ✔ accunews  0.0.1          ✔ newsriver 0.0.1     
#> ✔ hoaxy     0.0.1          ✔ factcheck 0.0.1     
#> ✔ webhoserx 0.0.1
```

The only function currently available is to check which API keys as set, or in other words, which APIs (packages) the user may call.

``` r
check_keys()
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ newsapi key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✖ currents key not found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✖ factcheck key not found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ guardian key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ nytimes key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ ft key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ stocknews key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✖ accunews key not found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ newsriver key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✔ hoaxy key found
#> ℹ webhoserx, loc, and papers packages do not require keys
#> ✖ webhoser key not found
```
