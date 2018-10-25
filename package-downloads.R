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
  summarize(q3_downloads = sum(count)) %>%
  arrange(-q3_downloads) %>%
  print(n = Inf)

print(df2, n = Inf)
# # A tibble: 22 x 2
# package               q3_downloads
# <chr>                        <dbl>
# 1 tigris                     40646
# 2 acs                        39077
# 3 choroplethr                31225
# 4 tidycensus                 15044
# 5 choroplethrMaps            13383
# 6 censusapi                   7260
# 7 ipumsr                      5857
# 8 UScensus2010                4280
# 9 noncensus                   4206
# 10 UScensus2000tract          3278
# 11 census                     2918
# 12 idbr                       2856
# 13 UScensus2000cdp            2800
# 14 totalcensus                2524
# 15 censusGeography            2013
# 16 SeerMapper                 1529
# 17 SeerMapperWest             1506
# 18 SeerMapperRegs             1481
# 19 SeerMapper2010Regs         1477
# 20 SeerMapper2010East         1475
# 21 SeerMapperEast             1473
# 22 SeerMapper2010West         1468
