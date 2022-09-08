# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The Mecha Car MPG data was analyzed through the R function lm(). In this function, the vehicle length, weight, spoiler angle, ground clearance and whether the car had AWD was compared with the mpg of the vehicle to discover if there was correlation between these factors and the MPG of the car. By looking below at the summary of the linear model and looking at the Pr(>|t|) column, we can see that the ground clearance and vehicle length were statistically unlikely to provide random amounts of variance to the linear model and thus have a significant impact on the MPG the car gets.

![image](https://user-images.githubusercontent.com/103979048/189027288-31d86f57-9338-4b7d-83b7-a2ee875228d1.png)


Looking at the p-value of our linear regression analysis (5.35 e-11), since it is much smaller than our significance level of 0.05% we can state there is sufficient evidence to reject our null hypothesis which means the slope of our linear model is not zero.

![image](https://user-images.githubusercontent.com/103979048/189027345-18f4d6d8-41ee-48cc-9397-a1ac5c819ca4.png)


 In the summary, looking at the value of the r-squared (0.7149), roughly 71% of the variability of our dependent variable (mpg) is explained with this linear model. Since the model has an r-squared of 0.7149 and the p-value remains significant, it can be concluded that the linear model will predict the mpg of MechaCar prototypes effectively.
 
 ![image](https://user-images.githubusercontent.com/103979048/189027413-d60671d8-691e-44cf-9d89-35ed6dd22a9b.png)

## Summary Statistics on Suspension Coils

The summaries of the data collected about the suspension coils are shown below, both as a general table (total summary) as well as a table broken down by lot of manufacturing (lot summary).

![image](https://user-images.githubusercontent.com/103979048/189028773-158de766-41ad-4567-bca2-1e38dba56f52.png)

![image](https://user-images.githubusercontent.com/103979048/189028842-90ea437b-2fb0-4840-b0f1-3812a143fb96.png)

MechaCar has a requirement that coils manufactured must not have a variance of 100 PSI. While the general summary may indicate that manufacturing is within design specifications with a variance of 62 PSI, the lot summary tells a different story and it is clear that the manufacturing in lot 3 does not meet this specification with a variance of 170 PSI. Lots 1 and 2 do meet specifications based on the variance recorded for those lots being well below 100 PSI.


##  T-Tests on Suspension Coils


Based on a 0.05 percent significance level, the p-value of our general t.test (0.06028) was above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis.

![image](https://user-images.githubusercontent.com/103979048/189031383-758542a7-9d50-493c-a266-1872e52b58e5.png)

Using the subset of lot 1, the p-value generated from our t-test was 1, which is above the significance level. There is not sufficient evidence to reject this lots null hypothesis.

![image](https://user-images.githubusercontent.com/103979048/189031757-f8f13c5b-7939-41b9-9cff-00e3ce5cb1ea.png)

Using the subset of lot 2, the p-value generated from our t-test was 0.6072, which is above the significance level. There is not sufficient evidence to reject this lots null hypothesis.

![image](https://user-images.githubusercontent.com/103979048/189031863-e8d2a94d-5095-47ed-afd3-f6b81188a8ca.png)

Using the subset of lot 3, the p-value generated from our t-test was 0.04168, which is below the significance level. Thus, there is sufficient evidence to reject this lots null hypothesis. Therefore we can state that the two means are statistically different.

![image](https://user-images.githubusercontent.com/103979048/189031605-116b871f-4a58-4d79-b866-37292e5588b6.png)

## Study Design: MechaCar vs Competition

There are several metrics that would be of interest to the consumer that we could compare to competitors in future statistical studies. Customers might be interested in the cost, but there is so much variance in cost that statistical studies would not showcase any consistent information. Instead, the three metrics that should be included in this study are city and highway fuel efficiency and safety rating. These metrics will be more consistent and will quantify how MechaCar performs against competition. For each of these studies the null hypothesis would be if there are no consistent improvements between the competitor and MechaCar. For this study, comparing the normal data for each company will demonstrate which company performs better. To validate these results, we can perform a linear regression and check if the p-value is  under the significance level. In order to conduct these studies we need to collect data on the MPG ratings, the safety ratings, and the car types for each company. This way, like cars can be compared.
