##Example 11.2.1 Pg.545
##Regression model for categorical data

grams <- c(3147,2977,3119,3487,4111,3572,3487,
           3147,3345,2665,1559,3799,
           2750,3487,3317,3544,3459,2807,3856,
           3260,2183,3204,3005,3090,3430,3119,
           3912,3572,3884,3090,2977,3799,4054,
           3430,3459,3827,3147,3289,3629,3657,
           3175,3232,3175,3657,3600,3572,709,624,
           2778,3572,3232,3317,2863,3175,3317,3714,
           2240,3345,3119,2920,3430,3232,3430,4139,
           3714,1446,3147,2580,3374,3941,2070,3345,
           3600,3232,3657,3487,2948,2722,3771,3799,
           1871,3260,3969,3771,3600,2693,3062,2693,3033,3856,
           4111,3799,3147,2920,4054,2296,3402,1871,
           4167,3402)
weeks <- c(40,41,38,38,39,41,40,41,38,34,34,38,38,40,38,
           43,45,37,40,40,42,38,36,40,39,40,39,40,41,38,
           42,37,40,38,41,39,44,38,36,36,41,43,36,40,39,
           40,25,25,36,35,38,40,37,37,40,34,36,39,39,37,
           41,35,38,39,39,28,39,31,37,40,37,40,40,41,38,
           39,38,40,40,45,33,39,38,40,40,35,45,36,41,42,
           40,39,38,36,40,36,38,33,41,37)
smoke <- c(0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,1,0,0,
           1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,1,0,1,0,0,0,
           0,0,0,rep(0,15),1,1,0,0,0,0,0,0,0,1,rep(0,10),
           1,rep(0,11),1,0,1)
smoke = factor(smoke, labels = c("nonsmoker","smoker"),levels=c(0,1))

plot(weeks, grams, pch=21, 
     bg=c("red","green3")[unclass(smoke)])
##red for non smokers and green for smokers

reg = lm(grams~weeks+smoke)
summary(reg)
##Gives the estimates and corresponding p values
summary(aov(reg))
##Gives the Anova results (sum of squares and F statistic)


plot(weeks, grams, pch=21, 
     bg=c("red","green3")[unclass(smoke)])
abline(reg)
