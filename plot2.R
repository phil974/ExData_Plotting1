# plot2.R
plot2 <- function(){
png("plot2.png")
household_power_consumption <- read.csv("~/rdata/mooc R/household_power_consumption.txt", sep=";",na="?",as.is=c(1,2),nrows=69517)
with(household_power_consumption[66637:69517,],{
  datetime <- strptime(paste(Date,Time),format="%d/%m/%Y %H:%M:%S")
  plot(datetime,Global_active_power,type="l",xlab="",ylab = "Global Active Power (kilowatts)")
})
dev.off()
}