# Plot 1

setwd("D:/R/Reproducible")
dt=read.csv('household_power_consumption.txt',header=T, sep=';') 
dt$Datetime = paste(as.character(dt[,1]) , dt[,2])  
dt[,1]=as.Date(dt$Date,'%d/%m/%Y') 
dt = subset(dt, Date == '2007-02-01' | Date == '2007-02-02') 
dt[,3] = as.numeric(as.character(dt[,3]))

#plot 1
png('plot1.png',width=480,height=480)
hist(dt[,3],col='red',xlab='Global Active Power (kilowatts)', ylab='Frequency',main='Global Active Power')
dev.off()
