# U.S.-Census-Bureau-Data-Analysis-and-Linear-Regression-Analysis
The analysis of the U.S Census Bureau survey of the year 2023 in the state of New York data set along with linear regression analysis using R
# Objective 
The goal of this project is to investigate the impact of education level, work hours, and age on wage income during the year 2023 starting with ages 16 and up. The analysis includes regression modeling to assess how four or more years of college affect earnings and aims to provide actionable insights into wage disparities across different demographic groups.
# Dataset
This dataset is from the U.S Cenesus Bureau survey that is made public. There are 10,031,786 entires in the original dataset. However, after changing the dataset to only include the year 2023 with individuals aged 16 and up in the state of New York for more specfic analyization, there are now 172,703 entires. The data includes:\
**sex**: gender of the person\
**age**: the age of the person\
**marst**: marital status of the person\
**race**: the race of the person\
**educ**: the education attainment/level of the person\
**degfield**: the field the individual obtained their degree\
**empstat**: the empolyment status of the person\
**labforce**: the labor foce status of the person\
**uhrswork**: the usual hours worked per week for the individual\
**inctot**: the total personal income\
**incewage**: the wage and salary income
# Distribution of individuals based on their labor force participation status
it is revealed that the vast majority of individuals in the dataset are employed. There is a very small number of individuals who are unemployed, shown by the short bar for the "Unemployed" category. Additionally, coming in second highest is a substantial number of individuals are not in the labor force, as seen by the bar for "Not in Labor Force," which is smaller than the "Employed" bar but stilnoticeably larger than the "Unemployed" bar. 

<img src="https://github.com/user-attachments/assets/143c4c17-0fb4-47de-ada5-1d5284d65006" alt="Alt Text" width="450" height="300">

# Distribution of individuals based on their sex

It is indicated about the relative proportions of males and females in the population is that given the total number of individuals in 2023, there are a little more females than there are males. However, it also shows a fairly balanced distribution between males and females in the population, as the bars for both categories are of similar height.


<img src="https://github.com/user-attachments/assets/050e969e-ab1c-4d52-8f12-665d6dc9a21e" alt="Alt Text" width="450" height="300">

# Distribution of individuals by race
The insight that I can draw specifically about the population size of different racial groups is that the majority of individuals are white. As you can see from the graph, over 100,000 are white. There are also around 20,000 of blacks. However, the rest of the races such as Asian or pacific islanders only make up a tiny bit compared to others. This can represent a skewed distribution because of high the number of white individuals there are.


<img src="https://github.com/user-attachments/assets/7df20ce7-6c13-46de-bdf6-975a180f5d12" alt="Alt Text" width="450" height="300">

# Distribution of individuals based on their marital status
Based on the distribution of marital status presented in this graph, the number of married people has a huge increase over others. The second highest is single individuals that have never been married, which also contains a big chunk of individuals in this distribution. However, the other categories, including "Married, Spouse Absent" and other marital statuses, are much smaller, which shows that these statuses are relatively rare in comparison.


<img src="https://github.com/user-attachments/assets/53ee3ffc-c467-403d-8c83-e3c13d951810" alt="Alt Text" width="450" height="300">

# Frequency distribution of individuals' ages starting from age 15
The histogram reveals that the majority of the ages from all individuals 15 years old and up lies in between 15-20. This is derived from the fact that there is a peak at that 5 year interval. The peaks throughout the distribution is not prevalent. However, it is still clear enough to distinguish which ages have the highest frequency. In addition, the distribution of from ages 15 – 70 is fairly balanced, as drops and peaks through those intervals are as prevalent.


<img src="https://github.com/user-attachments/assets/3c9916b9-610b-42df-a6a4-aa2a78ae6f79" alt="Alt Text" width="450" height="300">

# Distribution of individuals by educational attainment
The group that has the highest level of educational attainment is grade 12. According to the pie chart, grade 12 (6) has a percentage of 29.8% which is almost double the second highest and accounts for the majority chunk of the pie. There are also 2 slices that take up a good chunk with percentages of 10.9% and 16.4%.


<img src="https://github.com/user-attachments/assets/2c1f5969-d203-435d-8a28-63c730b50adb" alt="Alt Text" width="450" height="300">

# Frequency distribution of individuals' wage income
<img src="https://github.com/user-attachments/assets/49f108a2-6779-44dd-9e00-08559c41f629" alt="Alt Text" width="450" height="300">

There are many individuals withe 0 income. Therefore, to further the analysis, all individuals with 0 income has been removed.

<img src="https://github.com/user-attachments/assets/79d921bb-1c07-475e-9caf-4dc97c8b30b8" alt="Alt Text" width="450" height="300">

# Distribution of wage income
Based on the boxplot that was created from the distribution of wage income, this boxplot allows us to determine a lot on the distribution of income based on how it is structured. The box plot tells us that it has a median of $50,000 of wage income from the horizontal black line in the blue box. In addition, you can tell that the wage income of the distribution has a high range because of its extended distance at the top of the blue box, to all the way to below 200,000. In addition, the box plot describes the outliers well. The black shaded area passed the maximum is the where multiple outliers are placed together, which tells us there are multiple outliers present with a huge range, as well as a median of 50,000.


<img src="https://github.com/user-attachments/assets/3f4d140b-e8e7-442e-ad6d-0df76d624542" alt="Alt Text" width="450" height="300">

# Relationship between age and wage income. Is the relationship positive, negative, or negligible?
Using the cor function to calculate the correlation coefficient of the relationship between age and wage income, I get that the correlation is 0.1307505. This correlation is a positive correlation. However, because it is closer to 0, it is considered a weak relationship. This also describes that as the age increases, the wages slightly increase, hence the weak positive correlation.

<img src="https://github.com/user-attachments/assets/659267d5-66fb-480f-b7ff-a4139e839484" alt="Alt Text" width="650" height="300">

# Relationship between wage and income
The scatter with the fitted line suggest that the nature and strength of the relationship is a positive relationship. Because the fitted line
is slowly increasing as the age increase, this shows there is a positive correlation between age and wage. In addition, the slowly increasing fitted line also show that as the age increases the wage also increase just like the depicted line.


<img src="https://github.com/user-attachments/assets/de7bc864-e758-448f-8291-6a36d7ab40e1" alt="Alt Text" width="450" height="300">

# Regression analysis with p-value and R-Squared valye about the relationship between age and wage income
The magnitude of the slope coefficient for age is 811.39, meaning that for every additional year of age, wage income increases on average by $811.39. This increase is relatively small, suggesting that while age contributes to higher wage income. The sign of the coefficient is positive, indicating that as individuals age, their wage income tends to increase. The p-value for the age coefficient is 0.00000000000000000022, confirming that this relationship is statistically significant at the 5% level. In addition, based on the p-value, we are able to reject the hypothesis as the p-value is much less than 0.05. However, the Multiple R-squared value is 0.0171 (1.71%). This means 1.71% of the variability in the data can be explained by the linear relationship between the income wages and the age.


<img src="https://github.com/user-attachments/assets/cc3b4330-1064-491c-a13e-647074a79873" alt="Alt Text" width="450" height="300">

# Correlation coefficient between the relationship between work hours and wage income
The correlation coefficient between wage income and usual hours worked per week is 0.3607, indicating a moderate positive relationship. This suggests that as individuals work more hours per week, their wage income tends to increase. The positive sign of the coefficient confirms that higher work hours are associated with higher earnings, which aligns with expectations, as increased work hours often lead to higher total compensation.


<img src="https://github.com/user-attachments/assets/ae7ce10a-af7d-41a6-a37a-cdc543be07d0" alt="Alt Text" width="650" height="300">

# Relationship between wage income and hours worked
The scatter plot with the fitted red line suggests a moderate positive relationship between usual hours worked per week and wage income. As the number of hours worked increases, wage income also tends to increase, as indicated by the upward- sloping line. In addition, the fitted line indicates a positive relationship plot shows a significant amount of spread around the fitted line, indicating that the strength of the relationship is moderate.


<img src="https://github.com/user-attachments/assets/32407a88-da84-445d-be65-b586edb7cdc2" alt="Alt Text" width="450" height="300">

# Regression analysis on the relationship between usual hours worked per week and wage income
The regression analysis reveals a statistically significant positive relationship between usual hours worked per week and wage income. The estimated coefficient for hours worked is 2698.46, meaning that for each additional hour worked per week, wage income increases on average by $2,698.46, holding other factors constant. The positive sign of the coefficient indicates that the relationship is positive—as the number of hours worked increases, wage income also tends to increase. The p-value for the hours worked coefficient is 0.00000000000000022, which is far below the 5% significance level 0.05. This allows us to reject the null hypothesis that the slope coefficient is equal to 0. This provides strong evidence that usual hours worked per week has a statistically significant linear relationship with wage income. The R-squared value is 0.1301. This means 1.301% of the variability in the data can be explained by the linear relationship between the income wages and the usual hours worked.


<img src="https://github.com/user-attachments/assets/60917964-8a17-45f3-bfc3-4ac83a81c793" alt="Alt Text" width="450" height="300">

# correlation coefficient about the relationship between four or more years of college education and wage income
After creating a binary varaible equals 1 for those with education levels of 4 years of college or 5+ years of college, and 0 otherwise. I was able to determine that 96.52% of individuals have four or more years of college education. Using this binary varaible, I was able to calculation the percentage using the mean function on the data.

The correlation coefficient between four or more years of college education and wage income is 0.0663, indicating a very weak positive relationship. This suggests that individuals with four or more years of college education tend to have slightly higher wage incomes, but the relationship is extremely weak. The magnitude of the correlation is close to zero, meaning that having four or more years of college education has only a small impact on wage income.


<img src="https://github.com/user-attachments/assets/60967faa-a4d0-4db3-858e-8853c960163d" alt="Alt Text" width="650" height="300">

# Regression anaylsis on the relationship between four or more years of college education and wage income
The regression analysis reveals a statistically significant positive relationship between having four or more years of college education and wage income. The coefficient for four_plus_college is 34,817, which means that, on average, individuals with four or more years of college education earn $34,817 more than those with less than four years of college education, holding other factors constant. The positive sign of the coefficient indicates that individuals with four or more years of college education tend to have higher wages. The p-value for the coefficient of four_plus_college is 0.00000000000000022 which is smaller than the 5% significance level (0.05) so we can reject the null hypothesis. The R-squared value is 0.004401. This means that 0.44% of the variability in the data can be explained by the linear relationship between the income wages and the four plus college.


<img src="https://github.com/user-attachments/assets/b49e6096-5e1f-4bc6-989e-63a9f96a26af" alt="Alt Text" width="550" height="300">

# Results/Insights
During this analysis, there were various factors that gave us insight on the affecting wage income
and the relationship between demographic variables such as education, marital status, labor force
participation, and sex. Through these findings and analysis, we now understand how these factors
influence wage income, the relationship between education and wages, and the prevalence of
different groups within the dataset.
- One of the key findings is the distribution of individuals by labor force participation. The data
shows that the majority of individuals are employed, followed by those who are not in the labor
force, with the smallest group being unemployed. The findings of sex distribution revealed a fairly
balanced population of males and females, with females slightly outnumbering males, highlighting
gender balance in the dataset.
- The race distribution demonstrated that the majority of individuals in the dataset are White,
followed by Black individuals, with other racial categories representing a much smaller portion of
the population. This suggests that racial diversity is present with a huge skewness towards White
individuals. Examining marital status, we were able to derive that the largest group in the dataset
consists of single/never married individuals, followed by married individuals. Other categories,
such as married, spouse absent, were much smaller.
- Regarding age distribution, the histogram analysis showed that a large portion of individuals in
the dataset are between the ages of 15-20. Which shows a young working-age population with the
age distribution relatively balanced across other intervals. In addition, this is also supported by the
education distribution where a significant percentage (nearly 30%) of individuals reported having
grade 12 as their highest level of education.
- In terms of wage income, the distribution was heavily skewed to the right, with most individuals
earning lower incomes to mid range incomes, while a few individuals earn significantly higher
amounts. When analyzing the relationship between age and wage income, a weak positive
correlation of 0.1307 was found, which shows that while age does contribute to an increase in
wage income, the relationship is weak. Similarly, a correlation of 0.3607 between hours worked
and wage income suggests a moderate positive relationship, showing that working for more hours
resulted in a higher income.
- The analysis of four or more years of college education and wage income revealed a very weak
positive correlation of 0.0663, indicating that while individuals with more education tend to have
slightly higher wages, the relationship is not strong. This was further confirmed by the regression
analysis, which found that individuals with four or more years of college earn on average $34,817
more than those with less education. However, the R-squared value of 0.0044 suggests that
education alone explains only a small portion of the variation in wage income.


