We identified 22 R packages on CRAN that deal with US Census data. Since the
Guide is intended to be a brief introduction to the field, we felt that simply
listing 22 packages in alphabetical order (as they appear on CRAN) might not
be useful to our readers. Our concern with presenting the information in this
way was that it might overwhelm our readers and not provide sufficient guidance to them.

## Determining Which Packages to Include

In searching for a better way to discuss the packages we started by writing
a script (included at the bottom of this page) to analyze how many downloads each package in our list had in the last year. Here are the results:

```
#    package            annual_downloads percent
#    <chr>                         <dbl>   <dbl>
#  1 tigris                        40646      22
#  2 acs                           39077      21
#  3 choroplethr                   31225      17
#  4 tidycensus                    15044       8
#  5 choroplethrMaps               13383       7
#  6 censusapi                      7260       4
#  7 ipumsr                         5857       3
#  8 UScensus2010                   4280       2
#  9 noncensus                      4206       2
# 10 UScensus2000tract              3278       2
# 11 census                         2918       2
# 12 idbr                           2856       2
# 13 UScensus2000cdp                2800       1
# 14 totalcensus                    2524       1
# 15 censusGeography                2013       1
# 16 SeerMapper                     1529       1
# 17 SeerMapperWest                 1506       1
# 18 SeerMapperRegs                 1481       1
# 19 SeerMapper2010Regs             1477       1
# 20 SeerMapper2010East             1475       1
# 21 SeerMapperEast                 1473       1
# 22 SeerMapper2010West             1468       1
```

This data shows that some packages in our list are much more popular than others.

At this point we started considering listing only the five most popular packages
in the main Guide, and including the full list in a separate page. This would
mirror how the Guide treats the 100+ programs that Census conducts: there we
include only the five most popular programs, and include a link to the full list
of programs.

The problem with this approach is that we believe that two packages outside the
top five have important functionality that is not that is not present in any of the top five packages. Furthermore, we believed that this functionality would likely be of interest to readers of the Guide.

Those two packages are:

1. `censusapi` which aims to provide access to the entirety of the Census Bureau's API.
2. `ipumsr` which facilitates working with data from [IPUMS](https://www.ipums.org/).

This is why the main text of the Guide contains a list of the seven packages that it does, and includes them in the order that it does.

## Determining How to Describe Packages

In the original draft of this Guide we copied the package descriptions which appear on CRAN verbatim. However, we were concerned that those descriptions might be too sparse. So we invited the package authors to, if they wish, modify the descriptions.

As an example of this difference, here is how the `ipumsr` package is describe on CRAN:

> ipumsr: Read 'IPUMS' Extract Files

> An easy way to import census, survey and geographic data provided by 'IPUMS' into R plus tools to help use the associated metadata to make analysis easier. 'IPUMS' data describing 1.4 billion individuals drawn from over 750 censuses and surveys is available free of charge from our website <https://ipums.org>.

And here is how the same package is described in the Guide:

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

## Script to Determine Package Downloads

Below is the script which we used to determine the number of downloads in each of the R packages which we identified as working with Census data.

```
library(cranlogs)
library(tidyverse)

# 22 packages that, based on their description, appear related to US
# census data
packages = c("acs",
             "census",
             "censusapi",
             "censusGeography",
             "choroplethr",
             "choroplethrMaps",
             "idbr",
             "ipumsr",
             "noncensus",
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
             "UScensus2010")

# use last year's data
df = cran_downloads(packages=packages, from="2017-10-24", to="2018-10-24")

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

The output of the script is as follows:
````
#    package            annual_downloads percent
#    <chr>                         <dbl>   <dbl>
#  1 tigris                        40646      22
#  2 acs                           39077      21
#  3 choroplethr                   31225      17
#  4 tidycensus                    15044       8
#  5 choroplethrMaps               13383       7
#  6 censusapi                      7260       4
#  7 ipumsr                         5857       3
#  8 UScensus2010                   4280       2
#  9 noncensus                      4206       2
# 10 UScensus2000tract              3278       2
# 11 census                         2918       2
# 12 idbr                           2856       2
# 13 UScensus2000cdp                2800       1
# 14 totalcensus                    2524       1
# 15 censusGeography                2013       1
# 16 SeerMapper                     1529       1
# 17 SeerMapperWest                 1506       1
# 18 SeerMapperRegs                 1481       1
# 19 SeerMapper2010Regs             1477       1
# 20 SeerMapper2010East             1475       1
# 21 SeerMapperEast                 1473       1
# 22 SeerMapper2010West             1468       1
```
