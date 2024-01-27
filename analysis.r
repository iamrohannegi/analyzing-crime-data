library(plyr)
library(dplyr)
library(ggplot2)

# PHILLY 

philly_data_new <- mutate(philly_data, 
                          year = as.numeric(format(dispatch_date, format = "%Y")),
                          month = as.numeric(format(dispatch_date, format = "%m")),
                          day = as.numeric(format(dispatch_date, format = "%d")))



philly_data_new %>% 
  count(year) %>% 
  ggplot(aes(x = year, y=n)) +
  geom_line() +
  labs(title = "Crime Incidents Over Time (Philadelphia)",
       x = "Year",
       y = "Crime Count")

philly_data_new %>% 
  count(text_general_code) %>% 
  arrange(desc(n)) %>%
  top_n(12) %>% 
  tail(10) %>% 
  mutate(text_general_code = reorder(text_general_code, n)) %>%
  top_n(10) %>%
  ggplot(aes(y = text_general_code, x = n)) +
  geom_col(fill = "#4e0090") + 
  labs(x = "Count", y = "Crimes", title="Top 10 Crimes in Philadelphia")


counts <- ddply(philly_data_new, .(philly_data_new$year, philly_data_new$month), nrow)
names(counts) <- c("y", "m", "Freq")
View(counts)


ggplot(counts, aes(x = m, y = y, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "green", high = "red") +
  scale_x_continuous(breaks = seq(min(counts$m), max(counts$m), by = 1)) +
  scale_y_continuous(breaks = seq(min(counts$y), max(counts$y), by = 1)) +
  labs(title = "Crime Incidents Heatmap (Philadelphia 2006-2016)",
       x = "Month",
       y = "Year",
       fill = "Crime Count") 

top_codes <- names(sort(table(philly_data_new$text_general_code), decreasing = TRUE))[2:7]
filtered_data <- philly_data_new[philly_data_new$text_general_code %in% top_codes, ]

ggplot(filtered_data, aes(x = text_general_code, y = dispatch_time)) +
  geom_boxplot(fill = "lightblue", color = "blue") +
  labs(title = "Dispatch Time by Crime Type (Philadelphia 2006-2016)",
       x = "Crime Type",
       y = "Dispatch Time")


# SAN FRANCISCO
glimpse(sanfran_data)
sanfran_data$Date <- as.Date(sanfran_data$Date, format = "%m/%d/%Y")
sanfran_data_new <- mutate(sanfran_data, 
                           year = as.numeric(format(Date, format = "%Y")),
                           month = as.numeric(format(Date, format = "%m")),
                           day = as.numeric(format(Date, format = "%d")))

 

sanfran_data_new %>% 
  filter(year != 2018) %>% 
  count(year) %>% 
  ggplot(aes(x = year, y=n)) +
  geom_line() +
  labs(title = "Crime Incidents Over Time (San Francisco)",
       x = "Year",
       y = "Crime Count") +
  scale_x_continuous(breaks = seq(2003, 2017, 1), labels = seq(2003, 2017, 1))

sanfran_data_new %>% 
  count(Descript) %>% 
  arrange(desc(n)) %>%
  top_n(10) %>%
  mutate(Descript = reorder(Descript, n)) %>%
  ggplot(aes(y = Descript, x = n)) +
  geom_col(fill = "#4e0090") + 
  labs(x = "Count", y = "Crimes", title="Top 10 Crimes in San Francisco")

sanfran_data_new <- sanfran_data_new %>% filter(year != 2018)
counts_sanfran <- ddply(sanfran_data_new, .(sanfran_data_new$year, sanfran_data_new$month), nrow)
names(counts_sanfran) <- c("y", "m", "Freq")

ggplot(counts_sanfran, aes(x = m, y = y, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "green", high = "red") +
  scale_x_continuous(breaks = seq(min(counts_sanfran$m), max(counts_sanfran$m), by = 1)) +
  scale_y_continuous(breaks = seq(min(counts_sanfran$y), max(counts_sanfran$y), by = 1)) +
  labs(title = "Crime Incidents Heatmap (San Francisco 2003-2017)",
       x = "Month",
       y = "Year",
       fill = "Crime Count") 

sanfran_data_new$DayOfWeek <- factor(sanfran_data_new$DayOfWeek, 
                                     levels = c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))

ggplot(sanfran_data_new, aes(x = DayOfWeek)) +
  geom_bar() +
  labs(title = "Crime Incidents by Day of Week (San Francisco)",
       x = "Day of Week",
       y = "Crime Count")

crime_count_by_day <- sanfran_data_new %>%
  group_by(DayOfWeek) %>%
  summarise(CrimeCount = n())

# Plot with log scale on the Y-axis
ggplot(crime_count_by_day, aes(x = DayOfWeek, y = CrimeCount, group = 1)) +
  geom_line() +
  labs(title = "Weekly Trends in Crime Incidents in San Francisco",
       x = "Day of Week",
       y = "Crime Count") +
  scale_y_log10()
