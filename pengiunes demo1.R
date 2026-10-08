library(tidyverse)
library(palmerpenguins)
library (ggthemes)
palmerpenguins::penguins
View (penguins)
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g) 
  )+
  geom_point(aes(color = species, shape = species))+
  geom_smooth (method = "lm") +
labs(
  title = "Flipper length and Body mass",
  subtitle = "dimensions for adelie, chinstrap and gentoo penguins",
  x = "Flipper Length (mm)", y = "Body Mass (g)",
  color = "species", shape = "species",
) +
  scale_color_colorblind()
