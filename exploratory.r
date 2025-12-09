library(geoR)

data(parana)
View(parana)
summary(parana)

plot(parana)
# plot.geodata(parana)

points(parana, main = "Distribuição Espacial da Precipitação")
View(parana$data)
hist(parana$data, main = "Histograma dos Dados", col = "lightblue")


