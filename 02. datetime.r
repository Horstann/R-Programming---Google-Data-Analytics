# Install library
#install.packages("tidyverse")

# Load library
library(tidyverse)
library(lubridate)

'
3 datatypes for an instance in time
- date "2016-08-16"
- time within a day "20:11:59 UTC"
- date-time "2016-08-16 20:11:59 UTC"
'

# Get current date
print(today())
# Get current date-time
print(now())

# Convert strings to date
print(ymd("2021-01-20")) # ymd means input string of form 'year month day'
print(dmy("20/1/2021"))
print(mdy("January 20th, 2021"))
print(dmy("20-Jan-2021"))
print(ymd("20210120"))

# Convert strings to date-time
print(ymd_hms("2021-01-20 20:11:59"))
print(mdy_hm("01/20/2021 08:01"))

# Convert between date & date-time
print(as_date(now()))
print(as_datetime(today()))