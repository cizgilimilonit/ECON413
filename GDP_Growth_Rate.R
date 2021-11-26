# Importing the libraries we will use
install.packages("WDI")
library(WDI)
library(data.table)

# Search for the indicator and its code
WDIsearch('growth')

# Creating our dataframe with the help of WDI library
dat <- WDI(indicator='NY.GDP.PCAP.KD.ZG', country=c('TR',"CN",'DE','KR','US'), start=2015, end=2020)

# Creating out data table based on dataframe named 'dat'
# Since WDI brings data in alphabetical order for the countries if we set "Country" column in alphabetical order we will not have an unintentional wrong data 
das <- data.table("Country" = c("China", "Germany", "South Korea", "Turkey", "United States"),
                  "2015 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2015"],
                  "2016 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2016"],
                  "2017 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2017"],
                  "2018 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2018"],
                  "2019 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2019"],
                  "2020 GDP Growth" = dat$NY.GDP.PCAP.KD.ZG[dat$year == "2020"])
# Printing the data table
print(das)



