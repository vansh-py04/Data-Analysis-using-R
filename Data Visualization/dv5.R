

library(datasets)  # Load/unload base packages manually



# Annual Canadian Lynx trappings 1821-1934
?lynx
head(lynx)



# Default
hist(lynx)

# Add some options
hist(lynx,
     breaks = 14,          # "Suggests" 14 bins
     freq   = FALSE,       # Axis shows density, not freq.
     col    = "thistle1",  # Color for histogram
     main   = paste("Histogram of Annual Canadian Lynx",
                    "Trappings, 1821-1934"),
     xlab   = "Number of Lynx Trapped")

# Add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph

# Add two kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# Add a rug plot
rug(lynx, lwd = 2, col = "gray")



# Clear packages
detach("package:datasets", unload = TRUE)  # For base


dev.off()  # But only if there IS a plot


cat("\014")  # ctrl+L


