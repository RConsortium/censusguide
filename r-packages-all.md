Below is the list of all 22 R packages on [CRAN](https://cran.r-project.org/) that we were able to identify as working with data from the US Census Bureau. They are presented in alphabetical order along with the descriptions as they appear on CRAN. Additionally, each package listed here has a link back to the original page on CRAN.

1. [acs](https://cran.r-project.org/web/packages/acs/index.html)

    _Download, Manipulate, and Present American Community Survey and Decennial Data from the US Census_

    Provides a general toolkit for downloading, managing, analyzing, and presenting data from the U.S. Census (<https://www.census.gov/data/developers/data-sets.html>), including SF1 (Decennial short-form), SF3 (Decennial long-form), and the American Community Survey (ACS). Confidence intervals provided with ACS data are converted to standard errors to be bundled with estimates in complex acs objects. Package provides new methods to conduct standard operations on acs objects and present/plot data in statistically appropriate ways.

2. [census](https://cran.r-project.org/web/packages/census/index.html)

    _Scrape US Census Data_

    A scraper to collect US Census data from the American Community Survey (ACS) data and metadata. Available datasets include population, income, education and employment levels by age, sex and race. See <http://mcdc.missouri.edu/websas/caps10acsb.html> for more information. Unlike other census related packages, this package does not require a U.S. Census Bureau API.


3. [censusapi](https://cran.r-project.org/web/packages/censusapi/index.html)

    _Retrieve Data from the Census APIs_

    A wrapper for the U.S. Census Bureau APIs that returns data frames of Census data and metadata. Available datasets include the Decennial Census, American Community Survey, Small Area Health Insurance Estimates, Small Area Income and Poverty Estimates, and Population Estimates and Projections. See <https://www.census.gov/data/developers/data-sets.html> for more information.

4. [censusGeography](https://cran.r-project.org/web/packages/censusGeography/index.html)

    _Changes United States Census Geographic Code into Name of Location_

    Converts the United States Census geographic code for city, state (FIP and ICP), region, and birthplace, into the name of the region. e.g. takes an input of Census city code 5330 to it's actual city, Philadelphia. Will return NA for code that doesn't correspond to real location.

5. [choroplethr](https://cran.r-project.org/web/packages/choroplethr/index.html)

    _Simplify the Creation of Choropleth Maps in R_

    Choropleths are thematic maps where geographic regions, such as states, are colored according to some metric, such as the number of people who live in that state. This package simplifies this process by 1. Providing ready-made functions for creating choropleths of common maps. 2. Providing data and API connections to interesting data sources for making choropleths. 3. Providing a framework for creating choropleths from arbitrary shapefiles. 4. Overlaying those maps over reference maps from Google Maps.

6. [choroplethrMaps](https://cran.r-project.org/web/packages/choroplethrMaps/index.html)

    _Contains Maps Used by the 'choroplethr' Package_

    Contains 3 maps. 1) US States 2) US Counties 3) Countries of the world.

7. [idbr](https://cran.r-project.org/web/packages/idbr/index.html)

    _R Interface to the US Census Bureau International Data Base API_

    Use R to make requests to the US Census Bureau's International Data Base API. Results are returned as R data frames. For more information about the IDB API, visit <http://www.census.gov/data/developers/data-sets/international-database.html>.

8. [ipumsr](https://cran.r-project.org/web/packages/ipumsr/index.html)

   _Read 'IPUMS' Extract Files_

   An easy way to import census, survey and geographic data provided by 'IPUMS' into R plus tools to help use the associated metadata to make analysis easier. 'IPUMS' data describing 1.4 billion individuals drawn from over 750 censuses and surveys is available free of charge from our website <https://ipums.org>.

8. [noncensus](https://cran.r-project.org/web/packages/noncensus/index.html)

    _U.S. Census Regional and Demographic Data_

    A collection of various regional information determined by the U.S. Census Bureau along with demographic data.

9. [SeerMapper](https://cran.r-project.org/web/packages/SeerMapper/index.html)

    _A Quick Way to Map U.S. Rates and Data of U. S. States, Counties, Census Tracts, or Seer Registries using 2000 and 2010 U. S. Census Boundaries_

    Provides an easy way to map seer registry area rate data on a U. S, map. The U. S. data may be mapped at the state, U. S. NCI Seer Register, state/county or census tract level. The function can categorize the data into ""n"" quantiles, where ""n"" is 3 to 11 or the caller can specify a cut point list for the categorizes. The caller can also provide the data and the comparison operation to request hatching over any areas. The default operation and value are > 0.05 (p-values). The location id provided in the data determines the geographic level of the mapping. If states, state/counties or census tracts are being mapped, the location ids used must be the U.S. FIPS codes for states (2 digits), state/counties (5 digits) or state/county/census tracts (11 digits). If the location id references the U.S. Seer Registry areas, the Seer Registry area identifier used to link the data to the geographical areas, then the location id is the Seer Registry name or abbreviation. Additional parameters are used to provide control over the drawing of the boundaries at the data's boundary level and higher levels. The package uses modified boundary data from the 2000 and 2010 U. S. Census to reduce the storage requirements and improve drawing speed. The 'SeerMapper' package contains the U. S. Census 2000 and 2010 boundary data for the regional, state, Seer Registry, and county levels. Six supplement packages contain the census tract boundary data (see manual for more details.)

10. [SeerMapper2010East](https://cran.r-project.org/web/packages/SeerMapper2010East/index.html)

    _Supplemental U. S. 2010 Census Tract Boundaries for 23 Eastern States without Registries for 'SeerMapper'_

    Provides supplemental 2010 census tract boundary package for 23 states without Seer Registries that are east of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in public domain.

11. [SeerMapper2010Regs](https://cran.r-project.org/web/packages/SeerMapper2010Regs/index.html)

    _Supplemental U. S. 2010 Census Tract Boundaries for 15 States with Seer Registries for 'SeerMapper'_

    Provides supplemental 2010 census tract boundaries of the 15 states containing Seer Registries for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. 2010 Census data and is in public domain.

12. [SeerMapper2010West](https://cran.r-project.org/web/packages/SeerMapper2010West/index.html)

    _Supplemental U.S. 2010 Census Tract Boundaries for 14 Western States without Seer Registries for 'SeerMapper'_

    Provides supplemental 2010 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. 2010 Census data and is in public domain.

13. [SeerMapperEast](https://cran.r-project.org/web/packages/SeerMapperEast/index.html)

    _Supplemental U. S. 2000 Census Tract Boundaries for 23 Eastern States without Seer Registries_

    Provides supplemental 2000 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.

14. [SeerMapperRegs](https://cran.r-project.org/web/packages/SeerMapperRegs/index.html)

    _Supplemental U. S. 2000 Census Tract Boundary for 15 States with Seer Registries for 'SeerMapper'_

    Provides supplemental 2000 census tract boundaries for the 15 states containing Seer Registries for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.

15. [SeerMapperWest](https://cran.r-project.org/web/packages/SeerMapperWest/index.html)

    _Supplemental U.S. 2000 Census Tract Boundaries for 14 Western States without Seer Registries for 'SeerMapper'_

    Provides supplemental 2000 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.

16. [tidycensus](https://cran.r-project.org/web/packages/tidycensus/index.html)

    _Load US Census Boundary and Attribute Data as 'tidyverse' and 'sf'-Ready Data Frames_

    An integrated R interface to the decennial US Census and American Community Survey APIs and the US Census Bureau's geographic boundary files. Allows R users to return Census and ACS data as tidyverse-ready data frames, and optionally returns a list-column with feature geometry for many geographies.

17. [tigris](https://cran.r-project.org/web/packages/tigris/index.html)

    _Load Census TIGER/Line Shapefiles_

    Download TIGER/Line shapefiles from the United States Census Bureau (<https://www.census.gov/geo/maps-data/data/tiger-line.html>) and load into R as 'SpatialDataFrame' or 'sf' objects.

18. [totalcensus](https://cran.r-project.org/web/packages/totalcensus/index.html)

    _Extract High Resolution Census Data_

    Download summary files from Census Bureau <https://www2.census.gov/> and extract data, in particular high resolution data at block, block group, and tract level, from decennial census and American Community Survey 1-year and 5-year estimates.

19. [UScensus2000cdp](https://cran.r-project.org/web/packages/UScensus2000cdp/index.html)

    _US Census 2000 Designated Places Shapefiles and Additional Demographic Data_

    US Census 2000 Designated Places shapefiles and additional demographic data from the SF1 100 percent files. This data set contains polygon files in lat/lon coordinates and the corresponding demographic data for a number of different variables.

20. [UScensus2000tract](https://cran.r-project.org/web/packages/UScensus2000tract/index.html)

    _US Census 2000 Tract Level Shapefiles and Additional Demographic Data_

    US 2000 Census Tract shapefiles and additional demographic data from the SF1 100 percent files. This data set contains polygon files in lat/lon coordinates and the corresponding demographic data for a number of different variables.

21. [UScensus2010](https://cran.r-project.org/web/packages/UScensus2010/index.html)

    _US Census 2010 Suite of R Packages_

    US Census 2010 shape files and additional demographic data from the SF1 100 percent files. This package contains a number of helper functions for the UScensus2010blk, UScensus2010blkgrp, UScensus2010tract, UScensus2010cdp packages.
