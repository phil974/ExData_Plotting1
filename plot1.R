# plot1.R
plot1 <- function(){
# open the png device  
png("plot1.png")
# read the file previously download
household_power_consumption <- read.csv("~/rdata/mooc R/household_power_consumption.txt", sep=";",na="?",as.is=c(1,2),nrows=69517)
with(household_power_consumption[66637:69517,],hist(Global_active_power,col="red",main="Global active power"))
dev.off()
}