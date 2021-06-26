# MechaCar_Statistical_Analysis

This project some core statistical concepts such as:
•	mathematical data types
•	null and alternative hypothesis
•	p-values and hypothesis testing
•	t-test of the means
•	correlation and linear regression tests
•	comparing frequency distribution using chi-squared test

## Linear Regression to Predict MPG

Total_Summary.png![Total_Summary](https://user-images.githubusercontent.com/80140082/123517597-c2489400-d656-11eb-9df7-af73f58e485a.png)

To predict mpg, this model uses five independent variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD. According to the results of the multiple linear regression, two of the independent variables, vehicle_length and ground_clearance, are statistically significant to predict future mpg observations and measurements when comparing each Pr(>|t|) value, which represents the probability that each coefficient contributes a random amount of variance to the linear model. 

The p-values are: vehicle_length is 2.60e-12, vehicle_weight is 0.078, spoiler_angle is 0.31, ground_clearance is 21e-08, and for AWD is 0.19. The intercept (slope) is 5.08e-08.

### Conclusion
Using the p-value of 0.05 as the threshold, we can see that the vehicle_length and ground_clearance are statistically significant variables in predicting the future observations for the mpg dependent variable. In other words, the vehicle_length and ground_clearance features affect the mpg value.

< 0.05, then it is a high probability that you will get the same results again which means that this variable is able to predict future observations
The significant intercept of vehicle_length and ground_clearance independent variables have 

Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle_length and ) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.




Lot_Summary.png![Lot_Summary](https://user-images.githubusercontent.com/80140082/123517605-caa0cf00-d656-11eb-88da-3b3f876880bf.png)


write a short summary using a screenshot of the output from the linear regression, and address the following questions:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
