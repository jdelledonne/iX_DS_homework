# Author: Joe Delle Donne

ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
    geom_smooth(mapping = aes(x = displ, y = hwy))

