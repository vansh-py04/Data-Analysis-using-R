library(tidyverse)

head(diamonds)
?diamonds
summary(diamonds)

# distribution of categorical variables
plot(diamonds$cut,col="#cc0000", # hex code for red color
     xlab = "Cut", ylab = "Count")

plot(diamonds$color)

# price of diamond based on carats
plot(diamonds$carat,diamonds$price,col="brown",
     pch=19, #use solid circles for points
     xlab = "Carats", ylab = "Price")

#price of diamond based on clarity
plot(diamonds$clarity,diamonds$price,col="pink")

# Lets find out length(x) of ideal cut diamonds
hist(diamonds$x[diamonds$cut=="Ideal"],col="blue",
     xlab="Ideal Cut")

# Lets find out width(y) of ideal cut diamonds
hist(diamonds$y[diamonds$cut=="Ideal"],col="blue",
     xlab="Ideal Cut")

# Lets find out depth(z) of ideal cut diamonds
hist(diamonds$z[diamonds$cut=="Ideal"],col="blue",
     xlab="Ideal Cut")


# price of diamond based on table
plot(diamonds$table,diamonds$price,col="brown",
     pch=19, #use solid circles for points
     xlab = "Table", ylab = "Price")
# diamonds with more table value do not equate to higher price.
cl <- table(diamonds$clarity)
barplot(cl)

dev.off() # clear plots
detach("package:tidyverse",unload=TRUE) #clear packages
cat("\014") #ctrl+L

knitr::stitch_rhtml("D:/R/EDA.R")
