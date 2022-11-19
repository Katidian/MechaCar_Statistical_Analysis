# MechaCar statistical analysis

This analysis...

## Linear regression to predict MPG
Two variables appear to have a significant impact on fuel effiency as measured in miles per gallon, or mpg. These variables are vehicle length and ground clearance. 
The other three variables we tested against mpg each ad p values of more than 0.07.

Since there is a significant linear relationship between mpg and two of the other variables, the linear model does not have a slope of zero.

Despite a relatively strong R-squared value of about 0.71, this model may not do a great job of predicting mpg for MechaCar prototypes in general, as it may be a case of 
overfitting. Only two of the five dependent variables we tested appear to have a significant impact on mpg. 

The statistically significant intercept also suggests that the model may need additional work to improve its predictive power.

![Screenshot of multiple linear regression model output](lm.png)
