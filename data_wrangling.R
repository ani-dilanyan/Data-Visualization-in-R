library(rio)
library(tidyverse)

video_games_sales <- import("Video_Games_Sales.csv")

first_graph <- ggplot(video_games_sales, aes(x="", y=factor(Year_of_Release), fill=c(Year_of_Release))) +
  geom_bar(color="white", stat="identity", width=1) +
  coord_polar("y", start=0) +
  labs(title="Windows Games Sales For Each Platform",
       x=NULL,
       y=NULL,
       fill = "Platforms",
       caption = "Source: https://www.kaggle.com/rush4ratio/video-game-sales-with-ratings") +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid  = element_blank()) 