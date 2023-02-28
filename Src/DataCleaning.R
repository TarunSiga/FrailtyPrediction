# Importing the frailty csv file into R studio and creating a data frame
frailty_df <- read.csv("C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 1/Frailty/RawData/Raw_Frailty_data.csv")

# Checking the top five rows of the data frame
head(frailty_df)

# Checking the last five rows of the data frame
tail(frailty_df)

# Checking the number of rows in the data frame
nrow(frailty_df)

# Checking number of columns in the data frame
ncol(frailty_df)

# Checking whether the data frame has 'NA' values or not
is.na(frailty_df)

# Total number of 'NA'(Null) values in the data frame
sum(is.na(frailty_df))

# There are no 'NA'(Null) values in the data frame, there is no need of removing the values

# If there are any null values then they should be removed

# frailty_df <- na.omit(frailty_df[frailty_df$column that have 'na' values != N, ])

# Commenting it as there are no null values in the given data frame

# Checking the variable names
names(frailty_df)

# Renaming the variables for the convenience of coding
# Calling the tidyverse library
library(tidyverse)

# Renaming the variables
frailty_df <- rename(frailty_df, Height_in_inches = Height..Inches., Weight_in_pounds = Weight..Pounds., Grip_strength = Grip.Strength)

# Now, checking the top five rows of the data frame
head(frailty_df)

# Saving the cleaned data frame to disk
write.csv(frailty_df, "C:/Users/tarun/OneDrive/Desktop/UMKC/Spring 2023/COMP_SCI5530/Assignment - 1/Frailty/CleanedData/Clean_Frailty_data.csv")












