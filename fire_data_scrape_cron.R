# Load necessary libraries
library(rvest)
library(dplyr)
library(ggplot2)
library(tidyr)
library(cronR)

# Load the previously saved CSV file
previous_data <- read.csv("web_scraped_firedata.csv")

# Function to scrape data
scrape_day_data <- function(region, day_link) {
  # Function body as before...
}

# Rest of your code...

# If I can get latitude and longitude coordinates for each location in the final_data dataframe
# Create a dot density map
#dot_density_map <- ggplot(final_data, aes(x = Longitude, y = Latitude)) +
# geom_point(alpha = 0.5) +
# labs(title = "Incidents by Location (Dot Density Map)",
#      x = "Longitude",
#      y = "Latitude") +
# theme_minimal()

# Show the dot density map
#print(dot_density_map)

# In case I can get shapefiles or spatial data for boundaries of each location
# Create a choropleth map
#choropleth_map <- ggplot() +
#geom_map(data = your_shapefile_data, map = your_map_data,
#          aes(map_id = your_id_column, fill = incident_count_variable),
#          color = "black") +
# labs(title = "Incidents by Location (Choropleth Map)",
#      fill = "Incident Count") +
# theme_minimal()
# Show the choropleth map
#print(choropleth_map)
