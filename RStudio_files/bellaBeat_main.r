#BellaBeat Data Pre-Analysis Work

#clean tables and making sure that we only have char, num
clean_names(dailyActivity_merged) #removed and merged
clean_names(dailyCalories_merged) #removed and merged
clean_names(dailyIntensities_merged) #removed and merged
clean_names(dailySteps_merged) #removed and merged
clean_names(heartrate_seconds_merged) #saved df
clean_names(hourlyCalories_merged) #removed and merged
clean_names(hourlyIntensities_merged) #removed and merged
clean_names(hourlySteps_merged) #removed and merged
clean_names(minuteCaloriesNarrow_merged) #removed and merged
clean_names(minuteCaloriesWide_merged) #removed and merged
clean_names(minuteIntensitiesNarrow_merged) #removed and merged
clean_names(minuteIntensitiesWide_merged) #removed and merged
clean_names(minuteMETsNarrow_merged) #removed and merged
clean_names(minuteSleep_merged) #saved df
clean_names(minuteStepsNarrow_merged) #removed and merged
clean_names(minuteStepsWide_merged) #removed and merged
clean_names(sleepDay_merged) #saved df
clean_names(weightLogInfo_merged) #saved df


#Combining three data tables: hourly_df
hourly_df <- cbind(hourlyCalories_merged, hourlyIntensities_merged, hourlySteps_merged)
# Remove duplicates from data frame:
hourly_df <- hourly_df[!duplicated(as.list(hourly_df))]
#Removing old dataframes
remove(hourlyCalories_merged, hourlyIntensities_merged, hourlySteps_merged)

#Combining four data tables: dailyActivities_df
dailyActivities_df <- cbind(dailyActivity_merged, dailyCalories_merged, dailyIntensities_merged, dailySteps_merged)
# Remove duplicates from data frame:
dailyActivities_df <- dailyActivities_df[!duplicated(as.list(dailyActivities_df))]
#Removing old dataframes
remove(dailyActivity_merged, dailyCalories_merged, dailyIntensities_merged, dailySteps_merged)

#Combining four data : minutesNarrow 
minutes_df <- cbind(minuteCaloriesNarrow_merged, minuteIntensitiesNarrow_merged, minuteMETsNarrow_merged, minuteStepsNarrow_merged)
# Remove duplicates from data frame:
minutes_df <- minutes_df[!duplicated(as.list(minutes_df))]
#Removing old data frames and correcting name
remove(minuteCaloriesNarrow_merged, minuteIntensitiesNarrow_merged, minuteMETsNarrow_merged, minuteStepsNarrow_merged)
minutesNarrow <- minutes_df
remove(minutes_df)

#Combining three data tables: minutesWide_df
minutesWide_df <- cbind(minuteCaloriesWide_merged, minuteIntensitiesWide_merged, minuteStepsWide_merged)
# Remove duplicates from data frame; not repeated data found
minutesWide_df <- minutesWide_dff[!duplicated(as.list(minutesWide_df))]
#Removing old dataframes
remove(minuteCaloriesWide_merged, minuteIntensitiesWide_merged, minuteStepsWide_merged)


#List of the  2 df: dailyActivities_df, heartrate_seconds_merged, 

# List of the 6 df that were not used: minutuSleep_merged, minutesNarrow, hourly_df, minutesWide_df, sleeDay_merged, and weightLogInfo_merged

#Converting df to .csv file
write.csv(dailyActivities_df,"C:\\Users\\lewis\\Desktop\\Data Analysis\\Case Studies\\archive\\Case Study 2 How Can a Wellness Technology Company Play It Smart\\dailyActivities.csv", row.names = FALSE)
write.csv(dailyActivities_summary_df,"C:\\Users\\lewis\\Desktop\\Data Analysis\\Case Studies\\archive\\Case Study 2 How Can a Wellness Technology Company Play It Smart\\dailyActivities_summary.csv", row.names = FALSE)
write.csv(model_dailyActivities_df,"C:\\Users\\lewis\\Desktop\\Data Analysis\\Case Studies\\archive\\Case Study 2 How Can a Wellness Technology Company Play It Smart\\model_dailyActivities_table.csv", row.names = FALSE)

write.csv(heartrate_seconds_merged,"C:\\Users\\lewis\\Desktop\\Data Analysis\\Case Studies\\archive\\Case Study 2 How Can a Wellness Technology Company Play It Smart\\

library(rmarkdown) datatable(summary(heartrate_seconds_csv))
