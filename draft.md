# <span style="color: red">DRAFT</span>
# A Guide to Working with U.S. Census Data in R
#### Written by Ari Lamstein and Logan Powell
#### Sponsored by the R Consortium as part of the R Consortium Census Working Group

The U.S. Census Bureau is the premier source of data about America's people, places and economy. This makes the Bureau a natural source of information for data analysts. R programmers who start working with Census Data, however, often run into two problems:

1. Understanding what data the Census Bureau publishes.

2. Understanding what CRAN packages are available to help with their project.

This document aims to help R programmers who are confronted with these  problems. It has three parts:

* [Part 1: What the Census Bureau Provides](#part-1-what-the-census-bureau-provides)
* [Part 2: How CRAN Can Help](#part-2-how-cran-can-help)
* [Part 3: Learning More](#part-3-learning-more)

Note: This Guide is intended to provide a survey of the field: it does not cover every dataset which Census publishes, nor every Census-related package which is on CRAN.

## Part 1: What the Census Bureau Provides

### Data

Broadly speaking, the Census Bureau can be viewed as publishing two types of data: demographic and geographic.

#### Demographic Data

The core mission of the Census Bureau is to provide information about America's people, places and economy. It does this by running over 100 Censuses, Surveys and Programs. You can view the full list of programs [here](https://www.census.gov/programs-surveys/surveys-programs.html).

It is beyond the scope of this Guide to detail each of these datasets. Instead, below we describe the five most popular Census programs as measured by API requests.

1. [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs/). The ACS regularly gathers information previously contained only in the long form of the decennial census, such as ancestry, educational attainment, income, language proficiency, migration, disability, employment, and housing characteristics. These data are used by many public-sector, private-sector, and not-for-profit stakeholders to allocate funding, track shifting demographics, plan for emergencies, and learn about local communities. Sent to approximately 295,000 addresses monthly (or 3.5 million per year), it is the largest household survey that the Census Bureau administers.  (Source: [Wikipedia](https://en.wikipedia.org/wiki/American_Community_Survey)).

2. [Decennial Census of Population and Housing](https://www.census.gov/programs-surveys/decennial-census.html). The Decennial Census is what most people think of when they think of "The Census". It counts each resident of the country, where they live on April 1, every ten years ending in zero. The Constitution mandates the enumeration to determine how to apportion the House of Representatives among the states. The Decennial Census is the largest peacetime mobilization in the US. (Source: [Decennial Census of Population and Housing](https://www.census.gov/programs-surveys/decennial-census.html)).

3. [Population Estimates Program (PEP)](https://www.census.gov/programs-surveys/popest.html). Each year, PEP publishes estimates of the population for the nation, states, counties, state/county equivalents, and Puerto Rico. It estimates the resident population for each year since the most recent decennial census by using measures of population change (i.,e. births, deaths and migration). The resident population includes all people currently residing in the United States. PEP estimates are used for federal funding allocations, as controls for major surveys including the Current Population Survey and the American Community Survey, for community development, to aid business planning, and as denominators for statistical rates. (Source: [PEP Methodology Paper](https://www2.census.gov/programs-surveys/popest/technical-documentation/methodology/2010-2017/2017-natstcopr-meth.pdf)).

4. [Survey of Business Owners](https://www.census.gov/programs-surveys/sbo.html). The Survey of Business Owners (SBO) provides the only comprehensive, regularly collected source of information on selected economic and demographic characteristics for businesses and business owners by gender, ethnicity, race, and veteran status. (Source: [Survey of Business Owners](https://www.census.gov/programs-surveys/sbo.html)).

5. [International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html). The International Data Base (IDB) was developed to provide access to accurate and timely demographic measures for populations around the world.  The database includes a comprehensive set of indicators, as produced by the U.S. Census Bureau since the 1960s. The IDB is updated on a regular basis to provide information needed for research, program planning, and policy-making decisions, in the U.S. and globally. (Source:
[International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html)).

#### Geographic Data

Geography is a central concept to the Census Bureau. Statistics are normally reported for either the entire nation, or some specific geographic subdivision of the country.

As the diagram below shows, the Census Bureau has a very complex view of Geography. While most Americans know the name of the state and county that they live in, very few can name the tract or block that they live in!
![Census Geo](census-geo.png) (Source: [Standard Hierarchy of Census Geographic Entities](https://www2.census.gov/geo/pdfs/reference/geodiagram.pdf))

Census provides free access to its geographic data and products such as the TIGER/Line Shapefiles, KMLs, TIGERweb, cartographic boundary files, geographic relationship files, and reference and thematic maps. You can access this data [here](https://www.census.gov/geography.html).

Note: not every demographic dataset provides data at every geographic level. For example, the Decennial Census publishes data down to Block level. But the American Community Survey only publishes data down to the Block Group level. And the Population Estimates Program only publishes data down to the county level.

### Data Dissemination

The primary tools that Census provides for accessing its data are American FactFinder and its API.

#### American Fact Finder

[American FactFinder (AFF)](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml) is a web application that can help you navigate the various datasets that Census publishes and find the information that you are looking for. In addition to displaying results on the website, there is an option to download the results as a CSV file which you can then import into R.

#### API

The Census Bureau has an API which provides access to many of its datasets. You can learn more about the API, including which datasets are available, [here](https://www.census.gov/developers/).

Using the API requires a getting an API Key, which you can get for free [here](https://api.census.gov/data/key_signup.html).

The advantage of using the API
Note that several R packages provide access to the API.


## Part 2: How CRAN Can Help

CRAN (the Comprehensive R Archive Network) provides access to thousands of user contributed R packages. While compiling this guide we were able to identify 22 packages that were specifically designed to facilitate working with demographic or geographic Census data. Below are descriptions of the 7 most popular such packages:

1. [tigris](https://cran.r-project.org/web/packages/tigris/index.html). Download TIGER/Line shapefiles from the United States Census Bureau (https://www.census.gov/geo/maps-data/data/tiger-line.html) and load into R as 'SpatialDataFrame' or 'sf' objects.

2. [acs](https://cran.r-project.org/web/packages/acs/index.html). Provides a general toolkit for downloading, managing, analyzing, and presenting data from the U.S. Census (https://www.census.gov/data/developers/data-sets.html), including SF1 (Decennial short-form), SF3 (Decennial long-form), and the American Community Survey (ACS). Confidence intervals provided with ACS data are converted to standard errors to be bundled with estimates in complex acs objects. Package provides new methods to conduct standard operations on acs objects and present/plot data in statistically appropriate ways.

3. [choroplethr](https://cran.r-project.org/web/packages/choroplethr/index.html). Choropleths are thematic maps where geographic regions, such as states, are colored according to some metric, such as the number of people who live in that state. This package simplifies this process by 1. Providing ready-made functions for creating choropleths of common maps. 2. Providing data and API connections to interesting data sources for making choropleths. 3. Providing a framework for creating choropleths from arbitrary shapefiles. 4. Overlaying those maps over reference maps from Google Maps.     

4. [tidycensus](https://cran.r-project.org/web/packages/tidycensus/index.html). An integrated R interface to the decennial US Census and American Community Survey APIs and the US Census Bureau's geographic boundary files. Allows R users to return Census and ACS data as tidyverse-ready data frames, and optionally returns a list-column with feature geometry for many geographies.

5. [choroplethrMaps](https://cran.r-project.org/web/packages/choroplethrMaps/index.html). Contains 3 maps. 1) US States 2) US Counties 3) Countries of the world.

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

 - [IPUMS USA](https://usa.ipums.org) repackages the public use microdata from
the US Census and American Community Survey from 1850 to the present.
 - [NHGIS](https://nhgis.org) provides population, housing, agricultural,
and economic data, along with GIS-compatible boundary files, for geographic
units in the United States from 1790 to the present.
 - [IPUMS CPS](https://cps.ipums.org) provides the Current Population Survey
which is a monthly workforce survey conducted by the Census Bureau.
 - [IPUMS International](https://international.ipums.org) includes the
US Census microdata in the same format as census data from 93 other
countries.

You can view the entire list of 22 CRAN packages designed to work with Census data [ADD LINK HERE]().

## Part 3: Learning More

The Census Bureau has many resources for learning how to work with datasets they publish.

### Training website: https://www.census.gov/data/training-workshops.html

#### Upcoming Trainings

For upcoming trainings provided/offered by the Census Bureau and Partners can be found [online](https://www.census.gov/data/training-workshops/trainings.html)

#### Recorded Webinars

You can peruse trainings that have been held in the past and were recorded by going to the [recorded webinars](https://www.census.gov/data/training-workshops/recorded-webinars.html) area.

In addition, there are more tactical ["How-To Vides"](https://www.census.gov/data/training-workshops/video.html) created for public use.

#### Training Brochures

If you're interested in getting a high-level overview of topic-based trainings offered by the Bureau, you can find those [online](https://www.census.gov/data/training-workshops/training-resources.html) as well.

#### Community and Contacts

For R-users, there is a special #r channel at the Census Bureau's [Slack Community](https://join.slack.com/t/uscensusbureau/shared_invite/enQtMjQ3NzUyNTM3NDU3LTZmNGI1MmQzY2Y2ZTU1ODJhNDQwMmY2YmZiNmFkNzg4YmJkYmQzZjQyNDhkNDYxN2JhYjkxZDEwMGI2OGU5NzQ). Sign up and check it out!

If there are specific training needs your group requires that aren't covered by any of the above resources, feel free to get in touch with the Training Branch directly:

##### Education and Training Branch
###### Customer Liaison and Marketing Services Office
- Phone Number: 301-763-4308
- Email: clmso.training@census.gov

If you have a community of users for whom you would like an in-person training session (e.g., an R-users meetup), you can make such group-requests to:

##### Data Dissemination Staff
- Phone: 1-844-ASK-DATA
- Email: census.askdata@census.gov
##### Training Request
To request training please email us at: clmso.training@census.gov.

We appreciate customers allowing approximately two weeks for requests.

Not sure who to contact? [Ask a question](https://ask.census.gov/)
