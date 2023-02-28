library(dplyr)

library(readr)

library(ggplot2)

SPL_data <- read.csv("I deleted the data, I hope this works", stringsAsFactors = FALSE)


plot1 <- ggplot(SPL_data, aes(x = CheckoutYear, y = Checkouts, color = CheckoutType)) +
  geom_line() +
  labs(title = "Type of Checkout depending on the Year",
       x = "Year",
       y = "Number of Checkouts",
       color = "Checkout Type") +
  scale_color_manual(values = c("green", "blue", "red", "purple", "orange"))


book_vs_audiobook <- SPL_data %>%
  filter(MaterialType %in% c("BOOK", "AUDIOBOOK"))


plot2 <- ggplot(book_vs_audiobook, aes(x = CheckoutMonth, y = Checkouts, color = MaterialType)) +
  geom_area() +
  labs(title = "Books Vs. Audiobooks Checked Out More By Month",
       x = "Month",
       y = "Number of Checkouts",
       color = "Material Type")



plot3 <- ggplot(SPL_data, aes(x = CheckoutYear, y = Checkouts, fill = UsageClass)) +
  geom_col(position = "dodge") +
  labs(title = "Adio Vs. Digital By Year",
       x = "Year",
       y = "Number of Checkouts",
       fill = "Usage Type")


