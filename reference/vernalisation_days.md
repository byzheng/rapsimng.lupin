# Calculate vernalisation time using cardinal temperatures

Calculate vernalisation time using cardinal temperatures

## Usage

``` r
vernalisation_days(
  mint,
  maxt,
  x_temp = lupin$get("phenology.vernalisation_time.x"),
  y_temp = lupin$get("phenology.vernalisation_time.y")
)
```

## Arguments

- mint:

  The minimum temperature

- maxt:

  The maximum temperature

- x_temp:

  The cardinal temperatures used to calculate vernalisation time. The
  default values are defined in
  lupin\$get("phenology.vernalisation_time.x").

- y_temp:

  The effective vernalisation time at the corresponding cardinal
  temperatures. The default values are defined in
  lupin\$get("phenology.vernalisation_time.y").

## Value

The vernalisation time (days).

## Details

The daily vernalisation time is calculated by interpolating the
effective vernalisation time at three hour intervals between the daily
minimum and maximum temperatures, and then averaging these values to get
the daily vernalisation time.

For more information about the lupin phenology model, see the [APSIM
Next Generation lupin
Documentation](https://apsimng-notes.bangyou.me/docs/Plants/lupin/Phenology/Vegetative.html).

## Examples

``` r
mint <- c(0, 10)
maxt <- c(30, 40)
vernalisation_days(mint, maxt)
#> [1] 0.22308540 0.03967708
```
