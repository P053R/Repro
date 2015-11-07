# Plot 2

setwd("D:/R/Reproducible")
dt=read.csv('household_power_consumption.txt',header=T, sep=';') 
dt$Datetime = paste(as.character(dt[,1]) , dt[,2]) 
dt[,1]=as.Date(dt$Date,'%d/%m/%Y') 
dt = subset(dt, Date == '2007-02-01' | Date == '2007-02-02')
dt[,3] = as.numeric(as.character(dt[,3]))
dt$dt <- strptime(dt$Datetime, '%d/%m/%Y %H:%M') 

#plot 2
png('plot2.png',width=480,height=480)
plot(dt$dt,dt$Global_active_power,ylab='Global Active Power (kilowatts)',xlab='',type='line')
dev.off()