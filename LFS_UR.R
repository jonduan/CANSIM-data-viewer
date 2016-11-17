# Get historical unemployment data from the Labour Force Survey

#---- Load necessary packages #----


library(tidyverse) # loads multiple packages such as dplyr, tidyr, ggplot2 etc. 
library(CANSIM2R) # simplifies the process of directly downloading data from CANSIM
library(Hmisc) # need this package to read labels
library(zoo) # package has the 'as.yearmon' function, which is used to create date variables from fields lacking day values
library(shiny)
library(DT)
library(car) # package provides a good way to 'recode' values
library(rmarkdown)
library(rCharts) # package in development that can be used to create interactive plots 
library(xts)


#---- Download table from CANSIM and save it in the environment as a data frame object #----

# The package "CANSIM2R" has two main functions; 'getCANSIM()' is used to extract a single table from CANSIM, while
# 'mergeCANSIM(c(,))' is used to extract and merge multiple tables on key variables at once 
  
monthlyLFS <- getCANSIM(2820087) #download seasonally adjusted, monthly LFS data
metadataMonthlyLFS <- data.frame(colnames(monthlyLFS),label(monthlyLFS)) # create metadata dataframe to view all labels
monthlyLFS$Date <- as.Date(as.yearmon(monthlyLFS$t,format="%Y/%m")) # turn the time variable into an explicit date variable

# Create new data frame with only the relevant fields selected, and rename for better readability

monthlyLFS1 <- monthlyLFS %>% select(Date,i,V922)  
monthlyLFS1 <- rename(monthlyLFS1,UnRate=V922)
monthlyLFS1 <- rename(monthlyLFS1,Region=i)

#---- Plot unemployment rate data using the NVD3 library from the rCharts package #----

# Provincial unemployment rate for a given month across all provinces; Bar Chart

barUR <- nPlot(x= 'Region', y = 'UnRate', data = monthlyLFS1 %>% filter(Date=="2016-10-01"), 
            type = 'discreteBarChart', dom = 'URPlot') # can pick any date
barUR$yAxis(axisLabel = "%", width=40) # width can't exceed 64; won't show otherwise
barUR$chart(color = c('#263359', '#263359', '#592633', '#263359', '#263359', '#263359', '#263359', '#263359', 
                   '#263359', '#263359', '#263359'))
barUR$xAxis(staggerLabels = TRUE) # Stagger axis labels; otherwise some labels won't show
barUR


# Historical unemployment rate for British Columbia; Line Chart

lineUR <-nPlot(x = 'Date', y= 'UnRate', data = monthlyLFS1 %>% filter(Region=="British Columbia"),
               type = 'lineChart')
lineUR$yAxis(axisLabel = "%", width=40)
lineUR$xAxis(tickFormat="#!function(d) 
             {return d3.time.format.utc('%Y-%m-%d')
             (new Date(d * 24 * 60 * 60 * 1000));}!#") # javascript code to format the dates properly
lineUR



#---- Plot using dygraph #----
