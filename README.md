# MechaCar_Statistical_Analysis

This project some core statistical concepts such as:
•	mathematical data types
•	null and alternative hypothesis
•	p-values and hypothesis testing
•	t-test of the means
•	correlation and linear regression tests
•	comparing frequency distribution using chi-squared test

Analysis: Write a short summary using a screenshot of the output from the linear regression, and address the following questions:

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
2) Is the slope of the linear model considered to be zero? Why or why not?
3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Linear Regression to Predict MPG
Objective: Design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file

Linear_regression.png![Linear_regression](https://user-images.githubusercontent.com/80140082/123522314-617a8500-d671-11eb-953f-ea362653464f.png)

To predict mpg, this model uses five independent variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD. According to the results of the multiple linear regression, two of the independent variables, vehicle_length and ground_clearance, are statistically significant to predict future mpg observations and measurements when comparing each Pr(>|t|) value, which represents the probability that each coefficient contributes a random amount of variance to the linear model. 

The p-values for the independent variables are: vehicle_length is 2.60e-12, vehicle_weight is 0.078, spoiler_angle is 0.31, ground_clearance is 21e-08, and for AWD is 0.19. The intercept (slope) is 5.08e-08. The overall p-value is 5.35e-11.

### Conclusion
Using the p-value of 0.05 as the threshold for this study, we can see that the vehicle_length and ground_clearance are statistically significant variables in predicting the future observations for the mpg dependent variable. In other words, the vehicle_length and ground_clearance features affect the mpg value. Therefore, the model is statistically significant. The adjusted r-squared value of .6825 means that the model is predictive 68% of the time producing the expected future observations. For each value (or row) that we pass into the model, 68% of the data does not produce random results. However, ~32% of the data produces random results. This suggests that there could be other information or confounding variables that are not accounted for in this model.

As mentioned, for this analysis we are using a significance level of .05 as the threshold. The significance level may differ depending on the industry that the linear regression is performed on.

### Draft - to be removed in final
If the p-value of the independent variables is less than the intercept (slope), 

< 0.05, then it is a high probability that you will get the same results again which means that this variable is able to predict future observations
The significant intercept of vehicle_length and ground_clearance independent variables have 

Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle_length and ) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.

------------------
## Summary Statistics on Suspension Coils
Objective: Create a summary statistics table to determine if the manufacturing process is consistent across production lots for the weight capacities of multiple suspension coils tested.


total_summary.png![total_summary](https://user-images.githubusercontent.com/80140082/123518973-587fb880-d65d-11eb-99d0-84a212f4e924.png)

lot_summary.png![lot_summary](https://user-images.githubusercontent.com/80140082/123519001-849b3980-d65d-11eb-808f-0dcc5af06da7.png)

The table “total summary” illustrates the mean, median, variance, and standard deviation of the suspension coil’s PSI for all vehicles in all three manufacturing lots. According to the total summary table, the variances of the suspension coils is 62.29, which does not exceed 100 pounds per square inch dictated by the design specifications. However, the “lot summary”, which breaks down vehicles by manufacturing lot shows that manufacturing lot 3 variance of 170.29 which does exceed the 100 pounds per square inch dictated by the design specifications. Therefore, only Lot 1 and 2 meet the design specification, as their variances is 0.98, and 7.47, respectively. Lot 3 is statistically significant as it exceeds the 100 pounds per square inch.


## T-Tests on Suspension Coils
Objective: Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Assuming our significance level was the common 0.05 percent, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

## Study Design: MechaCar vs Competition
Objective: Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
