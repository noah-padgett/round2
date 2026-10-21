# A better formatted rounding function.

A better formatted rounding function.

## Usage

``` r
round2(x, digits = 2, type = "f", ...)
```

## Arguments

- x:

  Numeric vector to be rounded.

- digits:

  Number of digits to print.

- type:

  A character (defaults to "f" for 'fixed-point precision') designating
  the scale and precision for the printed out character. See
  [`sprintf`](https://rdrr.io/r/base/sprintf.html) for more details.

- ...:

  Other arguments passed to
  [`sprintf`](https://rdrr.io/r/base/sprintf.html)

## Value

A character vector.

## Examples

``` r
x <- c(1.023, 1.300, 1.45)
round2(x)
#> [1] "1.02" "1.30" "1.45"
round2(x, digits=3)
#> [1] "1.023" "1.300" "1.450"
round2(x, digits=3, type = "e")
#> [1] "1.023e+00" "1.300e+00" "1.450e+00"
```
