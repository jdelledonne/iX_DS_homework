# mpgClass.R
# Author: Joe Delle Donne
# Date: 07/02/2019

# Scratch work
ggplot(data = filter(mpg[1:150,], class == "subcompact"), mapping = aes(x = displ, y = hwy)) + 
    geom_point(
        mapping = aes(color = class)
    ) +
    geom_smooth(
    ) + 
    #facet_grid(class ~ drv) +
    ggtitle("mpg Class exercise") 


# 3.2.4 Exercises
# 1
ggplot(data = mpg)
    # Nothing happens, you have loaded the data but have not 
    # inputted any plot commands
# 2
    # 234 x 11
# 3
    # the drv setting describes the drive settings. front wheel drive,
    # rear wheel drive, 4wd
# 4
ggplot(data = mpg) +
    geom_point(mapping = aes(x = hwy, y = cyl)) +
    ggtitle("Problem 4, highway mpg vs engine cyclinders")
# 5
ggplot(data = mpg, mapping = aes(x = class, y = drv)) +
    geom_point()    
    # this is a plot of two categorical variables, which doesn't 
    # tell us very much useful information

# 3.3.1 Exercises
# 1: What's wrong with this code?
    # ggplot(data = mpg) + 
    #     geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
    # The color declaration is inside the aesthetic settings, must be 
    # outside, i.e. an argument of the geom_point
# 2
    # A continuous variable is something like an integer or a double,
    # something that can be measured, while a categorical variable
    # is something that is defined as one of a set group of 
    # possible choices
# 3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point(
        mapping = aes(shape = cty)
    )
    # Color is a gradient for continuous variables and a legend for categorical variables
    # Size varies a particular shape for the categories
    # Shape is bad for variables with more than 6 possibilities, no new shapes after 6
    # A continuous variable cannot be mapped to a shape
# 4
    # You get an error when you attempt to map the same variable to multiple aesthetics
# 5
    # The stroke aesthetic modifies the width of the border of a point
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
    geom_point(shape = 24, color = "black", fill = "white", stroke = 2)
# 6
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
    # classifies the color based on whether the displ variable is less than 5

# 3.5.1 Exercises
# 1
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
    geom_point() +
    facet_wrap(~ displ)




