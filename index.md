# round2

The goal of round2 is to provide a better formatted rounding function
for when exporting tables and figures with possibly trailing 0s in the
decimal place. The aim is to have as little of impact on the code
written as possible while giving the requested format in the results.

## Installation

You can install the development version of round2 like so:

``` r

#install.packages("pak")
pak::pkg_install("noah-padgett/round2")
```

## Example

Here is the basic utility of this incredibly simple package:

``` r

library(round2)
x <- c(1.024, 1.110, 1.2)
round2(x)
#> [1] "1.02" "1.11" "1.20"
round2(x, digits = 3)
#> [1] "1.024" "1.110" "1.200"
round2(x, digits = 4)
#> [1] "1.0240" "1.1100" "1.2000"
# verses the default round function when "pasting" to characters
paste0(round(x))
#> [1] "1" "1" "1"
paste0(round(x, digits = 2))
#> [1] "1.02" "1.11" "1.2"
paste0(round(x, digits = 3))
#> [1] "1.024" "1.11"  "1.2"
paste0(round(x, digits = 4))
#> [1] "1.024" "1.11"  "1.2"
```
