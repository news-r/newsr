<!-- README.md is generated from README.Rmd. Please edit that file -->


<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/newsr.svg?branch=master)](https://travis-ci.org/news-r/newsr)
<!-- badges: end -->

# newsr

All of news-r _R_ tools in one place.

## Packages

- [newsapi](https://github.com/news-r/newsapi) - newsapi.org (news aggregator)
- [guardian](https://github.com/news-r/guardian) - The Guardian API
- [papers](https://github.com/news-r/papers) - Information on newspapers
- [loc](https://github.com/news-r/loc) - Library of Congress API
- [webhoser](https://github.com/news-r/webhoser) - webhose.io API (news aggregator)
- [webhoserx](https://github.com/news-r/webhoserx) - Feature extraction extension for `webhoser`
- [currents](https://github.com/news-r/currents) - Currents API (news aggregator)
- [nytimes](https://github.com/news-r/nytimes) - New York Times API
- [spotlight](https://github.com/news-r/spotlight) - Entity extraction with DBPedia Spotlight
- [stocknews](https://github.com/news-r/stocknews) - Stocknews API (financial news)
- [ft](https://github.com/news-r/ft) - Financial Times API
- [accunews](https://github.com/news-r/accunews) - AccuNews API (local news)
- [newsriver](https://github.com/news-r/newsriver) - newsriver.io API (news aggregator)
- [hoaxy](https://github.com/news-r/hoaxy) - Fake news monitoring

## Installation

```r
# install.packages("remotes")
remotes::install_github("news-r/newsr")
```


```r
library(newsr)
#> ── Attaching newsr ───────────────────────────────────────── newsr 0.0.1 ──
#> ✔ newsapi   0.0.1          ✔ webhoserx 0.0.1     
#> ✔ guardian  0.0.1.9000     ✔ currents  0.0.1     
#> ✔ papers    0.0.0.9000     ✔ nytimes   0.0.0.9000
#> ✔ loc       0.0.0.9000     ✔ spotlight 0.0.0.9000
#> ✔ webhoser  0.0.1          ✔ stocknews 0.0.1     
#> ✔ accunews  0.0.1          ✔ ft        0.0.1     
#> ✔ hoaxy     0.0.1          ✔ newsriver 0.0.1
```
