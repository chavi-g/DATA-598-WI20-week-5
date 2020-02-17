# ---- plot-the-data
starwars %>% 
  filter(species == "Human") %>%
  ggplot() + 
  aes(x = height, y = mass) +
  geom_point()

# ---- create-data-table
starwars %>%
  filter(species == "Human") %>%
  select(name, height, mass, homeworld) %>%
  knitr::kable(caption = "A knitr table of starwars data")