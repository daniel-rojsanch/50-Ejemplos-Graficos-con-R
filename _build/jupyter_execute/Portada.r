source("help.r")

dim.plot(7, 10)

x <- 10*runif(150)
y <- 10*runif(150)


par(bg = "#E8F5E9", omi=c(0,0,0,0),mai=c(0,0,0,0))
plot(x, y, cex = 4, pch = "\uf0c8", family = "A", col = "#F0629250", axes = F, ylab = "", xlab = "")

rect(-1,4.5,11,7,col="#5C6BC080", border=NA)
text(5.4, 6, "Vizualización de Datos con R | 1001 Ejemplos", cex = 2, col = "#F5F5F5")
text(2.7, 5.6, "Daniel Rojas Sánchez", cex = 1.5, col = "#F5F5F5")


