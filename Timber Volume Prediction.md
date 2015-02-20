Timber Volume Prediction
========================================================
author: Georgy Ulukhanov
date: 20.02.2015

General Information
========================================================


- Purpose of the application is to estimate volume of the fallen tree timber knowing 2 parameters:
Girth (diameter in inches) and Height (in ft).
The Volume estimation value comes in cubuc ft
- Prediction algorithm uses linear regression model
- The application is made with "shiny" package and is placed in "shinyapps.io" public service.

- Access to thr application: https://gulukhanov.shinyapps.io/C9Shiny/



Initial data
========================================================


```r
library(datasets); data(trees)
summary(trees)
```

```
     Girth           Height       Volume     
 Min.   : 8.30   Min.   :63   Min.   :10.20  
 1st Qu.:11.05   1st Qu.:72   1st Qu.:19.40  
 Median :12.90   Median :76   Median :24.20  
 Mean   :13.25   Mean   :76   Mean   :30.17  
 3rd Qu.:15.25   3rd Qu.:80   3rd Qu.:37.30  
 Max.   :20.60   Max.   :87   Max.   :77.00  
```

Scatterplot
========================================================
Shows that there is very strong correlation between Volume and Girth variables
![plot of chunk unnamed-chunk-2](Timber Volume Prediction-figure/unnamed-chunk-2-1.png) 

Linear Regression Analisis
==========================================================


```r
fit<-lm(Volume~Girth+Height, data=trees)
fit
```

```

Call:
lm(formula = Volume ~ Girth + Height, data = trees)

Coefficients:
(Intercept)        Girth       Height  
   -57.9877       4.7082       0.3393  
```
