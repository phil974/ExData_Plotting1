# plot3.R
plot3 <- function(){
png("plot3.png")
household_power_consumption <- read.csv("~/rdata/mooc R/household_power_consumption.txt", sep=";",na="?",as.is=c(1,2),nrows=69517)
with(household_power_consumption[66637:69517,],     {
        TS <- strptime(paste(Date,Time),format="%d/%m/%Y %H:%M:%S")
        plot(TS,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
        points(TS,Sub_metering_2,type="l",col="red")
        points(TS,Sub_metering_3,type="l",col="blue")
        legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

})
dev.off()
}