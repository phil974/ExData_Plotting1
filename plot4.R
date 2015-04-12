# plot4.R
plot4 <- function(){
png("plot4.png")
household_power_consumption <- read.csv("~/rdata/mooc R/household_power_consumption.txt", sep=";",na="?",as.is=c(1,2),nrows=69517)
with(household_power_consumption[66637:69517,],       {
  datetime <- strptime(paste(Date,Time),format="%d/%m/%Y %H:%M:%S")
  par(mfrow=c(2,2),mar=c(4,4,1,1))
  plot(datetime,Global_active_power,type="l",ylab = "Global Active Power",xlab="")
  plot(datetime,Voltage,type="l")
  plot(datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
  points(datetime,Sub_metering_2,type="l",col="red")
  points(datetime,Sub_metering_3,type="l",col="blue")
  legend("topright",lty=1,bty="n",col=c("black","red","blue"),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(datetime,Global_reactive_power,type="l")
})
dev.off()
}