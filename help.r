## Helpers.R

## En jupyer-lab los graficos por defecto se muestran en un cuadrado de 7 x 7 
## para poder cambiar el largo y ancho del grafico uso la siguinete funcion

dim.plot <- function(x, y) options(repr.plot.width=x, repr.plot.height=y)

### Nerd Fonts https://www.nerdfonts.com/cheat-sheet tiene un conjunto amplio de "Iconos" 
### que podemos usar para  mejorar nuestros graficos
### En Windows y usando Jupyter es un poco diferente el uso de estos, checar: https://github.com/IRkernel/repr/issues

windowsFonts(serif = "Times New Roman",
             sans = "Calibri",
             mono = "Courier New",
             A = "UbuntuMono Nerd Font",
             B = "Comic Sans MS")

