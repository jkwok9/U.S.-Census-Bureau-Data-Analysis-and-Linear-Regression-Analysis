library(plotrix)
#gives data with onyl 2023 and state code 36 representing newyork with ages 16+ and labforce that does not include n/a
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0)
print(data)

#get the freq
participation_counts <- table(data$empstat)
# 6 Create a bar plot for participation status
labels <- c("Employed", "Unemployed", "Not in Labor Force")
barplot(participation_counts, 
        main = "Participation Status", 
        col = "green", 
        xlab = "Participation status", 
        ylab = "# of individuals",
        names.arg = labels)


# 7 bar char based on sex
sex <- table(data$sex)
labels_sex <- c("Male","Female")
barplot(sex, 
        main = "Sex Distribution", 
        col = "blue", 
        xlab = "Sex", 
        ylab = "# of individuals",
        names.arg = labels_sex)

data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0)
#8 horizontal bar chart based on race
race <- table(data$race)
labels_race <- c("White","Black","Other","Other","Other","Other","Other","Other","Other")
options(scipen = 999)
barplot(race, horiz = TRUE,
        main = "Race Distribution", 
        col = "yellow", 
        ylab = "Race", 
        xlab = "# of individuals",
        las = 1,
        names.arg = labels_race)

#9 bar for marital status
# two is married and 6 is nevermarried/single 1 ia married
options(width = 200)  
options(max.print = 100)
print(data)
marital <- table(data$marst)
labels_status <- c("married","married,spouse absent","other","other","other","Single/nevermarried")
par(mar = c(5, 12, 4, 2))
par(mgp = c(3, 1, 0))
barplot(marital, horiz = TRUE,
        main = "Marital Status Distribution", 
        col = "purple", 
        ylab = "Martial Status", 
        xlab = "# of individuals",
        las = 1,
        names.arg = labels_status)

#10 histo of ages
age_data <- ECO380_ACS$age[ECO380_ACS$age >= 15]
# Create a histogram with 5-year intervals
par(mar = c(5, 8, 4, 2))
hist(age_data, 
     breaks = seq(15, max(age_data) + 5, by = 5), 
     main = "Frequency Distribution of Individuals' Ages", 
     xlab = "Age (5-year intervals)", 
     ylab = "Individuals", 
     col = "lightblue", 
     border = "black")

# 11 pie
education_counts <- table(ECO380_ACS$educ)
#freq to percentages
education_percentages <- round(100 * education_counts / sum(education_counts), 1)
# labels with percentages for the pie chart
education_labels <- paste(names(education_counts), "(", education_percentages, "%)", sep = "")
# Create the pie chart
pie(education_counts, 
    labels = education_labels,
    main = "Distribution of Individuals by Educational Attainment", 
    col = rainbow(length(education_counts)),
    labelcex = 0.5,  # Reduce label size
    explode = 0.1)

#12 hist of wage income
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0)
wage_income <- data$incwage
hist(wage_income,
     main = "Frequency Distribution of Individuals' Wage Income", 
     xlab = "Wage Income", 
     ylab = "Individuals", 
     col = "skyblue", 
     border = "black",
     xlim = c(0, max(wage_income)))

# 14 varaible of incwage without 0
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
print (data$incwage)
options(scipen = 100)
#13 creation of new_incewage that exxcludes values of 0
new_incwage <- data$incwage
print(new_incwage)
options(width = 150)
hist(new_incwage,
     breaks = seq(0, max(new_incwage), by = 5000),
     main = "Wage Income without 0",
     xlab = "Wage Income", 
     ylab = "Individuals", 
     col = "skyblue", 
     border = "black",
     xlim = c(0, 200000))  

# 15 boxplot for new_inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
boxplot(new_incwage,
        main = "Distribution of Wage Income", 
        ylab = "Wage Income", 
        col = "blue", 
        border = "black", 
        outline = TRUE,
        ylim = c(0, 200000))  # Show outliers explicitly

mean_incwage <- mean(new_incwage)  # Calculate mean
sd_incwage <- sd(new_incwage)      # Calculate standard deviation
standardized_incwage <- (new_incwage - mean_incwage) / sd_incwage 
#remove outliers that is 3
no3_incwage <- new_incwage[abs(standardized_incwage) < 3] 

# 16
mean_incwage <- mean(new_incwage)  # Mean
sd_incwage <- sd(new_incwage)      # Standard deviation
# zscore variable z_new_incwage
z_new_incwage <- (new_incwage - mean_incwage) / sd_incwage  # Z-score 
#observations with zscores greater than 3
no3_data <- new_incwage[abs(z_new_incwage) < 3]
z_no3 <- z_new_incwage[abs(z_new_incwage) < 3] 
mean_z <- mean(z_no3)
sd_z <- sd(z_no3)

#17 correlation between new_incwage and age
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
age <- data$age
correlation <- cor(age, new_incwage)
print(correlation)

#18 scot plot between relationship between new_incwage and age
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
age <- data$age
plot(age, new_incwage,
     main = "Scatter Plot of Age vs Wage Income",
     xlab = "Age",
     ylab = "Wage Income",
     col = "blue",
     pch = 16,  # Solid circle points
     cex = 0.5,
     ylim = c(0, 200000))  # Reduce point size 
# linearline
abline(lm(new_incwage ~ age, data = data), col = "red", lwd = 2)

#19 regression analysis with new_incwage as the dependent variable and age as the independent variable
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
age <- data$age
lmcor = lm(new_incwage ~ age, data = data)
summary(lmcor)

#20 correlation between new inc and usual hours worked per week.
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
hrsWork <- data$uhrswork
correlation <- cor(hrsWork, new_incwage)
print(correlation)


#21 scat of hrswork and new inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
hrsWork <- data$uhrswork
plot(hrsWork, new_incwage,
     main = "Scatter Plot of Wage Income vs Hours Worked",
     xlab = "Usual Hours Worked",
     ylab = "Wage Income",
     col = "blue",
     pch = 16,  # Solid circle points
     cex = 0.5,
     ylim = c(0, 200000))  # Reduce point size 
# linearline
abline(lm(new_incwage ~ hrsWork, data = data), col = "red", lwd = 2)


#22 regre on hrs worked and new inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
new_incwage <- data$incwage
hrsWork <- data$uhrswork
lmcor = lm(new_incwage ~ hrsWork, data = data)
summary(lmcor)

#23 binary variable & percentage that 4 or higher
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
four_plus_college <- ifelse(data$educ >= 4, 1, 0)
print(mean(data$educ >= 4))
percentage_College4 <- mean(data$educ >= 4) * 100
print(percentage_College4)

#24 correlation between four plus and new inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
four_plus_college <- ifelse(data$educ >= 4, 1, 0)
new_incwage <- data$incwage
correlation <- cor(four_plus_college, new_incwage)
print(correlation)

#25 scat between four plus and new inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
four_plus_college <- ifelse(data$educ >= 4, 1, 0)
new_incwage <- data$incwage
par(mar = c(5, 4, 4, 2))
plot(four_plus_college, new_incwage,
     main = "Scatter Plot of Wage Income vs four plus college",
     xlab = "Number of people with more and less than 4 years of college",
     ylab = "Wage Income",
     col = "orange",
     pch = 16,  # Solid circle points
     cex = 0.5,
     ylim = c(0, 150000))  # Reduce point
abline(lm(new_incwage ~ four_plus_college, data = data), col = "red", lwd = 2)

#26 regression between four plus college and new inc
data <- subset(ECO380_ACS, year == 2023 & statefip == 36 & age > 16 & labforce > 0 & incwage > 0)
four_plus_college <- ifelse(data$educ >= 4, 1, 0)
new_incwage <- data$incwage
lmcor = lm(new_incwage ~ four_plus_college, data = data)
summary(lmcor)
