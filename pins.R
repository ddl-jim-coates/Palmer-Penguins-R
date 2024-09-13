library(pins)
board <- board_folder("../data/Pins")

penguin_data <- read.csv('../data/Pins/penguins.csv', header = FALSE, sep = "\t")

board %>% pin_write(penguin_data, versioned = TRUE, type="csv")

board %>% pin_read("penguin_data")