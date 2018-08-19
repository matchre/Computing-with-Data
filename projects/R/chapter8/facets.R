# Visualize the relationship between city mpg and engine displacement
# for different classes of vehicles
ggplot(mpg, aes(displ, cty)) + geom_point() +
  facet_wrap(~class)

# The facet argument is helpful when we want to arrange the sub-plots 
# in a specific order; below, we add new dataframe columns with more appropriate
# names for better labeling
mtcars$amf[mtcars$am==0] = 'automatic'
mtcars$amf[mtcars$am==1] = 'manual'
mtcars$vsf[mtcars$vs==0] = 'flat'
mtcars$vsf[mtcars$vs==1] = 'V-shape'

qplot(x = wt,
      y = mpg,
      facets = .~amf,
      data = mtcars,
      main = "MPG vs. weight by transmission")

qplot(x = wt,
      y = mpg,
      facets = vsf~.,
      data = mtcars,
      main = "MPG vs. weight by engine") +
  stat_smooth(se = FALSE)

qplot(x = wt,
      y = mpg,
      data = mtcars,
      facets = vsf~amf,
      main = "MPG vs. weight by transmission and engine")

# Explore all-pairs relationships between city mpg, highway mpg,
# and engine displacement volume
df = mpg[, c("cty", "hwy", "displ")]
plot(df, main = "City MPG vs. Highway MPG vs. Engine Displacement Volume")

# Alternatively, we can use the ggpairs function (from the GGallly package);
# it also displays smoothed histograms of all variables in the diagonal panels
# and the correlation coefficients in the upper triangle
GGally::ggpairs(df)
