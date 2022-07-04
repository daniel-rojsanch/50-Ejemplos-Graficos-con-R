source("help.r")

set.seed(4)
dim.plot(5,7)
par(bg = "#F5F5F5",omi=c(0,0,0,0),mai=c(0,0,0,0))

x <- seq(1, 10, by = 0.1)
s <- 10*runif(15)
ss <- 10*runif(15)

plot(x,x, type = "n", axes = "F")
# points(s, ss, col = "red", pch = "\uf005", family = "A", cex = 1.2)
mtext("Graficos con R",adj = 0.4, side = 3, family = "B", col = "#212121", cex = 2.5, line = -4)
text(9,9,"\UE3E1", family = "A", cex = 5, col = "#212121")
text(5,5,"\ue62e", family = "A", cex = 14, col = "#81D4FA")

rect(0,0,25,3,col="#1A237E75", border=NA)
rect(0,3,25,6,col="#1A237E85", border=NA)
rect(0,6,25,18,col="#1A237E95", border=NA)
#rect(0,0,18,1,col="#1A237E", border=NA)
rect(0,0,1.5,18,col="#1A237E", border=NA)


text(x[10],x[4],"\uf135", family = "A", cex = 3, col = "#212121")

mtext("Daniel Rojas Sánchez",adj = 0.9, side = 1, family = "sans", col = "#212121", cex = 1.25, line = -2)

grid(col = "#EDE7F640")

print("ﱤ")

plot(x, exp(x))

exp(3)


