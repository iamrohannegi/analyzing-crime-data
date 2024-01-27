Advanced-Data Analytics for Crime Data 


ABSTRACT 

Through the use of cutting-edge Big Data Analytics techniques, this project seeks to improve public safety by obtaining insightful knowledge from extensive crime databases. Building a solid data infrastructure, putting good analytics algorithms into practice, and producing useful visualization tools for legislators and law enforcement are the main goals. The project's primary objective is to use big data to find trends, correlations, and patterns in crime data so that resource allocation and proactive decision-making are made possible. The expected result is a comprehensive platform for visualizing crime data that offers real-time insights and makes it possible to identify temporal and spatial trends in the criminal data gathered from San Francisco, and Philadelphia. The initiative intends to assist law enforcement agencies and legislators in making informed decisions by providing complicated crime statistics in an understandable way. In the end, this project's success will help achieve the main objective of reducing crime rates in communities by using a visually striking method of identifying and addressing trends in crime. 

INTRODUCTION 

In a time of unmatched data surplus, the fields of law enforcement and crime prevention are undergoing radical change. Big Data—a term used to describe the convergence of large datasets—offers a singular chance to glean insightful knowledge that has the potential to profoundly impact public safety1. In exploring the field of "Advanced Data Analytics for Crime Data", this project acknowledges the necessity of gathering and analyzing vast amounts of data in addition to presenting it clearly, useful, and, most importantly, educational. Crime data is a valuable source of information that, when correctly represented, may reveal hidden patterns, correlations, and trends. This data might range from event reports to socio-economic indicators. By incorporating Big Data Analytics into the visualization process, legislators and law enforcement organizations might potentially get a thorough grasp of the dynamics of crime. This project aims to provide a deeper understanding of the complicated network of criminal activity by transforming unstructured data into meaningful and understandable representations through refined visualization tools2. 

DATA ANALYSIS 

The two crime datasets—one covering Philadelphia and the other covering San Francisco—that we used for our analysis are accessible to the general public. From January 1, 2003, to November 8, 2017, 2,129,525 criminal incidences were recorded in San Francisco3. There are 2,111,732 criminal incidents in the Philadelphia dataset that were recorded between January 1, 2006, and December 31, 20174. 

Data Preprocessing: 

The crime datasets had very little to do with preprocessing as it is monitored and handled by the police departments of well-established US cities. The datasets were almost perfect and were ready to use. To make it just perfect and run some visualization models, the following steps were performed for data conditioning: 

 

dispatch_date, the attribute that kept a record of the date when the police unit was dispatched to the incident, column broken down into three columns: year, month, and day (for Philadelphia dataset). 

Created 2 more attributes, “text_general_code” – used to store information on the type of incident and “dispatch_time” – used to store the time taken for the police unit to reach the place of incident (for Philadelphia dataset).  

Date column broken down into three columns: year, month, and day (for San Francisco dataset). 

Created 2 more attributes, “Descript” – used to store information on the type of incident and “DayOfWeek” – used to store the day the incident occurred (for San Francisco dataset). 

Imputed random values sampled from the non-missing values, computed their mean, and then replaced the missing ones (for both the datasets)5. 

Omitted some features that are not needed like IncidentNum and Coordinate (for both the datasets). 

DATA VISUALIZATION 


![08fab97a-b078-4396-9a29-6771aeb03066](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/8716ad86-d795-4449-80b0-324a87d49cec)

Utilizing a line graph, we depicted the trend in recorded crimes in Philadelphia from 2006 to 2016, showcasing a notable decline in incidents. The most substantial drop occurred around 2008 or shortly after, warranting exploration into relevant events or policies during that timeframe for insights into the influencing factors behind the observed changes in crime rates.  


![fb536792-e9c1-486d-84d1-80c7ca9fe053](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/cd82f768-84b9-4312-b326-d0c9361de49f)

Based on the crime incidents reported throughout the years we found the top 10 crimes in the city of Philadelphia. The major incidents we got from this are the following:            Persistent Property Crimes                      Drug-Related Challenges                        White-Collar Crime Impact 


![ff1d2175-9667-4267-b8c3-563f51d4af9a](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/2c063f96-5bd9-45b8-a066-96bec4f2194f)

Description automatically generatedAnother way to visualize time series data is by using heatmap. With the help of the heatmap, we found out that there seems to be a consistent pattern within each year in the city of Philadelphia, with a noticeable increase in crime incidents during the summer months (June to August). This seasonal variation may be influenced by factors such as increased outdoor activities, tourism, or warmer weather, which can impact crime rates. 

A graph of a chart
![4b34c63b-4092-4b4c-920c-30514ffd034e](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/c75b6b6a-7ea7-4caa-8bc2-73e380742e60)

We decided to use the Box plot to visualize Dispatch Time. Box plot is a great chart to use when showing the distribution of data points across a selected measure. These charts display ranges within variables measured. The reason for choosing box plot here is to display the outliers in the data. Outliers in data can be useful as they highlight exceptional cases or anomalies, aiding in the identification of unique patterns. However, in certain situations, outliers can act as noise, disrupting the analysis. 


![9c769516-8054-46b6-83df-786fa36d2d27](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/3cabb3f1-f746-4a44-ab68-cfc157db12ed)

California boasts one of the highest numbers of registered vehicles in the United States, reflecting its large population and car-centric culture6. This is also evident in the crime data, which shows a high incidence of automobile-related criminal incidents. The major incidents we got from this are Property Crimes Predominant and Traffic Violations. 

![75c74c85-7608-4162-93b5-08137da25e2c](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/ef65e595-f636-4a36-a698-fbeb8129fad2)

From 2003 to 2005, there is a relatively stable trend with a slight decrease in crime counts. There is an apparent increase in crime counts from 2014 to 2015. The number rises indicating a reversal of the previous declining trend. 


![38bbe41a-22a7-424b-a3f9-714e80c2b7c7](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/5750bdfd-5fba-43d9-963f-9801a294723f)
There is a general upward trend in the total number of reported crime incidents over the years, especially from 2014 onwards. This could be indicative of changes in social or economic conditions, population growth, or shifts in criminal behavior. Within each year, there are months with higher and lower crime counts. For instance, there are peaks during the summer months (June to August), which is a common trend in many cities. This could be due to increased outdoor activities and larger populations in certain areas during the summer. Despite the overall trends, there is a consistent monthly reporting of crime incidents, emphasizing the need for ongoing monitoring and analysis. 


![1b3ac3d5-944a-4a3c-826b-d15281c113f9](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/b66fa9ce-e289-474e-90b1-a140889f5c83)
Here, we used a simple bar graph to display the total number of crime incidents reported each day over the years in the city of San Francisco. There's not really any meaningful insight that we can derive from this visualization chart. We used this example to explain how data alone may not convey a clear message; effective visualization is also crucial. A well-designed graph enhances understanding, highlighting patterns and trends. In contrast, poorly executed visualizations can mislead or obscure information, leading to misinterpretation. Choosing the right visualization model ensures accurate communication of insights, while bad visualizations can hinder comprehension and decision-making, emphasizing the importance of thoughtful presentation in data analysis. 


![779b6290-e716-4a81-ad8e-9a9ed276a74d](https://github.com/iamrohannegi/analyzing-crime-data/assets/16450711/390a66f4-4cb7-4565-9493-4bffae770759)
With the same data as the previous bar graph but presented in a different visualization chart (a line graph), we can illustrate the trend of crime incidents reported between the days and derive many meaningful insights. 

Weekend Peaks (Friday, Saturday): Fridays and Saturdays show elevated crime counts, which is a common trend in many urban areas. The increase during these days could be attributed to higher levels of social activity, nightlife, and larger gatherings, leading to more opportunities for criminal incidents. 

Peak Day: Wednesday (305,039): Wednesday stands out as the day with the highest reported crime count. This may be influenced by various factors, such as mid-week activities, events, or patterns in criminal behavior during this specific day. 

Lower Counts on Monday and Sunday: Mondays and Sundays show comparatively lower crime counts. This could be influenced by factors such as reduced nightlife on Sundays and the start of the workweek on Mondays, potentially affecting criminal activity patterns. 

CONCLUSION AND FUTURE WORK 

Throughout this project, our involvement in data analysis and visualization has expanded our understanding of global crime trends, emphasizing the importance of presenting complex data in an understandable manner. The integration of Big Data analytics with powerful visualization tools has proven crucial in uncovering intricate connections within crime data, providing authorities with valuable insights for informed decision-making. Looking ahead, our goals extend beyond the current project. We aim to delve into data mining models to enhance our ability to comprehend and forecast future crime data. Exploring various data mining methods will enable us to detect new trends and proactively address potential public safety issues. Additionally, our future work involves expanding the range of visualizations, including advanced representations such as heatmaps on geographical maps. This spatial context can aid law enforcement in identifying high-impact locations and optimizing resource allocation for more effective policing strategies. 

