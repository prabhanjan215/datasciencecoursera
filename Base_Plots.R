library(datasets)
hist(airquality$Ozone) ## Draw a new plot

library(datasets)
with(airquality, plot(Wind, Ozone))

library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")
?transform
lapply(airquality,class)
par("lty")
par("col")
par("lwd")
par("mfrow")
par("mfcol")
par("las")
par("bg")
##base plotting functions plot,lines,title,mtext,axis,text,points
##usage of title
library(datasets)
with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City") ## Add a title
##usage of points
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
##usage of legend

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",type = "n"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))

##Base plot with regression Line
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)

##Multiple Base plots

par(mfrow = c(1, 2))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
})

##multiple Base plots with usage of mtext

par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  plot(Temp, Ozone, main = "Ozone and Temperature")
  mtext("Ozone and Weather in New York City", outer = TRUE)
})


