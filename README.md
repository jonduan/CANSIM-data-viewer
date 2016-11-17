
<div id="devex-badge">
<a rel="Delivery" href="https://github.com/BCDevExchange/docs/blob/master/discussion/projectstates.md"><img alt="In production, but maybe in Alpha or Beta. Intended to persist and be supported." style="border-width:0" src="http://bcdevexchange.org/badge/3.svg" title="In production, but maybe in Alpha or Beta. Intended to persist and be supported." /></a>
</div>
---

# CANSIM data viewer 

R tools to retrieve, tabulate and visualize data from Statistics Canada's CANSIM database.

[CANSIM](http://www5.statcan.gc.ca/cansim/a01?lang=eng&p2=1) is the comprehensive database of socio-economic statistics, maintained by Statistics Canada. The database contains a wide variety of data series, from the familiar ([unemployment rates from the Labour Force Survey](http://www5.statcan.gc.ca/cansim/a26?lang=eng&retrLang=eng&id=2820087&&pattern=&stByVal=1&p1=1&p2=31&tabMode=dataTable&csid=) and the [Consumer Price Index](http://www5.statcan.gc.ca/cansim/a26?lang=eng&retrLang=eng&id=3260020&&pattern=&stByVal=1&p1=1&p2=31&tabMode=dataTable&csid=)) to more obscure topics (total sales by vending machine operators; vector v101256214 in Table 080-0028).

**CANSIM tutorials**

- Statistics Canada has a [short step-by-step tutorial](http://www.statcan.gc.ca/about-apercu/video/cansim-trans-eng.html) on finding and saving data from CANSIM.

- The University of Toronto Map & Data Library has created a [CANSIM guide](http://data.library.utoronto.ca/cansim-guide), helping you navigate through the system to find the series you are seeking.

## Usage


### Data


### Code

**NHPI** - New Housing Price Index

- [NHPI.R](NHPI.R) -- R script for data carpentry (including date manipulation) using `dplyr` and visualization using `ggplot2` (v. 2.2.0)

**LFS** - Labour Force Survey

- [LFS_UR.R](LFS_UR.R) -- R script for using `CANSIM2R` package to download CANSIM tables; interactive data visualization with `rCharts`, `dygraphs` and `ggiraph`; and interactive tables using `DT` package.

---

### Getting Help or Reporting an Issue

To report bugs/issues/feature requests, please file an [issue](https://github.com/bcgov/distance_calculator/issues/).

### How to Contribute

If you would like to contribute, please see our [CONTRIBUTING](CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

### License

    Copyright 2016 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at 

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
This repository is maintained by [BC Stats](http://www.bcstats.gov.bc.ca). Click [here](https://github.com/bcgov/BCStats) for a complete list of our repositories on GitHub.
