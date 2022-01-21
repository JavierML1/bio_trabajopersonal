

library(MLDataR)
tir <- MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")

#informacion de la sesion
sessionInfo()


#order para ordenar (/como sort, pero sort para vectores, order para bases de datos)

head(tir)

sort(tir$patient_age)

tir2 <- tir[order(tir$patient_age),]


#quitar todos los missing quitando los pacientes que tienen algun NA, perdemos 1000 pacientes

tir_completo <- tir[complete.cases(tir),]

#aggregate para agrupar por grupos y hacer calculo estadistico

edad_tyr <- aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean)
  
names(edad_tyr) <- c("Tiroides", "genero", "media")



