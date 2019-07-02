# Author: Joe Delle Donne
# Date: 07/02/2019

ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
    geom_smooth(mapping = aes(x = displ, y = hwy)) +
    ggtitle("mpg data test")


