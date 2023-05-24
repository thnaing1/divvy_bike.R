# # # # # # # # # # # # # # # # # # # # # # # 
# Install required packages
# tidyverse for data import and wrangling
# lubridate for date functions
# ggplot for visualization
# Scales for visually changing the unit format
# # # # # # # # # # # # # # # # # # # # # #  

library(tidyverse)  #helps wrangle data
library(lubridate)  #helps wrangle date attributes
library(ggplot2)  #helps visualize data
library(scales)
getwd() #displays your working directory
setwd("C:/Users/An-94/Desktop/google_analytics/proj_data/Divvy_Trips_2021to2022") #sets your working directory

#=====================
# STEP 1: COLLECT DATA
#=====================
# Load Divvy datasets (csv files)

may_2022 <- read_csv("202205-divvy-tripdata-edit.csv")
april_2022 <- read_csv("202204-divvy-tripdata-edit.csv")
march_2022 <- read_csv("202203-divvy-tripdata-edit.csv")
feb_2022 <- read_csv("202202-divvy-tripdata-edit.csv")
jan_2022 <- read_csv("202201-divvy-tripdata-edit.csv")
dec_2021 <- read_csv("202112-divvy-tripdata-edit.csv")
nov_2021 <- read_csv("202111-divvy-tripdata-copy.csv")
oct_2021 <- read_csv("202110-divvy-tripdata-edit.csv")
sep_2021 <- read_csv("202109-divvy-tripdata-edit.csv")
aug_2021 <- read_csv("202108-divvy-tripdata-edit.csv")
july_2021 <- read_csv("202107-divvy-tripdata-edit.csv")
june_2021 <- read_csv("202106-divvy-tripdata-edit.csv")

#====================================================
# STEP 2: WRANGLE DATA AND COMBINE INTO A SINGLE FILE
#====================================================
# Compare column names each of the files
# Names need to match perfectly 
colnames(june_2021)
colnames(july_2021)
colnames(aug_2021)
colnames(sep_2021)
colnames(oct_2021)
colnames(nov_2021)
colnames(dec_2021)
colnames(jan_2022)
colnames(feb_2022)
colnames(march_2022)
colnames(april_2022)
colnames(may_2022)
            
#Rename columns to make them consistent

june_2021 <- rename(june_2021
                    ,trip_id = ride_id
                    ,biketype  = rideable_type
                    ,start_time  = started_at   
                    ,end_time = ended_at
                    ,from_station_name = start_station_name 
                    ,from_station_id  = start_station_id 
                    ,to_station_name  = end_station_name
                    ,to_station_id  = end_station_id
                    ,usertype = member_casual)

july_2021 <- rename(july_2021
                    ,trip_id = ride_id 
                    ,biketype  = rideable_type 
                    ,start_time  = started_at   
                    ,end_time = ended_at
                    ,from_station_name = start_station_name 
                    ,from_station_id  = start_station_id 
                    ,to_station_name  = end_station_name
                    ,to_station_id  = end_station_id
                    ,usertype = member_casual)
aug_2021 <- rename(aug_2021
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

sep_2021 <- rename(sep_2021
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

oct_2021 <- rename(oct_2021
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

nov_2021 <- rename(nov_2021
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

dec_2021 <- rename(dec_2021
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)


jan_2022 <- rename(jan_2022
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

feb_2022 <- rename(feb_2022
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)


march_2022 <- rename(march_2022
                   ,trip_id = ride_id 
                   ,biketype  = rideable_type 
                   ,start_time  = started_at   
                   ,end_time = ended_at
                   ,from_station_name = start_station_name 
                   ,from_station_id  = start_station_id 
                   ,to_station_name  = end_station_name
                   ,to_station_id  = end_station_id
                   ,usertype = member_casual)

april_2022 <- rename(april_2022
                     ,trip_id = ride_id 
                     ,biketype  = rideable_type 
                     ,start_time  = started_at   
                     ,end_time = ended_at
                     ,from_station_name = start_station_name 
                     ,from_station_id  = start_station_id 
                     ,to_station_name  = end_station_name
                     ,to_station_id  = end_station_id
                     ,usertype = member_casual)


may_2022 <- rename(may_2022
                     ,trip_id = ride_id 
                     ,biketype  = rideable_type 
                     ,start_time  = started_at   
                     ,end_time = ended_at
                     ,from_station_name = start_station_name 
                     ,from_station_id  = start_station_id 
                     ,to_station_name  = end_station_name
                     ,to_station_id  = end_station_id
                     ,usertype = member_casual)

# Inspect the dataframes and look for incongruencies
str(june_2021)
str(july_2021)
str(aug_2021)
str(sep_2021) 
str(oct_2021)
str(nov_2021)
str(dec_2021)
str(jan_2022)
str(feb_2022)
str(march_2022) 
str(april_2022) 
str(may_2022)

# Convert trip_id and biketype to character so that they can stack correctly
june_2021 <-  mutate(june_2021, trip_id = as.character(trip_id)
                   ,biketype = as.character(biketype)) 
july_2021 <-  mutate(july_2021, trip_id = as.character(trip_id)
                   ,biketype = as.character(biketype)) 
aug_2021 <-  mutate(aug_2021, trip_id = as.character(trip_id)
                   ,biketype = as.character(biketype))
sep_2021 <-  mutate(sep_2021, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
oct_2021 <-  mutate(oct_2021, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
nov_2021 <-  mutate(nov_2021, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
dec_2021 <-  mutate(dec_2021, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
jan_2022 <-  mutate(jan_2022, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
feb_2022 <-  mutate(feb_2022, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
march_2022 <-  mutate(march_2022, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
april_2022 <-  mutate(april_2022, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))
may_2022 <-  mutate(may_2022, trip_id = as.character(trip_id)
                    ,biketype = as.character(biketype))

# Stack individual month's data frames into one large data frame
all_trips <- bind_rows(june_2021, 
                       july_2021, 
                       aug_2021, 
                       sep_2021,
                       oct_2021,
                       nov_2021,
                       dec_2021,
                       jan_2022,
                       feb_2022,
                       march_2022,
                       april_2022,
                       may_2022
                       )
# Remove latitude, and longitude for start and stop times since this is not needed
all_trips <- all_trips %>%  
  select(-c(start_lat, start_lng, end_lat, end_lng))

#======================================================
# STEP 3: CLEAN UP AND ADD DATA TO PREPARE FOR ANALYSIS
#======================================================
# Inspect the new table that has been created
colnames(all_trips)  #List of column names
nrow(all_trips)  #How many rows are in data frame?
dim(all_trips)  #Dimensions of the data frame?
head(all_trips)  #See the first 6 rows of data frame.  Also tail(all_trips)
str(all_trips)  #See list of columns and data types (numeric, character, etc)
summary(all_trips)  #Statistical summary of data.

# There are a few problems we will need to fix:
# (1) We will want to add some additional columns of data - such as day, month, year - that provide additional opportunities to aggregate the data.
# (2) We will want to add a calculated field for length of ride 
# (3) There are some rides where tripduration shows up as negative, including several hundred rides where Divvy took bikes out of circulation for Quality Control reasons. We will want to delete these rides.

# We will want to make our dataframe consistent 
# convert date info in format 'mm/dd/yyyy'
# Add columns that list the date, month, day, and year of each ride
# This will allow us to aggregate ride data for each month, day, year or specific day of the week
all_trips$date <- as.Date(all_trips$start_time, "%m/%d/%Y") #The default format is yyyy-mm-dd

all_trips$month <- format(as.Date(all_trips$date), "%m") #create separate month column(numeric)
all_trips$day <- format(as.Date(all_trips$date), "%d") #create day column
all_trips$year <- format(as.Date(all_trips$date), "%Y") #create separate year column
all_trips$day_of_week <- format(as.Date(all_trips$date), "%A") #create day column(character)

# Add a "ride_length" calculation to all_trips (in seconds) so you can aggregate data
# Make sure that start time and end time are in datetime format
all_trips <-  all_trips %>% 
  mutate(start_time = mdy_hms(start_time), end_time = mdy_hms(end_time))

all_trips$ride_length <- difftime(all_trips$end_time,all_trips$start_time) #ride length is difference between start and stop time
# Inspect the structure of the columns
str(all_trips)

# Convert "ride_length" to numeric so we can run calculations on the data
is.numeric(all_trips$ride_length)
all_trips$ride_length <- as.numeric(as.character(all_trips$ride_length))
is.numeric(all_trips$ride_length)

# Remove "bad" data
# The dataframe includes a few hundred entries when bikes were taken out of docks and checked for quality by Divvy or ride_length was negative
# Trim the data to make sure there are no empty spaces in the character columns
all_trips %>% 
  mutate(across(where(is.character), str_trim))

# create another version of the dataframe that eliminate negative ride lengths
all_trips_all <- all_trips[(all_trips$ride_length>0),]

# STEP 4: CONDUCT DESCRIPTIVE ANALYSIS
#=====================================
# Descriptive analysis on ride_length (all figures in seconds)
mean(all_trips_all$ride_length) #straight average (total ride length / rides)
median(all_trips_all$ride_length) #midpoint number in the ascending array of ride lengths
sum(all_trips_all$ride_length) #total number of seconds ridden in total
summary(all_trips_all$ride_length) #general descriptive statistics

#Notice that the mean ride length is a lot higher than the median
#ride length. 
#This suggest that 50% of this dataset contains values below 11 seconds
#but the average value is 588 seconds
#this suggests that some rides are a lot longer than 11 seconds

# Compare members and casual users
# ride length is the metric that will be displayed
# usertype is the field the contains the subsets of the data
# FUN is the function that you want applied to each subset of the data
aggregate(all_trips_all$ride_length ~ all_trips_all$usertype, FUN = mean)
aggregate(all_trips_all$ride_length ~ all_trips_all$usertype, FUN = median)
#casuals on average had a higher ride length

#Which group has the highest ride time in total?
#First let us take a look at the total ride duration for casuals and members

all_trips_all %>% 
  group_by(usertype) %>% 
  summarise(total_ride_duration = sum(ride_length)) %>%
  ggplot(aes(x = usertype, y = total_ride_duration, fill = usertype)) + 
  geom_bar(stat="identity") + 
  labs(title="Total Duration by membership", y="Total Duration(seconds)", x="Membership Status") +
  guides(fill = guide_legend(title = 'Membership Status')) +
  scale_y_continuous(labels = unit_format(unit = "Billion", scale = 1e-09))

#We see from this graph that casuals have the longest ride times in total and by a much greater amount

#Which group uses the bikes the most often?
all_trips_all %>% 
  group_by(usertype) %>% 
  summarise(number_of_rides = n()) %>%
  ggplot(aes(x = usertype, y = number_of_rides, fill = usertype)) + 
    geom_bar(stat="identity") +
    labs(title="Total Ride Count by membership", y="Total Ride Count", x="Membership Status") +
    guides(fill = guide_legend(title = 'Membership Status')) +
    scale_y_continuous(labels = unit_format(unit = "Million", scale = 1e-06))

#Those with memberships use the bikes more often

#Order by day of week
all_trips_all$day_of_week<- ordered(all_trips_all$day_of_week, levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
# One what days are the rides lengths longest and shortest for both members
# and casuals?
aggregate(all_trips_all$ride_length ~ all_trips_all$usertype + all_trips_all$day_of_week, FUN = mean)

#We see from this table that both members and casuals are most
#active on Thursday and Friday
#let's look at a graph to see the trend better
#---------------------
all_trips_all %>% 
  mutate(weekday = wday(start_time, label = TRUE)) %>% 
  group_by(usertype, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(usertype, weekday)  %>% 
  ggplot(aes(x = weekday, y = average_duration, fill = usertype)) +
  geom_col(position = "dodge") +
  labs(title="Ride duration by day of week", y="Average Duration(seconds)", x="Day of week") +
  guides(fill = guide_legend(title = 'Membership Status'))
#The graph shows that average ride duration for casuals
#exceed that of members on all days 

#What about the number of rides per day for both groups?
all_trips_all %>% 
  mutate(weekday = wday(start_time, label = TRUE)) %>%  #creates weekday field using wday()
  group_by(usertype, weekday) %>%  #groups by usertype and weekday
  summarise(number_of_rides = n())	%>% 					#calculates the number of rides and average duration ) %>% 		# calculates the average duration
  arrange(usertype, weekday)	

#and the graph to better illustrate the point
all_trips_all %>% 
  mutate(weekday = wday(start_time, label = TRUE)) %>% 
  group_by(usertype, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(usertype, weekday)  %>% 
  ggplot(aes(x = weekday, y = number_of_rides, fill = usertype)) +
    geom_col(position = "dodge") +
    labs(title="Total Ride Count by weekday", y="Total Ride Count", x="Day of Week") +
    guides(fill = guide_legend(title = 'Membership Status')) +
    scale_y_continuous(labels = unit_format(unit = "Thousand", scale = 1e-03))
#We can see that members ride the bikes the most times on all days
#except Friday and Saturday. Members rode more consistently while
#casuals had peak ride volumes on Thursday, Friday, and Saturday.

#let us analyze number of rides by month and ride type
all_trips_all %>% 
  mutate(month_of_year = month(start_time, label = TRUE)) %>%  #creates weekday field using wday()
  group_by(usertype, month_of_year) %>%  #groups by usertype and weekday
  summarise(number_of_rides = n()							#calculates the number of rides and average duration 
            ,average_duration = mean(ride_length)) %>% 		# calculates the average duration
  arrange(usertype, month_of_year)	

#and the visualization
all_trips_all %>% 
  mutate(month_of_year = month(start_time, label = TRUE)) %>% 
  group_by(usertype, month_of_year) %>% 
  summarise(number_of_rides = n()
            ,average_duration = mean(ride_length)) %>% 
  arrange(usertype, month_of_year)  %>% 
  ggplot(aes(x = month_of_year, y = number_of_rides, fill = usertype)) +
  geom_col(position = "dodge") +
  labs(title="Total Ride Count per month", y="Total Ride Count", x="Month of Year") +
  guides(fill = guide_legend(title = 'Membership Status')) +
  scale_y_continuous(labels = unit_format(unit = "Thousand", scale = 1e-03))

#We see that the quantity of rides peaks around June, July, and August
#for casuals and July, August and September. There is great potential
#to make a sales pitch to casuals during the summer months

#Let us analyze total ride duration for each month

# Let's create a visualization for total duration by month
all_trips_all %>% 
  mutate(month_of_year = month(start_time, label = TRUE)) %>% 
  group_by(usertype, month_of_year) %>% 
  summarise(sum_duration = sum(ride_length)) %>% 
  arrange(usertype, month_of_year)  %>% 
  ggplot(aes(x = month_of_year, y = sum_duration, fill = usertype)) +
  geom_col(position = "dodge") +
  labs(title="Aggregate ride duration by month", y="Total Ride Duration(seconds)", x="Month of Year") +
  guides(fill = guide_legend(title = 'Membership Status')) +
  scale_y_continuous(labels = unit_format(unit = "Million", scale = 1e-06))
#for casuals average ride duration is much higher for most months but especially true for June, July, August, and September
#from previous graphs we learned that they are higher on all days of the week as well
#this graph reinforces the notion that the summer months provides the
#most amount of opportunities to convert casuals but the opportunity to convince
#casuals to buy memberships exists in all months and days of the week


#we know from summary statistics that the mean ride 
#duration is much higher than the median; this suggest that there
#many ride durations on extreme opposite ends of the spectrum

#one question that can be asked is whether those individuals who would
#be most affected by per minute pricing options would benefit from
#a membership


#this leaves the question of why casuals have a much larger
#total ride duration; perhaps casuals are much more likely to have
#high ride duration?
#create a subset of the main data frame where ride lengths are greater than the mean
all_trips_test2 <- all_trips[(all_trips$ride_length>=588),]
#the mean average 588 seconds
all_trips_test2 %>% 
  group_by(usertype) %>%
  summarize(number_of_rides = n()) %>%
  ggplot(aes(x = usertype, y = number_of_rides, fill = usertype)) + 
    geom_bar(stat="identity") +
    labs(title="Total number of rides by membership(greater than 588 seconds)", y="Total number of rides", x="Membership status") + 
    theme(legend.position = "none")

#We can see that our hypothesis is correct; casuals much more
#frequently ride for more than 20 minutes(average) compared to members
#this is important because those who pay by the minute are missing
#out on the benefits of a membership

#Another question one may have is how the statistics differ between
#different type of bikes
all_trips_all %>% 
  group_by(usertype, biketype) %>% 
  summarise(sum_duration = sum(ride_length)) %>% 
  arrange(usertype, biketype)  %>% 
  ggplot(aes(x = biketype, y = sum_duration, fill = usertype)) +
  geom_col(position = "dodge")

# We can ignore docked bikes since they are not actual rides
# This graph shows that classic bikes are much more popular than electric
# bikes. However, the difference in popularity is greater for the casuals
# than for the members.Perhaps electric bikes are more expensive on a per
# minute basis and casual hesitate to pay for it.
# perhaps members are less hesitant to ride it due to the fact that they
# have unlimited access to all bikes


#Summary of findings
#1. the total amount of time that casuals spend riding bikes exceed
#that of members; this presents an opportunity to gain plenty
#of potential new members
#2. members ride bikes more often than casuals; I believe this is
#because members can take full advantage of unlimited rides and choose to do so
#3. The data shows that number of rides are the highest for members
#on the weekdays. This number stays consistent on all the weekdays.
#This is likely due to members using the bikes to travel to a fro 
#from work and home
#
#4. The average amount of time spent riding bikes differ by day of the
# week; more specifically Thursdays, Fridays, and Saturdays are the
# busiest
# The average amount of time spent riding bikes also differ by
# month of the year as well; specifically bikes get used the most
# in total in the Summer months
# 5. My analysis shows that classic bikes are more popular than
# electric bikes for both groups; however, for members, the classic
# and electric bikes are closer in popularity compared to casuals

#ACT
#1. The company should engage in a marketing campaign to incentivize
# casual riders to buy a membership as the return on investment is
# likely to be high due to the fact that the total aggregate riding time 
# for non-members exceed that of members by a wide margin
#2. the company should market unlimited rides as one of the benefits
#of obtaining a membership
#3. since transportation to work may be one of the reasons why someone
# might purchase a membership, it may be wise to set up bike stations
# in both the business district of the city and the residential areas;
# then in the marketing campaign the company can tout how convenient
# the bike locations are; non members might start using the bikes
# to travel to work which will naturally lead them to purchase
# memberships
#4. Bike usage is the greatest during the Summer months.
# this is the prime opportunity to convert casuals to members; it may
# be beneficial to have a Summer sale to further incentivize
# buying a membership during that critical time
#5. Since, members are less hesitant to use electric bikes compared
# to casuals, the company can market unlimited rides with electric
# bikes as part of a membership to appeal to casuals who might want
# to ride electric bikes


#=================================================
# STEP 5: EXPORT SUMMARY FILE FOR FURTHER ANALYSIS
#=================================================
# Create a csv file that we will visualize in Excel, Tableau, or my presentation software
counts <- aggregate(all_trips_all$ride_length ~ all_trips_all$member_casual + all_trips_all$day_of_week, FUN = mean)
bike_median <- aggregate(all_trips_all$ride_length ~ all_trips_all$member_casual + all_trips_all$day_of_week, FUN = median)
write.csv(counts, file = 'C:/Users/An-94/Desktop/google_analytics/R\\bike_count.csv')
write.csv(bike_median, file = 'C:/Users/An-94/Desktop/google_analytics/R\\bike_median.csv')
write.csv(all_trips_all ,file = 'C:/Users/An-94/Desktop/google_analytics/R\\bike_complete.csv')

