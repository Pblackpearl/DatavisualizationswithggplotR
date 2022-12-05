## Data visualizations with ggplot

library(ggplot2)

bookings_df <- read.csv("C:/Users/pamela.russell/Downloads/hotel_bookings.csv")
head(bookings_df)

# Investigate data
head(bookings_df)
colnames(bookings_df)

# Question: Do people with children book more advance? 

# Plot the data
ggplot(data = bookings_df) + 
  geom_point(mapping = aes(x = lead_time, y = children))
# Answer: The plot shows that people without children book far in advance

# Question: Do guests without children book the most on weekend nights?
ggplot(data = bookings_df) + 
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))
# Answer: True, guests without children book the most on weekend nights.

# Analyze the distribution channels
ggplot(data = bookings_df) + 
  geom_bar(mapping = aes(x = distribution_channel))
# Note: The highest distrbution channel is TA/TO

# Examine distributions by deposit type
ggplot(data = bookings_df) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))
# Note: The highest were the ones with no deposit

# Add facets
ggplot(data = bookings_df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)
  
# Rotate labels
ggplot(data = bookings_df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = bookings_df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data = bookings_df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))



             





