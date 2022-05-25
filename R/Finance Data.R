#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Profit
profit <- revenue - expenses
profit

#profit after tax
tax <- round(30*profit/100,digits = 2)
tax
profitaftertax <- profit - tax

#profit margin
 
prfitmargin <- round(profitaftertax/revenue, digits = 2)*100

#good month
mean <- mean(profitaftertax)
goodmonth <- profitaftertax>mean
goodmonth

#bad month
badmonth = profitaftertax<mean
badmonth

#best month
bestmonth = profitaftertax == max(profitaftertax)
bestmonth 

#worst month
worstmonth = profitaftertax == min(profitaftertax)
worstmonth

#summary
summmary <- rbind(
  profit,
  tax,
  profitaftertax,
  prfitmargin,
  goodmonth,
  badmonth,
  bestmonth,
  worstmonth
  )

summmary
