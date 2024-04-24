## Written by Ari Lamstein and Logan Powell
### Sponsored by the R Consortium as part of the R Consortium Census Working Group

The [U.S. Census Bureau](https://census.gov/en.html) is the premier source of data about America's people, places and economy. This makes the Bureau a natural source of information for data analysts. R programmers who start working with Census Data, however, often run into two problems:

1. Understanding what data the Census Bureau publishes.

2. Understanding what packages on [CRAN](https://cran.r-project.org/) are available to help with their project.

This document aims to help R programmers who are confronted with these  problems. It has three parts:

* [Part 1: What the Census Bureau Provides](#part-1-what-the-census-bureau-provides)
* [Part 2: How CRAN Can Help](#part-2-how-cran-can-help)
* [Part 3: How to Learn More](#part-3-how-to-learn-more)

## Part 1: What the Census Bureau Provides

### Data

Broadly speaking, the Census Bureau publishes two types of data: demographic and geographic.

#### Demographic Data

The Census Bureau conducts over 100 Censuses, Surveys and Programs. You can view the full list of programs [here](https://www.census.gov/programs-surveys/surveys-programs.html).

It is beyond the scope of this document to detail each of these datasets. Instead, below we describe the five most popular Census programs as measured by a sample of API requests. (The raw data of this sampling can be viewed [here](/training-resources/popular-datasets.md)).

1. [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs/). The ACS regularly gathers information previously contained only in the long form of the decennial census, such as ancestry, educational attainment, income, language proficiency, migration, disability, employment, and housing characteristics. These data are used by many public-sector, private-sector, and not-for-profit stakeholders to allocate funding, track shifting demographics, plan for emergencies, and learn about local communities. Sent to approximately 295,000 addresses monthly (or 3.5 million per year), it is the largest household survey that the Census Bureau administers.  (Source: [Wikipedia](https://en.wikipedia.org/wiki/American_Community_Survey)).

2. [Decennial Census of Population and Housing](https://www.census.gov/programs-surveys/decennial-census.html). The Decennial Census is what most people think of when they think of "The Census". It counts each resident of the country, where they live on April 1, every ten years ending in zero. The Constitution mandates the enumeration to determine how to apportion the House of Representatives among the states. The Decennial Census is the largest peacetime mobilization in the US. (Source: [Decennial Census of Population and Housing](https://www.census.gov/programs-surveys/decennial-census.html)).

3. [Population Estimates Program (PEP)](https://www.census.gov/programs-surveys/popest.html). Each year, PEP publishes estimates of the population for the nation, states, counties, state/county equivalents, and Puerto Rico. It estimates the resident population for each year since the most recent decennial census by using measures of population change (i.,e. births, deaths and migration). The resident population includes all people currently residing in the United States. PEP estimates are used for federal funding allocations, as controls for major surveys including the Current Population Survey and the American Community Survey, for community development, to aid business planning, and as denominators for statistical rates. (Source: [PEP Methodology Paper](https://www2.census.gov/programs-surveys/popest/technical-documentation/methodology/2010-2017/2017-natstcopr-meth.pdf)).

4. [Survey of Business Owners](https://www.census.gov/programs-surveys/sbo.html). The Survey of Business Owners (SBO) provides the only comprehensive, regularly collected source of information on selected economic and demographic characteristics for businesses and business owners by gender, ethnicity, race, and veteran status. (Source: [Survey of Business Owners](https://www.census.gov/programs-surveys/sbo.html)).

5. [International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html). The International Data Base (IDB) was developed to provide access to accurate and timely demographic measures for populations around the world.  The database includes a comprehensive set of indicators, as produced by the U.S. Census Bureau since the 1960s. The IDB is updated on a regular basis to provide information needed for research, program planning, and policy-making decisions, in the U.S. and globally. (Source:
[International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html)).

#### Geographic Data

Geography is a central concept to the Census Bureau. Statistics are normally reported for either the entire nation, or some specific geographic subdivision of the country.

Most Americans can name the State, County and ZIP Code that they live in. But as the diagram below shows, the Census Bureau's geographic hierarchy is much more complex than that!
![Census Geo](census-geo.png) (Source: [Standard Hierarchy of Census Geographic Entities](https://www2.census.gov/geo/pdfs/reference/geodiagram.pdf))

Note that most datasets provide data for only a subset of these geographies. For example:
 * The Decennial Census publishes data down to Block level (the smallest geography).
 * The American Community Survey (ACS) publishes data down to the Block Group level (the level above Blocks).
 * The Population Estimates Program (PEP) only publishes data down to the county level (two levels above the Block Group level).

Census provides free access to its geographic data and products such as the TIGER/Line Shapefiles, KMLs, TIGERweb, cartographic boundary files, geographic relationship files, and reference and thematic maps. You can access this data [here](https://www.census.gov/geography.html).

### Data Dissemination

The primary tools that Census uses to disseminate its data are [data.census.gov](https://data.census.gov/) and the Census data API.

#### American Fact Finder

[American FactFinder (AFF)](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml) is a web application that can help you navigate the various datasets that Census publishes. In addition to displaying search results on the website, there is an option to download data as a CSV file which you can then import into R.

#### API

The Census Bureau has an API which provides access to many of its datasets. You can learn more about the API, including which datasets are available, [here](https://www.census.gov/developers/).

Using the API requires a getting an API Key, which you can get for free [here](https://api.census.gov/data/key_signup.html).

## Part 2: How CRAN Can Help

CRAN provides access to thousands of user
contributed R packages. We were able to identify 22
of those packages as being related to the US
Census Bureau. You can view the full list of those packages
[here](https://rconsortium.github.io/censusguide/r-packages-all.html).

Below are descriptions of a subset of those packages which we believe are likely
to be of special interest to people reading this Guide. You can learn about our methodology for deciding which
packages to include in this list
[here](https://rconsortium.github.io/censusguide/package-discussion.html).

1. [tigris](https://cran.r-project.org/web/packages/tigris/index.html). Download TIGER/Line shapefiles from the United States Census Bureau (https://www.census.gov/geo/maps-data/data/tiger-line.html) and load into R as 'SpatialDataFrame' or 'sf' objects.

2. [acs](https://cran.r-project.org/web/packages/acs/index.html). Provides a general toolkit for downloading, managing, analyzing, and presenting data from the U.S. Census (https://www.census.gov/data/developers/data-sets.html), including SF1 (Decennial short-form), SF3 (Decennial long-form), and the American Community Survey (ACS). Confidence intervals provided with ACS data are converted to standard errors to be bundled with estimates in complex acs objects. Package provides new methods to conduct standard operations on acs objects and present/plot data in statistically appropriate ways.

3. [choroplethr](https://cran.r-project.org/web/packages/choroplethr/index.html). Choroplethr facilitates creating choropleth maps of data at the State, County and Tract level through the functions `?state_choropleth`, `?county_choropleth` and `?tract_choropleth`. Choropleths are thematic maps where geographic regions, such as states, are colored according to some metric, such as the number of people who live in that state.

    In addition to being a general purpose mapping package, choroplethr provides native support for mapping data from the American Community Survey (ACS) through functions such as `?get_state_demographics` and `?get_acs_data`. You can learn more about choroplethr at [Choroplethr.com](https://www.choroplethr.com).

4. [tidycensus](https://cran.r-project.org/web/packages/tidycensus/index.html). An integrated R interface to the decennial US Census and American Community Survey APIs and the US Census Bureau's geographic boundary files. Allows R users to return Census and ACS data as tidyverse-ready data frames, and optionally returns a list-column with feature geometry for many geographies.

5. [choroplethrMaps](https://cran.r-project.org/web/packages/choroplethrMaps/index.html). choroplethrMaps contains the Census Bureau's 2010 US State Map (see `?state.map`) and 2010 US County Map (see `?county.map`). These maps were modified in order to make them easier to render (for example, islands off the coast of Alaska that cross the antimeridian were removed).

    Additional metadata about these maps can be found in `?state.regions` and `?county.regions`. You can learn more about choroplethrMaps at [Choroplethr.com](https://www.choroplethr.com).

6. [censusapi](https://cran.r-project.org/web/packages/censusapi/index.html). A wrapper for the U.S. Census Bureau APIs that returns data frames of Census data and metadata. Available datasets include the Decennial Census, American Community Survey, Small Area Health Insurance Estimates, Small Area Income and Poverty Estimates, and Population Estimates and Projections. See https://www.census.gov/data/developers/data-sets.html for more information.

7. [ipumsr](https://cran.r-project.org/web/packages/ipumsr/index.html). The ipumsr package assists in the import and use of IPUMS extracts in R. IPUMS
data is a repackaging of census and survey data from around the world to a
format harmonized across space and time and with enhanced
documentation. With IPUMS data, it easy to study change, conduct comparative
research, merge information across data types, and analyze individuals within
family and community context. Users can go to the
[IPUMS website](https://usa.ipums.org) and create an extract with only the
samples and variables they are interested in, and then import their downloaded
extract with the ipumsr package. Work has begun on an API for IPUMS data, but
it is not known when it will be available.

    Several IPUMS projects include data from the US Census Bureau:

     - [IPUMS USA](https://usa.ipums.org) repackages the public use microdata from the US Census and American Community Survey from 1850 to the present.
     - [NHGIS](https://nhgis.org) provides population, housing, agricultural, and economic data, along with GIS-compatible boundary files, for geographic units in the United States from 1790 to the present.
     - [IPUMS CPS](https://cps.ipums.org) provides the Current Population Survey
which is a monthly workforce survey conducted by the Census Bureau.
     - [IPUMS International](https://international.ipums.org) includes the US Census microdata in the same format as census data from 93 other countries.

## Part 3: How to Learn More

### Census Bureau

The Census Bureau's latest training initiative is [Census Academy](https://www.census.gov/academy), which contains free courses to teach you how to use Census data. Census Academy also has a [free newsletter](https://public.govdelivery.com/accounts/USCENSUS/subscriber/new?topic_id=USCENSUS_11971) which will notify you when they release new courses. We encourage you to sign up for this newsletter if you wish to learn more about US Census Data.

The Census Bureau's [Training & Workshops page](https://www.census.gov/data/training-workshops.html) has a library of recorded webinars, training resources, how-to videos as well as information on classroom trainings that Census conducts.

The Census Bureau also runs a free [Slack Community](https://join.slack.com/t/uscensusbureau/shared_invite/enQtMjQ3NzUyNTM3NDU3LTZmNGI1MmQzY2Y2ZTU1ODJhNDQwMmY2YmZiNmFkNzg4YmJkYmQzZjQyNDhkNDYxN2JhYjkxZDEwMGI2OGU5NzQ) where you can ask questions and have them answered in real time. The community even has a channel (#r) specifically for R users!

If you have any additional questions, please contact the Data Dissemination Staff at Census:
- Phone: 1-844-ASK-DATA
- Email: census.askdata@census.gov

### R Packages

If you have a specific question about an R package you are using, the best resource is normally the package maintainer. The CRAN page for each R package contains the email address of a Maintainer.

If you have a more general R question, or if you are unable to contact the package maintainer, then you might try asking your question on StackOverflow using the tag "R" ([link](https://stackoverflow.com/tags/r)). When asking questions on R, it is normally helpful to provide a reproducible example. You can learn more about reproducible examples [here](https://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example#5963610).
