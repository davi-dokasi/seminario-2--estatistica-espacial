library(geoR)

data(parana)

View(parana)
summary(parana)

plot(parana)
# plot.geodata(parana)

points(parana, main = "Distribuição Espacial da Precipitação")
View(parana$data)
hist(parana$data, main = "Histograma dos Dados", col = "lightblue")


tabela <- data.frame(
  ID = 1:3,
  X = round(parana$coords[1:3, 1], 1), 
  Y = round(parana$coords[1:3, 2], 1),
  Chuva = parana$data[1:3]
)
tabela_qmd <- rbind(as.matrix(tabela), c("...", "...", "...", "..."))

# Gera a tabela no estilo Markdown
knitr::kable(tabela_qmd, 
             col.names = c("ID", "Coord X", "Coord Y", "Precipitação Média"),
             align = "c")