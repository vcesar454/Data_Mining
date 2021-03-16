#PRACTICA NUMERO 3

Revenue <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
Expenses <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
Revenue
Expenses

#Calculate Profit As The Differences Between Revenue And Expenses
Profit <- Revenue - Expenses
Profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30* Profit, 2)
tax

#Calculate Profit Remaining After Tax Is Deducted
Profit_After_tax <- Profit - tax
Profit_After_tax

#Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
Profit_Margin <- round(Profit_After_tax/Revenue, 2)*100
Profit_Margin

#Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(Profit_After_tax)
mean_pat

#Find The Months With Above-Mean Profit After Tax
GoodMonths <- Profit_After_tax > mean_pat
#The good months were January, June, July, August, September and December
GoodMonths

#Bad Months Are The Opposite Of Good Months !
BadMonths <- Profit_After_tax< mean_pat
#The bad months were February, March, April, May, October and November 
BadMonths

#The Best Month Is Where Profit After Tax Was Equal To The Maximum
BestMonth <- Profit_After_tax == max(Profit_After_tax)
#The best month is December
BestMonth

# The Worst Month Is Where Profit After Tax Was Equal To The Minimum
WorstMonth <- Profit_After_tax == min(Profit_After_tax)
#The worst month was March
WorstMonth

# Convert All Calculations To Units Of One Thousand Dollars
Revenue <- round(Revenue/1000, 2)
Revenue

Expenses <- round(Expenses/1000, 2)
Expenses

Profit <- round(Profit/1000, 2)
Profit

Profit_After_tax <- round(Profit_After_tax/1000, 2)
Profit_After_tax

M <- rbind(
  Revenue, 
  Expenses, 
  Profit,
  Profit_After_tax, 
  Profit_Margin, 
  GoodMonths, 
  BadMonths, 
  BestMonth,
  WorstMonth
)
M
