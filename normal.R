# Family of gaussian distrubutions, by increasing std deviation 1 to 4 

#base plot, but no functions
p = ggplot(data.frame(x = c(-10, 10)), aes(x))

# gaussian function is passed as the argument for the parametric sapply
gaussian.generator = function(sd) {stat_function(fun=function(x) {dnorm(x,0,sd)})}

#parametric set of normal distribution pdf functions, parameter is the standard deviation
gaussian.family=sapply(seq(1,4), function(sd){sd=sd; gaussian.generator(sd)})

#note about sd=sd
# this operation is necessary to propagate the variable on the environment of the function
# not doing so, would evaluate all four functions using the last environment sd=4

#putting it all together
for(i in gaussian.family) { p = p + i}
p