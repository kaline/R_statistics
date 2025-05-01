feeds=table(chickwts$feed)

# plots graph in decreasing order
barplot(feeds[order(feeds, decreasing=TRUE)])


feeds = table(chickwts$feed)

# Set outside margins (bottom, left, top, right).
par(oma=c(1, 1, 1, 1))                         
par(mar=c(4, 5, 2, 1))                         

# Use las for the orientation of axis labels. 
barplot(feeds[order(feeds, decreasing=TRUE)], 
        xlab="Number of chicks", las=1, col="yellow") 

# Use horiz for bars to be shown as horizontal.
barplot(feeds[order(feeds)], horiz=TRUE, 
        xlab="Number of chicks", las=1, col="yellow")


data("chickwts")

# main is used to create
# an heading for the chart
d = table(chickwts$feed)            

pie(d[order(d, decreasing=TRUE)],
    clockwise=TRUE,
    main="Pie Chart of feeds from chichwits")

# break is used for number of bins.
data(lynx)

# lynx is a built-in dataset.
lynx     

# hist function is used to plot histogram.
hist(lynx)
hist(lynx, col="green",
     main="Histogram of Annual Canadian Lynx Trappings")

data(lynx)

# if freq=FALSE this will draw normal distribution
hist(lynx)
hist(lynx,col="green",
     freq=FALSE ,main="Histogram of Annual Canadian Lynx Trappings")

curve(dnorm(x, mean=mean(lynx),
            sd=sd(lynx)), col="red",
      lwd=2, add=TRUE)

# USJudgeRatings is Built-in Dataset.
?USJudgeRatings                        

# ylim is used to specify the range.
boxplot(USJudgeRatings$RTEN, horizontal=TRUE,
        xlab="Lawyers Rating", notch=TRUE,
        ylim=c(0, 10), col="pink")
