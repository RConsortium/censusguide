We identified 22 R packages on CRAN that deal with US Census data. Since the
Guide is intended to be a brief introduction to the field, we felt that simply
listing these packages in alphabetical order, along with a brief description, might not provide the best value to readers. In particular, we were concerned that it might overwhelm readers and not provide sufficient guidance.

In the end we decided to:

1. Include a list of the five most popular packages in the main text of the Guide. Sort this list by the number of downloads each package had in the last year.
1. Include additional packages which have important functionality that is not present in the original list.
1. Default to describing these packages as CRAN does. Allow package authors to modify these descriptions.
1. List all 22 packages in a separate page.

## Measuring Package Popularity

We used the following script to determine the number of downloads each package had in the last year:

```
library(cranlogs)
library(tidyverse)

# 33 packages that, based on their description, appear related to US
# census data
packages = c("acs",
             "cdltools",
"censable",
             "census",
             "censusapi",
             "censusGeography",
             "censusr",
             "choroplethr",
             "choroplethrMaps",
             "cpsR",
             "cpsvote",
             "easycensus",
             "idbr",
             "ipumsr",
             "noncensus",
             "ppmf",
             "predictrace",
             "SeerMapper",
             "SeerMapper2010East",
             "SeerMapper2010Regs",
             "SeerMapper2010West",
             "SeerMapperEast",
             "SeerMapperRegs",
             "SeerMapperWest",
             "tidycensus",
             "tigris",
             "totalcensus",
             "UScensus2000cdp",
             "UScensus2000tract",
             "UScensus2010",
             "usdata",
             "us.census.geoheader",
             "zctaCrosswalk")

# use last year's data
df = cran_downloads(packages=packages, from="2017-10-24", to="2024-05-31")

# sort by package
df2 = df %>%
  group_by(package) %>%
  summarize(annual_downloads = sum(count))

total_downloads = sum(df2$annual_downloads)
df2$percent = round(df2$annual_downloads / total_downloads * 100)

df2 %>%
  arrange(-annual_downloads) %>%
  print(n = Inf)
```

The script gives us the following output:
```
#     package             annual_downloads percent
#     <chr>                          <dbl>   <dbl>
#   1 tigris                        727026      24
#   2 tidycensus                    526920      18
#   3 usdata                        265676       9
#   4 choroplethr                   199049       7
#   5 acs                           192425       6
#   6 ipumsr                        190174       6
#   7 censusapi                     139707       5
#   8 choroplethrMaps               133883       4
#   9 noncensus                      99437       3
#  10 totalcensus                    73907       2
#  11 UScensus2010                   36945       1
#  12 idbr                           36860       1
#  13 censusr                        32909       1
#  14 UScensus2000tract              27003       1
#  15 censusGeography                26732       1
#  16 UScensus2000cdp                25146       1
#  17 SeerMapper                     24432       1
#  18 SeerMapper2010Regs             24308       1
#  19 SeerMapper2010West             24266       1
#  20 SeerMapperWest                 24207       1
#  21 SeerMapper2010East             24093       1
#  22 SeerMapperEast                 23988       1
#  23 SeerMapperRegs                 23897       1
#  24 predictrace                    21903       1
#  25 censable                       12691       0
#  26 cpsvote                        11287       0
#  27 cpsR                           10301       0
#  28 us.census.geoheader             9546       0
#  29 easycensus                      7278       0
#  30 ppmf                            6227       0
#  31 census                          5047       0
#  32 zctaCrosswalk                   2552       0
#  33 cdltools                           0       0
```

This data shows that some packages in our list are much more popular than others. Additionally, popularity decreasing sharply.

At this point we considered listing only the five most popular packages
in the main page of the Guide. This would
mirror how the Guide treats the 100+ programs that Census conducts. There we
include only the five most popular programs in the main body of the text. But we also include a link to a separate page that lists all of the programs.

## Exploring Package Functionality

The problem with only looking at package popularity is that some of the less popular packages include important functionality. In particular, we felt it was important to include the `censusapi` and `ipumsr` packages in the main body of the text because:

1. `censusapi` aims to provide access to the entirety of the Census Bureau's API. We felt that awareness of this package is important when discussing how R's package ecosystem facilitates working with the US Census Bureau. While most of the packages in the list already provided access to some of the Census Bureau's API, none of them provide access to all of it.
2. `ipumsr` facilitates working with data from IPUMS (Integrated Public Use Microdata Series). IPUMS is the world's largest individual-level population database, and is an important resource in the US Census ecosystem. None of the packages in our original list provided this functionality.

## Describing Packages

In the original draft of this Guide we copied the package descriptions which appear on CRAN verbatim. However, we were concerned that those descriptions might be too sparse. So we invited the package authors to modify them.

As an example of this difference, here is how the `ipumsr` package is
described on CRAN:

> ipumsr: Read 'IPUMS' Extract Files    
>        
> An easy way to import census, survey and geographic data provided by 'IPUMS' into R plus tools to help use the associated metadata to make analysis easier. 'IPUMS' data describing 1.4 billion individuals drawn from over 750 censuses and surveys is available free of charge from our website <https://ipums.org>.

And here is how package is described in the Guide:

> [ipumsr](https://cran.r-project.org/web/packages/ipumsr/index.html). The ipumsr package assists in the import and use of IPUMS extracts in R. IPUMS
data is a repackaging of census and survey data from around the world to a
format harmonized across space and time and with enhanced
documentation. With IPUMS data, it easy to study change, conduct comparative
research, merge information across data types, and analyze individuals within
family and community context. Users can go to the
[IPUMS website](https://usa.ipums.org) and create an extract with only the
samples and variables they are interested in, and then import their downloaded
extract with the ipumsr package. Work has begun on an API for IPUMS data, but
it is not known when it will be available.
>    Several IPUMS projects include data from the US Census Bureau:
- [IPUMS USA](https://usa.ipums.org) repackages the public use microdata from the US Census and American Community Survey from 1850 to the present.
- [NHGIS](https://nhgis.org) provides population, housing, agricultural, and economic data, along with GIS-compatible boundary files, for geographic units in the United States from 1790 to the present.
- [IPUMS CPS](https://cps.ipums.org) provides the Current Population Survey
which is a monthly workforce survey conducted by the Census Bureau.
- [IPUMS International](https://international.ipums.org) includes the US Census microdata in the same format as census data from 93 other countries.
