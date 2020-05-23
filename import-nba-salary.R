## Get NBA salary data

library(tidyverse)

nba_salary <- read_csv("https://query.data.world/s/w2dih33v3s4fmgbldzgywnapesxjnl")

summary(nba_salary)

write_csv(nba_salary, "input/nba-salary.csv")
write_csv(nba_salary, paste0("input/nba-salary_",min(nba_salary$season_start),"-",
                                                     max(nba_salary$season_end),".csv"))
## checking scot pippen
nba_salary %>% filter(str_detect(player_id, "pip"))
