#PRACTICA NUMERO 3

Revenue <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
Expenses <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
Revenue
Expenses

#Calcule las ganancias como las diferencias entre ingresos y gastos
Profit <- Revenue - Expenses
Profit

#Calcule el impuesto como el 30% de la ganancia y redondee a 2 decimales
tax <- round(0.30* Profit, 2)
tax

#Calcular las ganancias restantes después de deducir los impuestos
Profit_After_tax <- Profit - tax
Profit_After_tax

#Calcular el margen de beneficio como beneficio después de impuestos sobre ingresos
#Redondee a 2 puntos decimales, luego multiplique por 100 para obtener %
Profit_Margin <- round(Profit_After_tax/Revenue, 2)*100
Profit_Margin

#Calcule el beneficio medio después de impuestos durante los 12 meses
mean_pat <- mean(Profit_After_tax)
mean_pat

#Encuentre los meses con beneficios después de impuestos superiores a la media
GoodMonths <- Profit_After_tax > mean_pat
#Los mese buenos fueron Enero, Junio, Julio, Agosto, Septiembre y Diciembre
GoodMonths

# ¡Los meses malos son lo opuesto a los buenos meses!
BadMonths <- Profit_After_tax< mean_pat
#Los meses malso fueron  Febrero, Marzo, Abril, Mayo, Octubre y Noviembre 
BadMonths

#El mejor mes es cuando el beneficio después de impuestos era igual al máximo
BestMonth <- Profit_After_tax == max(Profit_After_tax)
#El mejor mes Fue diciembre
BestMonth

# El peor mes es cuando la ganancia después de impuestos era igual al mínimo
WorstMonth <- Profit_After_tax == min(Profit_After_tax)
#El peor mes fue Marzo
WorstMonth

#Convertir todos los calculos a unidades de mil dolares
Revenue <- round(Revenue/1000, 2)
Revenue

Expenses <- round(Expenses/1000, 2)
Expenses

Profit <- round(Profit/1000, 2)
Profit

Profit_After_tax <- round(Profit_After_tax/1000, 2)
Profit_After_tax

