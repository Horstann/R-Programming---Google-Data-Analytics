# data() without arguments displays all R's available datasets
print(data())

# Load specific dataset
data(mtcars)

# readr
print(readr_example("mtcars.csv")) # prints path
# read_csv
df <- read_csv(readr_example("mtcars.csv"))
# read_excel
excel_sheets(readxl_example("type-me.xlsx")) # gives list of names of sheets
read_excel(readxl_example("type-me.xlsx")) # read whole file
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion") # read specific sheet

