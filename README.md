<!-- README.md is generated from README.Rmd. Please edit that file -->

# idealista18

<!-- badges: start -->

[![License: CC BY-NC-SA
4.0](https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0-blue.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_GB)

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-green.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)

[![GitHub
Stars](https://img.shields.io/github/stars/paezha/edashop?style=social)](https://github.com/paezha/idealista18/stargazers)

![GitHub search hit counter:
R](https://img.shields.io/github/search/paezha/idealista18/real-estate)  
![GitHub search hit counter:
exploratory](https://img.shields.io/github/search/paezha/idealista18/spatial)
![GitHub search hit counter:
data](https://img.shields.io/github/search/paezha/idealista18/data)
![GitHub search hit counter:
analysis](https://img.shields.io/github/search/paezha/idealista18/Spain)
![GitHub search hit counter:
workshop](https://img.shields.io/github/search/paezha/idealista18/open-data-products)

![GitHub
issues](https://img.shields.io/github/issues/paezha/idealista18)
![GitHub
release](https://img.shields.io/github/release-date/paezha/idealista18)
![GitHub commit
activity](https://img.shields.io/github/commit-activity/y/paezha/idealista18)
![GitHub last
commit](https://img.shields.io/github/last-commit/paezha/idealista18)
<!-- badges: end -->

{idealista18} is an open data product with big geo-referenced micro-data
sets of 2018 real estate listings in Spain. These data were originally
published on the idealista.com real estate website. The data sets are
for the three largest cities in Spain: Madrid (n = 94,815 observations),
Barcelona (n = 61,486 observations), and Valencia (n = 33,622
observations), and include approximate coordinates of properties
(latitude and longitude), asking prices of each listed dwelling, and
several variables of indoor characteristics. The listings were enriched
with official information from the Spanish cadastre (e.g., building
material quality) plus other relevant geographical features, such as
distance to urban points of interest. Along with the real estate
listings, the data product also includes neighborhood boundaries for
each city. The data sets are offered as a fully documented R package and
are available for scientific and educational purposes, particularly for
geo-spatial studies.

## Installation

<!--
You can install the released version of idealista18 from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("idealista18")
```
-->

You can install the package from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("paezha/idealista18")
```

# Data description

There are nine data objects in the package: three objects for each of
the cities included. For each city, dwelling listings, neighborhood
polygons, and a set of points of interest have been included in the R
package. The following subsections describe each object. A full
description of the data is available in the help section of the package.

``` r
library(dplyr) # A Grammar of Data Manipulation
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
library(ggplot2) # Create Elegant Data Visualisations Using the Grammar of Graphics
library(idealista18) # Idealista 2018 Data Package
#library(kableExtra) # Construct Complex Table with 'kable' and Pipe Syntax
library(sf) # Simple Features for R
#> Linking to GEOS 3.9.1, GDAL 3.3.2, PROJ 7.2.1; sf_use_s2() is TRUE
library(skimr) 
```

## Dwelling listings

The dwelling listing of each city includes a set of characteristics for
each dwelling published on the idealista real estate website as an ad.
The dwelling listing has been included in the ‘idealista18’ package as
an sf object. The name of the sf object containing the dwelling listing
includes the name of the city, followed by ’\_Sale’ (e.g., Madrid_Sale)
and includes a total of 42 variables. Each sf object includes the
complete set of listings corresponding to the four quarters of the year
2018. Table shows the number of dwelling listing ads included in the
data set for each city and quarter. The record counts for each city are:
94,815 listings for Madrid, 61,486 for Barcelona, and 33,622 for
Valencia. Note that the same dwelling may be found in more than one
period when a property listed for sale in one quarter was sold in a
subsequent quarter. The variable ASSETID, included in the sf objects, is
the unique identifier of the dwelling.

``` r
Madrid_Sale |>
  sf::st_drop_geometry() |> 
  skimr::skim()
```

|                                                  |                            |
|:-------------------------------------------------|:---------------------------|
| Name                                             | sf::st_drop_geometry(Madr… |
| Number of rows                                   | 94815                      |
| Number of columns                                | 41                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                            |
| Column type frequency:                           |                            |
| factor                                           | 1                          |
| numeric                                          | 40                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                            |
| Group variables                                  | None                       |

Data summary

**Variable type: factor**

| skim_variable | n_missing | complete_rate | ordered | n_unique | top_counts                      |
|:--------------|----------:|--------------:|:--------|---------:|:--------------------------------|
| ASSETID       |         0 |             1 | FALSE   |    75804 | A54: 11, A14: 9, A22: 9, A13: 8 |

**Variable type: numeric**

| skim_variable                 | n_missing | complete_rate |      mean |        sd |        p0 |       p25 |       p50 |       p75 |       p100 | hist  |
|:------------------------------|----------:|--------------:|----------:|----------:|----------:|----------:|----------:|----------:|-----------:|:------|
| PERIOD                        |         0 |          1.00 | 201808.61 |      3.68 | 201803.00 | 201806.00 | 201809.00 | 201812.00 |  201812.00 | ▃▂▁▃▇ |
| PRICE                         |         0 |          1.00 | 396110.11 | 417074.41 |  21000.00 | 160000.00 | 262000.00 | 467000.00 | 8133000.00 | ▇▁▁▁▁ |
| UNITPRICE                     |         0 |          1.00 |   3661.05 |   1700.50 |    805.31 |   2240.00 |   3480.00 |   4744.62 |    9997.56 | ▇▇▅▁▁ |
| CONSTRUCTEDAREA               |         0 |          1.00 |    101.40 |     67.08 |     21.00 |     62.00 |     83.00 |    117.00 |     985.00 | ▇▁▁▁▁ |
| ROOMNUMBER                    |         0 |          1.00 |      2.58 |      1.24 |      0.00 |      2.00 |      3.00 |      3.00 |      93.00 | ▇▁▁▁▁ |
| BATHNUMBER                    |         0 |          1.00 |      1.59 |      0.84 |      0.00 |      1.00 |      1.00 |      2.00 |      20.00 | ▇▁▁▁▁ |
| HASTERRACE                    |         0 |          1.00 |      0.36 |      0.48 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▅ |
| HASLIFT                       |         0 |          1.00 |      0.70 |      0.46 |      0.00 |      0.00 |      1.00 |      1.00 |       1.00 | ▃▁▁▁▇ |
| HASAIRCONDITIONING            |         0 |          1.00 |      0.45 |      0.50 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▆ |
| AMENITYID                     |         0 |          1.00 |      2.92 |      0.31 |      1.00 |      3.00 |      3.00 |      3.00 |       3.00 | ▁▁▁▁▇ |
| HASPARKINGSPACE               |         0 |          1.00 |      0.23 |      0.42 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| ISPARKINGSPACEINCLUDEDINPRICE |         0 |          1.00 |      0.23 |      0.42 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| PARKINGSPACEPRICE             |         0 |          1.00 |    719.87 |   7513.88 |      1.00 |      1.00 |      1.00 |      1.00 |  925001.00 | ▇▁▁▁▁ |
| HASNORTHORIENTATION           |         0 |          1.00 |      0.11 |      0.31 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASSOUTHORIENTATION           |         0 |          1.00 |      0.24 |      0.42 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASEASTORIENTATION            |         0 |          1.00 |      0.20 |      0.40 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASWESTORIENTATION            |         0 |          1.00 |      0.15 |      0.36 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASBOXROOM                    |         0 |          1.00 |      0.26 |      0.44 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▃ |
| HASWARDROBE                   |         0 |          1.00 |      0.57 |      0.49 |      0.00 |      0.00 |      1.00 |      1.00 |       1.00 | ▆▁▁▁▇ |
| HASSWIMMINGPOOL               |         0 |          1.00 |      0.15 |      0.36 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASDOORMAN                    |         0 |          1.00 |      0.25 |      0.43 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASGARDEN                     |         0 |          1.00 |      0.18 |      0.39 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| ISDUPLEX                      |         0 |          1.00 |      0.03 |      0.16 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISSTUDIO                      |         0 |          1.00 |      0.03 |      0.16 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISINTOPFLOOR                  |         0 |          1.00 |      0.02 |      0.15 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| CONSTRUCTIONYEAR              |     55873 |          0.41 |   1964.69 |     55.89 |      1.00 |   1955.00 |   1968.00 |   1987.00 |    2291.00 | ▁▁▁▁▇ |
| FLOORCLEAN                    |      3846 |          0.96 |      2.75 |      2.26 |     -1.00 |      1.00 |      2.00 |      4.00 |      11.00 | ▇▇▆▁▁ |
| FLATLOCATIONID                |      6387 |          0.93 |      1.14 |      0.34 |      1.00 |      1.00 |      1.00 |      1.00 |       2.00 | ▇▁▁▁▁ |
| CADCONSTRUCTIONYEAR           |         0 |          1.00 |   1965.70 |     29.11 |   1623.00 |   1955.00 |   1967.00 |   1984.00 |    2018.00 | ▁▁▁▂▇ |
| CADMAXBUILDINGFLOOR           |         0 |          1.00 |      6.38 |      2.85 |      0.00 |      5.00 |      6.00 |      8.00 |      26.00 | ▇▇▁▁▁ |
| CADDWELLINGCOUNT              |         0 |          1.00 |     39.19 |     54.25 |      1.00 |     12.00 |     21.00 |     40.00 |    1499.00 | ▇▁▁▁▁ |
| CADASTRALQUALITYID            |         1 |          1.00 |      4.85 |      1.46 |      0.00 |      4.00 |      5.00 |      6.00 |       9.00 | ▁▃▇▆▁ |
| BUILTTYPEID_1                 |         0 |          1.00 |      0.03 |      0.17 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| BUILTTYPEID_2                 |         0 |          1.00 |      0.19 |      0.39 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| BUILTTYPEID_3                 |         0 |          1.00 |      0.78 |      0.41 |      0.00 |      1.00 |      1.00 |      1.00 |       1.00 | ▂▁▁▁▇ |
| DISTANCE_TO_CITY_CENTER       |         0 |          1.00 |      4.49 |      2.99 |      0.01 |      2.41 |      4.12 |      6.21 |     415.75 | ▇▁▁▁▁ |
| DISTANCE_TO_METRO             |         0 |          1.00 |      0.48 |      1.43 |      0.00 |      0.21 |      0.33 |      0.52 |     399.48 | ▇▁▁▁▁ |
| DISTANCE_TO_CASTELLANA        |         0 |          1.00 |      2.68 |      2.58 |      0.00 |      1.04 |      1.96 |      3.84 |     412.80 | ▇▁▁▁▁ |
| LONGITUDE                     |         0 |          1.00 |     -3.69 |      0.04 |     -3.83 |     -3.71 |     -3.69 |     -3.67 |      -2.75 | ▇▁▁▁▁ |
| LATITUDE                      |         0 |          1.00 |     40.42 |      0.04 |     36.76 |     40.40 |     40.42 |     40.44 |      40.52 | ▁▁▁▁▇ |

``` r
Barcelona_Sale |>
  sf::st_drop_geometry() |> 
  skimr::skim()
```

|                                                  |                            |
|:-------------------------------------------------|:---------------------------|
| Name                                             | sf::st_drop_geometry(Barc… |
| Number of rows                                   | 61486                      |
| Number of columns                                | 41                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                            |
| Column type frequency:                           |                            |
| factor                                           | 1                          |
| numeric                                          | 40                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                            |
| Group variables                                  | None                       |

Data summary

**Variable type: factor**

| skim_variable | n_missing | complete_rate | ordered | n_unique | top_counts                      |
|:--------------|----------:|--------------:|:--------|---------:|:--------------------------------|
| ASSETID       |         0 |             1 | FALSE   |    46729 | A13: 10, A16: 9, A15: 8, A18: 8 |

**Variable type: numeric**

| skim_variable                 | n_missing | complete_rate |      mean |        sd |        p0 |       p25 |       p50 |       p75 |       p100 | hist  |
|:------------------------------|----------:|--------------:|----------:|----------:|----------:|----------:|----------:|----------:|-----------:|:------|
| PERIOD                        |         0 |          1.00 | 201808.01 |      3.75 | 201803.00 | 201803.00 | 201809.00 | 201812.00 |  201812.00 | ▆▃▁▅▇ |
| PRICE                         |         0 |          1.00 | 395770.58 | 281554.82 |  37000.00 | 230000.00 | 325000.00 | 462000.00 | 4866000.00 | ▇▁▁▁▁ |
| UNITPRICE                     |         0 |          1.00 |   4044.86 |   1190.89 |   1203.70 |   3202.57 |   3991.34 |   4841.46 |    6996.69 | ▂▆▇▅▂ |
| CONSTRUCTEDAREA               |         0 |          1.00 |     95.46 |     52.58 |     21.00 |     66.00 |     82.00 |    108.00 |     959.00 | ▇▁▁▁▁ |
| ROOMNUMBER                    |         0 |          1.00 |      2.86 |      1.13 |      0.00 |      2.00 |      3.00 |      3.00 |      40.00 | ▇▁▁▁▁ |
| BATHNUMBER                    |         0 |          1.00 |      1.52 |      0.71 |      0.00 |      1.00 |      1.00 |      2.00 |      12.00 | ▇▁▁▁▁ |
| HASTERRACE                    |         0 |          1.00 |      0.33 |      0.47 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▃ |
| HASLIFT                       |         0 |          1.00 |      0.74 |      0.44 |      0.00 |      0.00 |      1.00 |      1.00 |       1.00 | ▃▁▁▁▇ |
| HASAIRCONDITIONING            |         0 |          1.00 |      0.47 |      0.50 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▇ |
| AMENITYID                     |         0 |          1.00 |      2.86 |      0.45 |      1.00 |      3.00 |      3.00 |      3.00 |       3.00 | ▁▁▁▁▇ |
| HASPARKINGSPACE               |         0 |          1.00 |      0.08 |      0.27 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISPARKINGSPACEINCLUDEDINPRICE |         0 |          1.00 |      0.08 |      0.27 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| PARKINGSPACEPRICE             |         0 |          1.00 |    620.41 |   4896.31 |      1.00 |      1.00 |      1.00 |      1.00 |  425001.00 | ▇▁▁▁▁ |
| HASNORTHORIENTATION           |         0 |          1.00 |      0.13 |      0.34 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASSOUTHORIENTATION           |         0 |          1.00 |      0.31 |      0.46 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▃ |
| HASEASTORIENTATION            |         0 |          1.00 |      0.24 |      0.43 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASWESTORIENTATION            |         0 |          1.00 |      0.16 |      0.36 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASBOXROOM                    |         0 |          1.00 |      0.12 |      0.32 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASWARDROBE                   |         0 |          1.00 |      0.30 |      0.46 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▃ |
| HASSWIMMINGPOOL               |         0 |          1.00 |      0.03 |      0.16 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASDOORMAN                    |         0 |          1.00 |      0.08 |      0.28 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASGARDEN                     |         0 |          1.00 |      0.04 |      0.19 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISDUPLEX                      |         0 |          1.00 |      0.03 |      0.16 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISSTUDIO                      |         0 |          1.00 |      0.02 |      0.13 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISINTOPFLOOR                  |         0 |          1.00 |      0.02 |      0.14 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| CONSTRUCTIONYEAR              |     22974 |          0.63 |   1952.58 |     49.83 |     19.00 |   1934.00 |   1965.00 |   1975.00 |    2093.00 | ▁▁▁▁▇ |
| FLOORCLEAN                    |      4253 |          0.93 |      2.87 |      2.20 |     -1.00 |      1.00 |      2.00 |      4.00 |      11.00 | ▇▇▆▁▁ |
| FLATLOCATIONID                |      7772 |          0.87 |      1.09 |      0.29 |      1.00 |      1.00 |      1.00 |      1.00 |       2.00 | ▇▁▁▁▁ |
| CADCONSTRUCTIONYEAR           |         0 |          1.00 |   1952.19 |     37.34 |   1588.00 |   1932.00 |   1963.00 |   1974.00 |    2018.00 | ▁▁▁▂▇ |
| CADMAXBUILDINGFLOOR           |         0 |          1.00 |      6.85 |      2.68 |      0.00 |      5.00 |      6.00 |      9.00 |      34.00 | ▇▇▁▁▁ |
| CADDWELLINGCOUNT              |         0 |          1.00 |     28.56 |     41.30 |      1.00 |     11.00 |     17.00 |     31.00 |     505.00 | ▇▁▁▁▁ |
| CADASTRALQUALITYID            |         0 |          1.00 |      4.31 |      1.30 |      0.00 |      3.00 |      4.00 |      5.00 |       9.00 | ▁▅▇▃▁ |
| BUILTTYPEID_1                 |         0 |          1.00 |      0.01 |      0.11 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| BUILTTYPEID_2                 |         0 |          1.00 |      0.17 |      0.38 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| BUILTTYPEID_3                 |         0 |          1.00 |      0.82 |      0.39 |      0.00 |      1.00 |      1.00 |      1.00 |       1.00 | ▂▁▁▁▇ |
| DISTANCE_TO_CITY_CENTER       |         0 |          1.00 |      2.80 |      1.56 |      0.05 |      1.56 |      2.62 |      3.78 |       9.06 | ▇▇▅▁▁ |
| DISTANCE_TO_METRO             |         0 |          1.00 |      0.27 |      0.16 |      0.00 |      0.16 |      0.25 |      0.35 |       4.10 | ▇▁▁▁▁ |
| DISTANCE_TO_DIAGONAL          |         0 |          1.00 |      1.77 |      1.15 |      0.00 |      0.90 |      1.65 |      2.38 |       7.24 | ▇▇▂▁▁ |
| LONGITUDE                     |         0 |          1.00 |      2.17 |      0.02 |      2.09 |      2.15 |      2.17 |      2.18 |       2.22 | ▁▃▇▇▂ |
| LATITUDE                      |         0 |          1.00 |     41.40 |      0.02 |     41.33 |     41.38 |     41.40 |     41.41 |      41.47 | ▁▅▇▃▁ |

``` r
Valencia_Sale |>
  sf::st_drop_geometry() |> 
  skimr::skim()
```

|                                                  |                            |
|:-------------------------------------------------|:---------------------------|
| Name                                             | sf::st_drop_geometry(Vale… |
| Number of rows                                   | 33622                      |
| Number of columns                                | 41                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                            |
| Column type frequency:                           |                            |
| factor                                           | 1                          |
| numeric                                          | 40                         |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                            |
| Group variables                                  | None                       |

Data summary

**Variable type: factor**

| skim_variable | n_missing | complete_rate | ordered | n_unique | top_counts                      |
|:--------------|----------:|--------------:|:--------|---------:|:--------------------------------|
| ASSETID       |         0 |             1 | FALSE   |    27391 | A83: 10, A28: 8, A17: 7, A10: 6 |

**Variable type: numeric**

| skim_variable                 | n_missing | complete_rate |      mean |        sd |        p0 |       p25 |       p50 |       p75 |       p100 | hist  |
|:------------------------------|----------:|--------------:|----------:|----------:|----------:|----------:|----------:|----------:|-----------:|:------|
| PERIOD                        |         0 |          1.00 | 201808.17 |      3.78 | 201803.00 | 201803.00 | 201809.00 | 201812.00 |  201812.00 | ▅▂▁▃▇ |
| PRICE                         |         0 |          1.00 | 199678.31 | 177156.03 |  20000.00 |  99000.00 | 151000.00 | 234000.00 | 2772000.00 | ▇▁▁▁▁ |
| UNITPRICE                     |         0 |          1.00 |   1714.54 |    850.81 |    480.69 |   1112.50 |   1531.25 |   2114.29 |    9421.82 | ▇▂▁▁▁ |
| CONSTRUCTEDAREA               |         0 |          1.00 |    108.95 |     47.29 |     24.00 |     80.00 |    100.00 |    123.00 |     912.00 | ▇▁▁▁▁ |
| ROOMNUMBER                    |         0 |          1.00 |      3.07 |      1.09 |      0.00 |      3.00 |      3.00 |      4.00 |      81.00 | ▇▁▁▁▁ |
| BATHNUMBER                    |         0 |          1.00 |      1.59 |      0.64 |      0.00 |      1.00 |      2.00 |      2.00 |      12.00 | ▇▁▁▁▁ |
| HASTERRACE                    |         0 |          1.00 |      0.25 |      0.44 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▃ |
| HASLIFT                       |         0 |          1.00 |      0.79 |      0.41 |      0.00 |      1.00 |      1.00 |      1.00 |       1.00 | ▂▁▁▁▇ |
| HASAIRCONDITIONING            |         0 |          1.00 |      0.47 |      0.50 |      0.00 |      0.00 |      0.00 |      1.00 |       1.00 | ▇▁▁▁▇ |
| AMENITYID                     |         0 |          1.00 |      2.78 |      0.53 |      1.00 |      3.00 |      3.00 |      3.00 |       3.00 | ▁▁▁▁▇ |
| HASPARKINGSPACE               |         0 |          1.00 |      0.17 |      0.37 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| ISPARKINGSPACEINCLUDEDINPRICE |         0 |          1.00 |      0.17 |      0.37 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| PARKINGSPACEPRICE             |         0 |          1.00 |    740.17 |   5476.77 |      1.00 |      1.00 |      1.00 |      1.00 |  355001.00 | ▇▁▁▁▁ |
| HASNORTHORIENTATION           |         0 |          1.00 |      0.13 |      0.34 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASSOUTHORIENTATION           |         0 |          1.00 |      0.19 |      0.39 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASEASTORIENTATION            |         0 |          1.00 |      0.25 |      0.43 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASWESTORIENTATION            |         0 |          1.00 |      0.15 |      0.36 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▂ |
| HASBOXROOM                    |         0 |          1.00 |      0.13 |      0.34 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASWARDROBE                   |         0 |          1.00 |      0.53 |      0.50 |      0.00 |      0.00 |      1.00 |      1.00 |       1.00 | ▇▁▁▁▇ |
| HASSWIMMINGPOOL               |         0 |          1.00 |      0.07 |      0.26 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASDOORMAN                    |         0 |          1.00 |      0.05 |      0.22 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| HASGARDEN                     |         0 |          1.00 |      0.06 |      0.24 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISDUPLEX                      |         0 |          1.00 |      0.02 |      0.13 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISSTUDIO                      |         0 |          1.00 |      0.01 |      0.08 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| ISINTOPFLOOR                  |         0 |          1.00 |      0.01 |      0.12 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| CONSTRUCTIONYEAR              |     13201 |          0.61 |   1969.43 |     57.17 |     11.00 |   1962.00 |   1970.00 |   1983.00 |    2020.00 | ▁▁▁▁▇ |
| FLOORCLEAN                    |      1730 |          0.95 |      3.55 |      2.44 |     -1.00 |      2.00 |      3.00 |      5.00 |      11.00 | ▆▇▇▂▁ |
| FLATLOCATIONID                |      5404 |          0.84 |      1.05 |      0.22 |      1.00 |      1.00 |      1.00 |      1.00 |       2.00 | ▇▁▁▁▁ |
| CADCONSTRUCTIONYEAR           |         0 |          1.00 |   1970.55 |     24.05 |   1591.00 |   1961.00 |   1970.00 |   1983.00 |    2018.00 | ▁▁▁▁▇ |
| CADMAXBUILDINGFLOOR           |         0 |          1.00 |      7.04 |      2.89 |      0.00 |      5.00 |      7.00 |      8.00 |      33.00 | ▇▇▁▁▁ |
| CADDWELLINGCOUNT              |         0 |          1.00 |     36.83 |     45.11 |      1.00 |     12.00 |     22.00 |     43.00 |     556.00 | ▇▁▁▁▁ |
| CADASTRALQUALITYID            |         0 |          1.00 |      5.34 |      1.58 |      0.00 |      4.00 |      5.00 |      7.00 |       9.00 | ▁▂▇▇▂ |
| BUILTTYPEID_1                 |         0 |          1.00 |      0.03 |      0.18 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| BUILTTYPEID_2                 |         0 |          1.00 |      0.13 |      0.34 |      0.00 |      0.00 |      0.00 |      0.00 |       1.00 | ▇▁▁▁▁ |
| BUILTTYPEID_3                 |         0 |          1.00 |      0.83 |      0.37 |      0.00 |      1.00 |      1.00 |      1.00 |       1.00 | ▂▁▁▁▇ |
| DISTANCE_TO_CITY_CENTER       |         0 |          1.00 |      2.09 |      0.97 |      0.00 |      1.36 |      2.12 |      2.77 |       5.67 | ▃▇▇▂▁ |
| DISTANCE_TO_METRO             |         0 |          1.00 |      0.64 |      0.42 |      0.00 |      0.33 |      0.54 |      0.87 |       2.86 | ▇▅▂▁▁ |
| DISTANCE_TO_BLASCO            |         0 |          1.00 |      2.07 |      1.09 |      0.00 |      1.22 |      2.01 |      2.84 |       5.02 | ▅▇▇▅▁ |
| LONGITUDE                     |         0 |          1.00 |     -0.38 |      0.02 |     -0.42 |     -0.39 |     -0.38 |     -0.37 |      -0.32 | ▂▇▇▂▂ |
| LATITUDE                      |         0 |          1.00 |     39.47 |      0.01 |     39.44 |     39.46 |     39.47 |     39.48 |      39.50 | ▂▆▇▃▃ |

## Neighboorhood polygons

The second block of data included in the ‘idealista18’ R package is the
spatial features of the three cities divided into neighborhoods. There
is an sf object for each city with the name of the city and the suffix
’\_Polygons’. Figure shows the quantile maps of the number of dwellings
in the listing for the different neighborhoods in the three cities. The
neighborhoods are based on the official boundaries but slightly changed
by Idealista. In practical terms, we can assume they are the same since
the website combines areas when there are few ads for that area. In the
case of Madrid, they combined four areas into two.

There are a total of 69 neighborhoods in Barcelona, 135 in Madrid, and
73 in Valencia. The sf object includes a unique identifier (LOCATIONID)
and the neighborhood name (LOCATIONNAME).

## Points of Interest

The last block of data included in the data package is a set of Points
of Interest in each city as an object of the class list. The name of the
list includes the name of the city with the suffix ’\_POIS’. These lists
include three elements: (i) the coordinates of the city center, the
central business district; (ii) a set of coordinates that define the
main street of each city; and (iii) the coordinates of the metro
stations.
