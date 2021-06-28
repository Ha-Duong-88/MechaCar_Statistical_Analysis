# MechaCar_Statistical_Analysis

This project involved applying core statistical concepts and using R to compute statistics on production data for MechaCar, a hypothetical car manufacturing company. The core statistical concepts applied in this study were:

      •	mathematical data types
      •	null and alternative hypothesis
      •	p-values and hypothesis testing
      •	t-test of the means
      •	correlation and linear regression tests
      •	comparing frequency distribution using chi-squared test

Two datasets (MechaCar_MPG and Suspension_Coils) were imported into RStudio integrated development environment (IDE) in order to use R to perform the computation and analysis.


## Linear Regression to Predict MPG
Objective: Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes by designing a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file

Linear_regression.png![Linear_regression](https://user-images.githubusercontent.com/80140082/123522314-617a8500-d671-11eb-953f-ea362653464f.png)

To predict mpg, this model uses five independent variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD. According to the results of the multiple linear regression, two of the independent variables, vehicle_length and ground_clearance, are statistically significant to predict future mpg observations and measurements when comparing each Pr(>|t|) value, which represents the probability that each coefficient contributes a random amount of variance to the linear model. 

The p-values for the independent variables are: vehicle_length is 2.60e-12, vehicle_weight is 0.078, spoiler_angle is 0.31, ground_clearance is 21e-08, and for AWD is 0.19. The intercept (slope) is 5.08e-08. The overall p-value is 5.35e-11.

### Conclusion
1) Using the significance level of 0.05 as the threshold for this study, we can see that the vehicle_length and ground_clearance are statistically significant variables in predicting the future observations for the mpg dependent variable. Their p-values are less than the significance level, which means that the null hypothesis is rejected. In other words, the vehicle_length and ground_clearance features provided a non-random amount of variance to the mpg values in the dataset. Therefore, the model is statistically significant. 

2) The slope intercept for this model is considered to be zero since the p-value of the independent variables (5.35e-11) is less than the slope intercept (5.808e-08). This means that there is a high probability that the same results will be obtained again and the vehicle_length and ground_clearance variables are able to predict future observations.

3) The linear model predicts the mpg of this hypothetical car manufacturing corporation's prototypes based on the adjusted r-squared value of .6825 which means that the model is predictive ~68% of the time in obtaining the expected effect. For each value (or row) that we pass into the model, 68% of the data does not produce random results. However, ~32% of the data produces random results. This suggests that there could be other information or confounding variables that are not accounted for in this model.

As aforementioned, for this analysis a common significance level of 0.05 was chosen as the threshold. However, it is important to note that the significance level may vary depending on the industry. For example, if the hypotheses are being used for critical decision-making such as the performance of pharmaceutical drug studies, consumer product safety, smaller cutoffs such as 0.01 or 0.001 may be better suited as the significance level.


## Summary Statistics on Suspension Coils
Objective: Create a summary statistics table to determine if the manufacturing process is consistent across production lots for the weight capacities of multiple suspension coils tested.

The following images display the mean, median, variance and standard deviation by total summary and manufacturing lot statistics on Suspension Coils.

total_summary.png![total_summary](https://user-images.githubusercontent.com/80140082/123518973-587fb880-d65d-11eb-99d0-84a212f4e924.png)

lot_summary.png![lot_summary](https://user-images.githubusercontent.com/80140082/123519001-849b3980-d65d-11eb-808f-0dcc5af06da7.png)

### Conclusion
The current manufacturing data not meet this design specification for manufacturing lots in total but do meet two out of the manufacturings lots. 

The tables “total_summary and lot_summary” illustrate the mean, median, variance, and standard deviation of the suspension coil’s PSI for all vehicles in all three manufacturing lots. According to the total_summary table, the variances of the suspension coils is 62.29, which does not exceed 100 pounds per square inch dictated by the design specifications. However, the “lot summary”, which breaks down vehicles by manufacturing lot shows that manufacturing lot 3 variance of 170.29 which does exceed the 100 pounds per square inch dictated by the design specifications. Therefore, only Lot 1 and 2 meet the design specification, as their variances is 0.98, and 7.47, respectively. Lot 3 is statistically insignificant and therefore, does not meet design specification.


## T-Tests on Suspension Coils
Objective: Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch (PSI).

The following image display the global T-Test result across all manufacturing lots.

ttest_suspension_coil_global.png![ttest_suspension_coil_global](https://user-images.githubusercontent.com/80140082/123524585-4400e780-d680-11eb-9362-03744ecf16c2.png)


The following images display the T-Test results for each manufacturing lot.

ttest_lot1.png![ttest_lot1](https://user-images.githubusercontent.com/80140082/123524786-68a98f00-d681-11eb-9ec0-72c70d57eda5.png)

ttest_lot2.png![ttest_lot2](https://user-images.githubusercontent.com/80140082/123524828-a3132c00-d681-11eb-8505-d0f6ff271f56.png)

ttest_lot3.png![ttest_lot3](https://user-images.githubusercontent.com/80140082/123524870-ecfc1200-d681-11eb-8f11-4bd31ab3e7f3.png)

### Conclusion
In conclusion, Lots 1 and 2 are statistically significant and Lot 3 is insignificant. Assuming our significance level is the common 0.05 percent, the p-values for Lot 1 (1.0) and Lot 2 (0.6027) are above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis and the two means are statistically similar. However, the p-value for Lot 3 (0.04168) is less than the significance level which means that we can not reject the null hypothesis.


## Study Design: MechaCar vs Competition
The proposed study will design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.The study will compare horse power, top speed, handling, and braking.

### The metrics that will be tested are:
      * Acceleration 0-60 times 
      * Slalom time
      * Brake testing - start speed and brake distance
   
### Hypothesis
What attributes affect vehicle performance the most?

Hypothesis - If horse power, top speed, handling and breaking are related to vehicle performance, the higher the values across all variables, the better the vehicle performance.

Null Hypothesis - While all of these variables effect vehicle performance, horse power has the least amount of effect.

Alternative Hypothesis - All of these variables determine vehicle performance with varying degrees of effect based on different vehicle weights.

### Data Needed for Test

      * Brake testing data by vehicle weight
      * Acceleration speed data by vehicle weight
      * Slalom time by vehicle type and weight
