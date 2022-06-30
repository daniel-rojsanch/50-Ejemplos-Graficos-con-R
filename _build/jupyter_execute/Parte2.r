## En jupyer-lab los graficos por defecto se muestran en un cuadrado de 7 x 7 
## para poder cambiar el largo y ancho del grafico uso la siguinete funcion

dim.plot <- function(x, y) options(repr.plot.width=x, repr.plot.height=y)

### Nerd Fonts https://www.nerdfonts.com/cheat-sheet tiene un conjunto amplio de "Iconos" 
### que podemos usar para  mejorar nuestros graficos
### En Windows y usando Jupyter es un poco diferente el uso de estos, checar: https://github.com/IRkernel/repr/issues

windowsFonts(serif = "Times New Roman",
             sans = "Arial",
             mono = "Courier New",
             A = "UbuntuMono Nerd Font",
             B = "Comic Sans MS")

library(magick)   ## Cargamos el paquete

n <- 10^2
x <- seq(-2*pi, 2*pi, length.out = n )
y1 <- rep(-1.3, n)
y2 <- sin(x)

png('car%02d.png',  width = 15, height = 4, units = "in", res = 72)  
par(bg = "#B3E5FC", mar = c(0,0,0,0))


for (i in seq(1, n, by = 2)) {
    
    plot(x, sin(x), ylim = c(-1.3, 1.7), axes = "F", ylab = "", xlab = "", type = "l", lwd = 1.4)
    polygon(c(x, rev(x)), c(y1, rev(y2)),col = "#6BD7AF")
    text(-pi/2, 1.3 , "\uf0c2", family = "A", cex = 5, col = "#2196F3")
    text(x[i], sin(x[i]) + 0.2 , "\ufc9d", family = "A", cex = 3.5, col = "#FF6D00")
    
}

dev.off()

imgs <- list.files(getwd(), full.names = TRUE)
imgs <- imgs[ grep("png", imgs) ]
img_list <- lapply(imgs, image_read)
img_joined <- image_join(img_list)
img_animated <- image_animate(img_joined, fps = 10)
img_animated

file.remove(list.files(pattern=".png"))   ## borramos los archivos png

## image_write(img_animated, path = "car.gif", format = "gif")   ## puedes guardar el gif


