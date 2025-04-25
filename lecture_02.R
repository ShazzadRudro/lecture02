setwd("C:/Users/Rudro/Desktop/R_learn")

# HOMEWORK PROBLEM 001____________________________________________________________
currentYear <- 2025
uniEntryYear <- 2020
DoBirth <- 2000

# Calculating the percent of life spent at university
percentatUni <- ( (currentYear - uniEntryYear) / (currentYear - DoBirth) ) * 100
percentatUni

# Display the output
cat('You have spent', round(percentatUni, 1), '% of your life at the university.')



# HOMEWORK PROBLEM 002_____________________________________________________________

# Numeric Data type ( integer / double )
age <- 25 # double default numeric in R 
age <- c(24, 27, 29) 

X <- 234L # integer


# Logical Data type
is_student <- TRUE
is_sunny <- FALSE

# Date vectors
birth_dates <- as.Date(c('2000-05-27', '2001-04-24')) #stores dates requires as.Date or lubridate
birth_dates
today <- Sys.Date() # current date
today

# Data frames
cartoon <- data.frame(
  names <- c("Mina", "Raju", "Mithu", "Lali"),
  gender <- c("Female", "Male", "Female", "Female"),
  age <- c(15, 12, 2, 3),
  is_human <- c(TRUE, TRUE, FALSE, FALSE)
)
cartoon

# Lists (Heterogeneous Collections)
person <- list(
  name <- 'Natsu',
  age <- 4000,
  magic_type <- 'Fire'
)
person

# Factor vectors ... Categorical data with levels.
gender <- factor(c('Male', 'Female', "Male", "Male"))
blood_group <- factor(c("A", "B", "O", "AB"), levels = c("A", "B", "AB", "O"))

#Checking Data types
class(age)
typeof(person)
class(cartoon)
class(person)
class(birth_dates)



# HOMEWORK PROBLEM 003_____________________________________________________________
data <- read.csv('data.csv')
data

head(data) # View the first few rows (like Excel's preview)
str(data) # Structure: column names, types, and sample data

# Number of rows and columns
nrow(data)  # Total rows
ncol(data)  # Total columns
dim(data)   # (Rows, Columns)

# Column names (headers)
colnames(data)

# Summary statistics (for numeric columns)
summary(data)


# Accessing Data
# Get a column (like Excel column)
data$X       # Using $
data[["A"]]  # Using [[ ]]

# Get a specific cell (row 1, column 2)
data[25, 5]

# Subset rows (like Excel filters)
data[data$X > 25, ]  # value greater than 25


# HOMEWORK PROBLEM 004_____________________________________________________________
cartoon <- data.frame(
  names <- c("Mina", "Raju", "Mithu", "Lali"),
  gender <- c("Female", "Male", "Female", "Female"),
  age <- c(15, 12, 2, 3),
  is_human <- c(TRUE, TRUE, FALSE, FALSE)
)
cartoon

#condition for selecting only female characters
female_characters <- cartoon[cartoon$gender == "Female", ]
female_characters

#condition for selecting female characters whose age is greater than two
female_N_age2plus <- cartoon[cartoon$gender == "Female", cartoon$age > 2]
female_N_age2plus


