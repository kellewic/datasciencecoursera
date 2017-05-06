# Reproducible Research: Peer Assessment 1
Shay Harding  
May 5, 2017  



## Loading and preprocessing the data
1. Load the data (i.e. read.csv())
2. Process/transform the data (if necessary) into a format suitable for your analysis

The code assumes that the ***activity.csv***, or ***activity.zip***, file is in your working directory:  
```getwd()``` **J:/OneDrive/Documents/GitHub/datasciencecoursera/reproducible-research/project-1**


```r
activity_data <- NULL
csvfile <- paste0(c(getwd(), "activity.csv"), collapse="/")

if (!file.exists(csvfile)){
    zipfile <- paste0(c(getwd(), "activity.zip"), collapse="/")
    
    if (!file.exists(zipfile)){
        print(paste0(c("Cannot find", csvfile), collapse=" "))
        print(paste0(c("Cannot find", zipfile), collapse=" "))
    } else {
        unzip(zipfile, overwrite=TRUE)
    }
}

if (file.exists(csvfile)){
    activity_data <- read.csv(csvfile)
    activity_data$date <- as.Date(activity_data$date, format="%Y-%m-%d")
    
    print(paste0(c(nrow(activity_data), "obs. of", ncol(activity_data), "variables"), collapse=" "))
} else {
    print(paste0(c("Cannot find", csvfile), collapse=" "))
}
```

```
## [1] "17568 obs. of 3 variables"
```

## What is mean total number of steps taken per day?

For this part of the assignment, you can ignore the missing values in the dataset.

1. Calculate the total number of steps taken per day
2. Make a histogram of the total number of steps taken each day
3. Calculate and report the mean and median of the total number of steps taken per day


```r
total_steps_per_day <- aggregate(steps ~ date, activity_data, sum)
hist(total_steps_per_day$steps, xlab="Steps", main="Histogram of steps taken per day")
```

![](main_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

**Mean steps taken per day**: 10766.19

**Median steps taken per day**: 10765

## What is the average daily activity pattern?
1. Make a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)
2. Which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?


```r
ts_data <- aggregate(steps ~ interval, activity_data, mean)
five_max_steps <- which(ts_data$steps == max(ts_data$steps))

plot(ts_data$interval, ts_data$steps, type="l", main="Average steps taken by 5-minute interval", xlab="5-minute interval", ylab="Average steps")
abline(v = ts_data[five_max_steps, ]$interval)
```

![](main_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

**5-minute interval with max steps**: 835

## Inputing missing values

Note that there are a number of days/intervals where there are missing values (coded as NA). The presence of missing days may introduce bias into some calculations or summaries of the data.  

1. Calculate and report the total number of missing values in the dataset (i.e. the total number of rows with NAs)
2. Devise a strategy for filling in all of the missing values in the dataset. The strategy does not need to be sophisticated. For example, you could use the mean/median for that day, or the mean for that 5-minute interval, etc.
3. Create a new dataset that is equal to the original dataset but with the missing data filled in.
4. Make a histogram of the total number of steps taken each day and Calculate and report the mean and median total number of steps taken per day. Do these values differ from the estimates from the first part of the assignment? What is the impact of imputing missing data on the estimates of the total daily number of steps?

**Number of rows with NAs**: 2304

Strategy for missing steps is to simply replace NAs with mean of all steps.


```r
activity_data_no_na <- activity_data
activity_data_no_na[is.na(activity_data_no_na$steps), "steps"] <- mean(activity_data$steps, na.rm=TRUE)
total_steps_per_day <- aggregate(steps ~ date, activity_data_no_na, sum)
hist(total_steps_per_day$steps, xlab="Steps", main="Histogram of steps taken per day")
```

![](main_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

**Mean steps taken per day**: 10766.19

**Median steps taken per day**: 10766.19

The mean did not change, but the median and mean are now equal due to filling in all the NA values with the mean.

## Are there differences in activity patterns between weekdays and weekends?

Use the dataset with the filled-in missing values for this part.

1. Create a new factor variable in the dataset with two levels – “weekday” and “weekend” indicating whether a given date is a weekday or weekend day.
2. Make a panel plot containing a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all weekday days or weekend days (y-axis). See the README file in the GitHub repository to see an example of what this plot should look like using simulated data.


```r
weekday_names <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
weekday_labels <- c('weekend', 'weekday')
activity_days <- weekdays(activity_data_no_na$date)

activity_data_no_na$daytype <- weekday_labels[(activity_days %in% weekday_names)+1L]

ts_data <- aggregate(steps ~ interval + daytype, activity_data_no_na, mean)

weekday_ts_data <- subset(ts_data, daytype == "weekday")
weekend_ts_data <- subset(ts_data, daytype == "weekend")

par(mfrow=c(2,1), pin=c(6, 2), oma=c(1,1,0,0), mar=c(0,3,3,2), omi=c(.5,.5,.5,.5))
par(ann=FALSE, cex=.80, cex.axis=.90)

plot(weekend_ts_data$interval, weekend_ts_data$steps, type="l", col="blue", axes=FALSE)
axis(2, labels=FALSE)
axis(3, labels=FALSE)
axis(4, las=2)
mtext(text="weekend", side=3, line=0, cex=.80, padj=1, xpd=TRUE)
box()

par(mar=c(3,3,0,2))
plot(weekday_ts_data$interval, weekday_ts_data$steps, type="l", col="blue", axes=FALSE)
axis(2, las=2)
axis(1)
axis(4, labels=FALSE)
mtext(text="weekday", side=3, line=0, cex=.80, padj=1, xpd=TRUE)
box()

mtext(text="Interval", side=1, line=0, cex=.85, outer=TRUE)
mtext(text="Number of steps", side=2, line=0, cex=.85, outer=TRUE)
```

![](main_files/figure-html/unnamed-chunk-5-1.png)<!-- -->
