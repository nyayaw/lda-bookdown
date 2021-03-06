indiv_topic_graphs <- ggplot(data = filter(weight_ratio, topic == jjj), aes(x = year, y = y))  +
  theme_minimal() +
  spaghettistyle +
  theme(legend.position="none",
        plot.title = element_text(colour = hcl(h = (jjj-1)*(360/cats)+15, l = 65, c = 100))) +
  geom_point(size = 1, colour = hcl(h = (jjj-1)*(360/cats)+15, l = 65, c = 100)) +
  coord_cartesian(ylim=c(0, max(filter(weight_ratio, topic == jjj)$y, 0.07, na.rm=TRUE)), expand = TRUE) +
  labs(x = "Year", y = "Weighted Proportion of Articles", title = the_categories$subject[jjj]) +
  scale_x_continuous(minor_breaks = 10 * 188:201,
                     expand = expansion(mult = c(0.01, 0.01))) +
  scale_y_continuous(minor_breaks = 0.005 * 1:100,
                     expand = expansion(mult = c(0.01, .03)))
print(indiv_topic_graphs)