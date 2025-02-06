#Creating a vector with the values from 1 to 200
z=c(1:200)
print(z)

#Calculating mean and standard deviation
mean_z=mean(z)
sd_z=sd(z)
print(paste("mean of z:",mean_z))
print(paste("standard deviation of z:",sd_z))

#Creating a logical vector named zlog that is 'TRUE' for 
#z values greater than 30 and 'FALSE' otherwise.
zlog <- z > 30
zlog


# Make a dataframe with z and zlog as columns. Name the dataframe zdf
zdf <- data.frame(z, zlog)
zdf

#Change column names to 'zvec' and 'zlogic'
colnames(zdf) <- c("zvec", "zlogic")
zdf
# o	Make a new column in your dataframe equal to zvec squared (i.e., z2). Call the new column zsquared. 
zdf$zsquared <- zdf$zvec^2
View(zdf)

#Subset the dataframe with and without the subset() function to only include values of zsquared greater than 10 and less than 100 
subset_zdf <- subset(zdf, zsquared > 10 & zsquared < 100)
subset_zdf
print(paste("subset using subset function:"))
print(subset_zdf)     
      
subset_zdf2 <- zdf[zdf$zsquared > 10 & zdf$zsquared < 100, ]
print("Subset without using subset() function:")
print(subset_zdf2)


#	Subset the zdf dataframe to only include the values on row 26
row26zdf=zdf[26,]
print(row26zdf)




# Subset the zdf dataframe to only include the values in the column zsquared in the 180th row.
zsquared_row_180 <- zdf$zsquared[180]
print("zsquared value at row 180:")
print(zsquared_row_180)







