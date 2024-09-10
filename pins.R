library(pins)
board <- board_folder("../data/Palmer_Penguin_Pins")

penguin_data <- read.csv('../data/Palmer_Penguin_Pins/penguins.csv', header = FALSE, sep = "\t")

board %>% pin_write(penguin_data, versioned = TRUE, type="csv")

board %>% pin_read("penguin_data")