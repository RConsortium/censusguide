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