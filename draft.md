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

Note: This Guide is intended to be a survey of the field. As such it does not cover every dataset which Census publishes, nor every Census-related package which is on CRAN.

## Part 1: What the Census Bureau Provides

This section of the Guide covers:
  * two types of data that Census Provides (demographic and geographic)
  * two ways that Census distributes this data (American FactFinder and an API).

### Demographic Datasets

The core mission of the Census Bureau is to provide information about America's people, places and economy. It does this by running 100 Censuses, Surveys and Programs. This document refers to the output of these programs as "datasets". You can view the full list of datasets [here](https://www.census.gov/programs-surveys/surveys-programs.html).

Below we list and describe the five most popular datasets that Census publishes. To measure popularity we looked at the number of API requests that each dataset received.

1. [American Community Survey (ACS)](https://www.census.gov/programs-surveys/acs/). The ACS regularly gathers information previously contained only in the long form of the decennial census, such as ancestry, educational attainment, income, language proficiency, migration, disability, employment, and housing characteristics. These data are used by many public-sector, private-sector, and not-for-profit stakeholders to allocate funding, track shifting demographics, plan for emergencies, and learn about local communities. Sent to approximately 295,000 addresses monthly (or 3.5 million per year), it is the largest household survey that the Census Bureau administers.  (Source: [Wikipedia](https://en.wikipedia.org/wiki/American_Community_Survey)).

2. [Decennial Census of Population and Housing](https://www.census.gov/programs-surveys/decennial-census.html). The Decennial Census is what most people think of when they think of "The Census". It counts each resident of the country, where they live on April 1, every ten years ending in zero. The Constitution mandates the enumeration to determine how to apportion the House of Representatives among the states. The Decennial Census is the largest peacetime mobilization in the US. (Source: [Census Bureau Website](https://www.census.gov/programs-surveys/decennial-census.html)).

3. [Population Estimates Program (PEP)](https://www.census.gov/programs-surveys/popest.html). Each year, PEP publishes estimates of the population for the nation, states, counties, state/county equivalents, and Puerto Rico. It estimates the resident population for each year since the most recent decennial census by using measures of population change (i.,e. births, deaths and migration). The resident population includes all people currently residing in the United States. PEP estimates are used for federal funding allocations, as controls for major surveys including the Current Population Survey and the American Community Survey, for community development, to aid business planning, and as denominators for statistical rates. (Source: [PEP Methodology Paper](https://www2.census.gov/programs-surveys/popest/technical-documentation/methodology/2010-2017/2017-natstcopr-meth.pdf)).

4. [Survey of Business Owners](https://www.census.gov/programs-surveys/sbo.html). The Survey of Business Owners (SBO) provides the only comprehensive, regularly collected source of information on selected economic and demographic characteristics for businesses and business owners by gender, ethnicity, race, and veteran status.

5. [International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html). The International Data Base (IDB) was developed to provide access to accurate and timely demographic measures for populations around the world.  The database includes a comprehensive set of indicators, as produced by the U.S. Census Bureau since the 1960s. The IDB is updated on a regular basis to provide information needed for research, program planning, and policy-making decisions, in the U.S. and globally. (Source:
[International Data Base](https://www.census.gov/programs-surveys/international-programs/about/idb.html)).

### Geography

Geography is a central concept to the Census Bureau. Statistics are normally reported for either the entire nation, or some specific geographic subdivision of the country.

While most people can name the state and county that they live in, as the diagram below shows, the Census Bureau has a very complex view of Geography:
![Census Geo](census-geo.png) (Source: [Standard Hierarchy of Census Geographic Entities](https://www2.census.gov/geo/pdfs/reference/geodiagram.pdf))

Census provides free access to its geographic data and products such as the TIGER/Line Shapefiles, KMLs, TIGERweb, cartographic boundary files, geographic relationship files, and reference and thematic maps. You can access this data [here](https://www.census.gov/geography.html).

Note: not every demographic dataset provides data at every geographic level.

### American Fact Finder

[American FactFinder](https://factfinder.census.gov/faces/nav/jsf/pages/index.xhtml) is website that Census provides to let you explore a suite of a free GUI that Census provides. By

### API

The Census Bureau has an API which provides access to many of its datasets. You can learn more about the API, including which datasets are available, [here](https://www.census.gov/developers/).

Note that several R packages provide access to the API.


## Part 2: How CRAN Can Help

<table>
	<thead>
		<tr>
			<th>Package Name</th>
			<th>Short Description</th>
			<th>Long Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/acs/index.html">acs</a></td>
			<td>Download, Manipulate, and Present American Community Survey and Decennial Data from the US Census</td>
			<td>Provides a general toolkit for downloading, managing, analyzing, and presenting data from the U.S. Census (<https://www.census.gov/data/developers/data-sets.html>), including SF1 (Decennial short-form), SF3 (Decennial long-form), and the American Community Survey (ACS). Confidence intervals provided with ACS data are converted to standard errors to be bundled with estimates in complex acs objects. Package provides new methods to conduct standard operations on acs objects and present/plot data in statistically appropriate ways.

</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/census/index.html">census</a></td>
			<td>Scrape US Census Data</td>
			<td>A scraper to collect US Census data from the American Community Survey (ACS) data and metadata. Available datasets include population, income, education and employment levels by age, sex and race. See <http://mcdc.missouri.edu/websas/caps10acsb.html> for more information. Unlike other census related packages, this package does not require a U.S. Census Bureau API.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/censusapi/index.html">censusapi</a></td>
			<td>Retrieve Data from the Census APIs</td>
			<td>A wrapper for the U.S. Census Bureau APIs that returns data frames of Census data and metadata. Available datasets include the Decennial Census, American Community Survey, Small Area Health Insurance Estimates, Small Area Income and Poverty Estimates, and Population Estimates and Projections. See <https://www.census.gov/data/developers/data-sets.html> for more information.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/censusGeography/index.html"> censusGeography</a></td>
			<td>Changes United States Census Geographic Code into Name of Location</td>
			<td>Converts the United States Census geographic code for city, state (FIP and ICP), region, and birthplace, into the name of the region. e.g. takes an input of Census city code 5330 to it's actual city, Philadelphia. Will return NA for code that doesn't correspond to real location.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/choroplethr/index.html">choroplethr</a></td>
			<td>Simplify the Creation of Choropleth Maps in R</td>
			<td>Choropleths are thematic maps where geographic regions, such as states, are colored according to some metric, such as the number of people who live in that state. This package simplifies this process by 1. Providing ready-made functions for creating choropleths of common maps. 2. Providing data and API connections to interesting data sources for making choropleths. 3. Providing a framework for creating choropleths from arbitrary shapefiles. 4. Overlaying those maps over reference maps from Google Maps.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/choroplethrMaps/index.html">choroplethrMaps</a></td>
			<td>Contains Maps Used by the 'choroplethr' Package</td>
			<td>Contains 3 maps. 1) US States 2) US Counties 3) Countries of the world.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/idbr/index.html"> idbr</a></td>
			<td>R Interface to the US Census Bureau International Data Base API</td>
			<td>Use R to make requests to the US Census Bureau's International Data Base API. Results are returned as R data frames. For more information about the IDB API, visit <http://www.census.gov/data/developers/data-sets/international-database.html>.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/noncensus/index.html">noncensus</a></td>
			<td>U.S. Census Regional and Demographic Data</td>
			<td>A collection of various regional information determined by the U.S. Census Bureau along with demographic data.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapper/index.html"> SeerMapper </a></td>
			<td>A Quick Way to Map U.S. Rates and Data of U. S. States, Counties, Census Tracts, or Seer Registries using 2000 and 2010 U. S. Census Boundaries</td>
			<td>Provides an easy way to map seer registry area rate data on a U. S, map. The U. S. data may be mapped at the state, U. S. NCI Seer Register, state/county or census tract level. The function can categorize the data into "n" quantiles, where "n" is 3 to 11 or the caller can specify a cut point list for the categorizes. The caller can also provide the data and the comparison operation to request hatching over any areas. The default operation and value are > 0.05 (p-values). The location id provided in the data determines the geographic level of the mapping. If states, state/counties or census tracts are being mapped, the location ids used must be the U.S. FIPS codes for states (2 digits), state/counties (5 digits) or state/county/census tracts (11 digits). If the location id references the U.S. Seer Registry areas, the Seer Registry area identifier used to link the data to the geographical areas, then the location id is the Seer Registry name or abbreviation. Additional parameters are used to provide control over the drawing of the boundaries at the data's boundary level and higher levels. The package uses modified boundary data from the 2000 and 2010 U. S. Census to reduce the storage requirements and improve drawing speed. The 'SeerMapper' package contains the U. S. Census 2000 and 2010 boundary data for the regional, state, Seer Registry, and county levels. Six supplement packages contain the census tract boundary data (see manual for more details.)</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapper2010East/index.html"> SeerMapper2010East</a></td>
			<td>Supplemental U. S. 2010 Census Tract Boundaries for 23 Eastern States without Registries for 'SeerMapper'</td>
			<td>Provides supplemental 2010 census tract boundary package for 23 states without Seer Registries that are east of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapper2010Regs/index.html"> SeerMapper2010Regs</a></td>
			<td>Supplemental U. S. 2010 Census Tract Boundaries for 15 States with Seer Registries for 'SeerMapper'</td>
			<td>Provides supplemental 2010 census tract boundaries of the 15 states containing Seer Registries for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. 2010 Census data and is in public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapper2010West/index.html"> SeerMapper2010West</a></td>
			<td>Supplemental U.S. 2010 Census Tract Boundaries for 14 Western States without Seer Registries for 'SeerMapper'
</td>
			<td>Provides supplemental 2010 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. 2010 Census data and is in public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapperEast/index.html"> SeerMapperEast</a></td>
			<td>Supplemental U. S. 2000 Census Tract Boundaries for 23 Eastern States without Seer Registries</td>
			<td>Provides supplemental 2000 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapperRegs/index.html"> SeerMapperRegs</a></td>
			<td>Supplemental U. S. 2000 Census Tract Boundary for 15 States with Seer Registries for 'SeerMapper'</td>
			<td>Provides supplemental 2000 census tract boundaries for the 15 states containing Seer Registries for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/SeerMapperWest/index.html">SeerMapperWest</a></td>
			<td>Supplemental U.S. 2000 Census Tract Boundaries for 14 Western States without Seer Registries for 'SeerMapper'
</td>
			<td>Provides supplemental 2000 census tract boundaries for the 14 states without Seer Registries that are west of the Mississippi river for use with the 'SeerMapper' package. The data contained in this package is derived from U. S. Census data and is in the public domain.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/tidycensus/index.html"> tidycensus</a></td>
			<td>Load US Census Boundary and Attribute Data as 'tidyverse' and 'sf'-Ready Data Frames
</td>
			<td>An integrated R interface to the decennial US Census and American Community Survey APIs and the US Census Bureau's geographic boundary files. Allows R users to return Census and ACS data as tidyverse-ready data frames, and optionally returns a list-column with feature geometry for many geographies.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/tigris/index.html"> tigris</a></td>
			<td>Load Census TIGER/Line Shapefiles</td>
			<td>Download TIGER/Line shapefiles from the United States Census Bureau (<https://www.census.gov/geo/maps-data/data/tiger-line.html>) and load into R as 'SpatialDataFrame' or 'sf' objects.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/totalcensus/index.html"> totalcensus</a></td>
			<td>Extract High Resolution Census Data</td>
			<td>Download summary files from Census Bureau <https://www2.census.gov/> and extract data, in particular high resolution data at block, block group, and tract level, from decennial census and American Community Survey 1-year and 5-year estimates.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/UScensus2000cdp/index.html"> UScensus2000cdp</a></td>
			<td>US Census 2000 Designated Places Shapefiles and Additional Demographic Data</td>
			<td>US Census 2000 Designated Places shapefiles and additional demographic data from the SF1 100 percent files. This data set contains polygon files in lat/lon coordinates and the corresponding demographic data for a number of different variables.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/UScensus2000tract/index.html"> UScensus2000tract</a></td>
			<td>US Census 2000 Tract Level Shapefiles and Additional Demographic Data</td>
			<td>US 2000 Census Tract shapefiles and additional demographic data from the SF1 100 percent files. This data set contains polygon files in lat/lon coordinates and the corresponding demographic data for a number of different variables.</td>
		</tr>
		<tr>
			<td><a href="https://cran.r-project.org/web/packages/UScensus2010/index.html"> UScensus2010</a></td>
			<td>US Census 2010 Suite of R Packages</td>
			<td>US Census 2010 shape files and additional demographic data from the SF1 100 percent files. This package contains a number of helper functions for the UScensus2010blk, UScensus2010blkgrp, UScensus2010tract, UScensus2010cdp packages.</td>
		</tr>
	</tbody>
</table>

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
