#PRACTICA NUMERO 3

ingresos <- c (14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
gastos <- c (12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)


#Calcule las ganancias como las diferencias entre ingresos y gastos
Beneficio <- ingresos - gastos
Beneficio

#Calcule el impuesto como el 30% de la ganancia y redondee a 2 decimales
impuesto <- round(0.30* Beneficio, 2)
impuesto

#Calcular las ganancias restantes después de deducir los impuestos
BeneficioDImpuestos <- Beneficio - impuesto
BeneficioDImpuestos

#Calcular el margen de beneficio como beneficio después de impuestos sobre ingresos
#Redondee a 2 puntos decimales, luego multiplique por 100 para obtener %
Margen_Beneficio <- round(BeneficioDImpuestos/ingresos, 2)*100
Margen_Beneficio

#Calcule el beneficio medio después de impuestos durante los 12 meses
mean_pat <- mean(BeneficioDImpuestos)
mean_pat

#Encuentre los meses con beneficios después de impuestos superiores a la media
MesesBuenos <- BeneficioDImpuestos > mean_pat
#Los mese buenos fueron Enero, Junio, Julio, Agosto, Septiembre y Diciembre
MesesBuenos


# ¡Los meses malos son lo opuesto a los buenos meses!
MesesMalos <- BeneficioDImpuestos< mean_pat
#Los meses malso fueron  Febrero, Marzo, Abril, Mayo, Octubre y Noviembre 
MesesMalos

#El mejor mes es cuando el beneficio después de impuestos era igual al máximo
MejorMes<-BeneficioDImpuestos == max(BeneficioDImpuestos)
#El mejor mes Fue diciembre
MejorMes

# El peor mes es cuando la ganancia después de impuestos era igual al mínimo
PeorMes<- BeneficioDImpuestos == min(BeneficioDImpuestos)
#El peor mes fue Marzo
PeorMes

#Convertir todos los calculos a unidades de mil dolares
ingresos <- round(ingresos/1000, 2)
ingresos
gastos <- round(gastos/1000, 2)
gastos
#Corrigir lo del puchh

