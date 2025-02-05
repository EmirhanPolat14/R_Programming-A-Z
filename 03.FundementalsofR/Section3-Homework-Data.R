#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses #profit each month
profit
profaftertaxes <- round(profit * 0.7, digits = 2) #profit after tax each month
?round
profaftertaxes
pm <- round(profaftertaxes / revenue, digits = 2) * 100 #profit margin for each month
pm
gbm <- profaftertaxes > mean(profaftertaxes) #good-bad months
gbm
bestmonth <- max(profaftertaxes)
profaftertaxes == bestmonth
worsemonth <- min(profaftertaxes)
profaftertaxes == worsemonth

# units of thousand
revenue.1000 <- round(revenue /1000 )
revenue.1000
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(profit / 1000)
profaftertaxes.1000 <- round(profaftertaxes/ 1000)

# output
revenue.1000
expenses.1000
profit.1000
profaftertaxes.1000
pm
gbm
bestmonth
worsemonth

m <- rbind(revenue.1000,
           expenses.1000,
           profit.1000,
           profaftertaxes.1000,
           pm,
           gbm,
           bestmonth,
           worsemonth)
m