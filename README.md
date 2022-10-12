# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

According to my results, vehicle length and ground clearance (as well as intercept) provided a non-random amount of variance to the mpg linear model. In other words, the vehicle length and ground clearance have a significant impact on mpg. 

According to the summary output, the R-squared value is approximately 0.71 which means that roughly 71% of the variability in mpg is explained using this linear model. In addition, the p-value of our linear regression analysis is $5.35\times 10^{-11}$, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

![Regression Summary](/Resources/Figure1.png)


The R-squared value from the multiple linear regression model seems adequate for this data set, however, the lack of significant variables could fail to generalize and predict data for MechaCar prototypes effectively. 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  An RScript was written to determine the following total summary of all the suspension coils data. The variance of 62.29 meets the required design specification when examining the data set as a whole.

![Suspension Coils Total Summary](/Resources/Figure#.png)

An additional RScript was written to examine the suspension coils by their respective Manufacturing Lot. As is evident in the summary, only Lot 1 and Lot 2 meet the requirement for the design specifications while the data from Lot 3 seems to be skewing the previous overall summary.

![Suspension Coils Lot Summary](/Resources/Figure#.png)

## T-Tests on Suspension Coils

An RScript was written to perform a one-sample t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. The null and alternative hypotheses are as follows:

$H_0$: There is no statistical difference between the observed sample mean and the population mean of 1,500 pounds per square inch. 

$H_a$: There is a statistical difference between the observed sample mean and the population mean of 1,500 pounds per square inch. 

As indicated in the output below, the calculated p-value of 0.06028 is above the significance level of 0.05.  Therefore, there is insufficient evidence to reject the null hypothesis, and thus the two means across all manufacturing lots are not statistically similar. 

![T-Test Results on Total Sample](/Resources/Figure2.png)

Additional t-tests were performed to see if the PSI of each manufacturing lot is statistically different from the population mean of 1500 pounds per square each.  As indicated in the output below and using a significance level of 0.05 , the calculated p-value for Lot 1 and Lot 2 are above the significance level.  Thus, there is insufficient evidence to reject the null hypotheses on both Lots 1 and 2 and thus the two means across Lots 1 and 2 are not statistically similar. On the other hand, the p-value of Lot 3 is below the significance level so there is sufficient evident to reject the null meaning that the mean for Lot 3 is statistically different from the population mean.

![T-Test Results on by Lot](/Resources/Figure3.png)

## Study Design: MechaCar vs Competition

In a world where sustainability and carbon footprints have become part of everyday life, $CO_2$ emissions might be a consideration when buying a car. Eco-conscious consumers will be looking to buy a car with low $CO_2$ emissions. The variables to consider in this study is the tailpipe emissions of carbon dioxide (in grams per mile).

$H_0$: There is no statistical difference between the mean of MechaCar prototypes’ tailpipe emissions and the mean of the tailpipe emissions of the competitor vehicles.

$H_a$: There is a statistical difference between the mean of MechaCar prototypes’ tailpipe emissions and the mean of the tailpipe emissions of the competitor vehicles.

Since this study is examining the mean of two different samples. she most appropriate statistical test would be a two-sample t-test. In order to run this statistical test, the  measure of tailpipe emissions of $CO_2$ for all MechaCar prototypes as well as all major competitors would be necessary.


