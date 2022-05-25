d <- read.csv(choose.files())
head(data)
rm(data)

qplot(data=d, x=Internet.users,y=Birth.rate, colour=Income.Group, size =I(4))
