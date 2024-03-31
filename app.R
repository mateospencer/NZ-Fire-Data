library(shiny)
library(dplyr)

# Sample data
regions <- c("North", "Central", "South")
incidents <- data.frame(
  Region = sample(regions, 50, replace = TRUE),
  IncidentNumber = 1:50,
  Date = sample(seq(as.Date('2023/01/01'), as.Date('2023/12/31'), by="day"), 50),
  Location = sample(c("Auckland", "Wellington", "Christchurch", "Hamilton", "Dunedin"), 50, replace = TRUE),
  Result = sample(c("False alarm", "Fire extinguished", "Rescue", "Medical emergency"), 50, replace = TRUE),
  Brigade = sample(c("Fire Brigade 1", "Fire Brigade 2", "Fire Brigade 3", "Fire Brigade 4"), 50, replace = TRUE)
)

# Define UI
ui <- fluidPage(
  titlePanel("Fire Incident Reports"),
  sidebarLayout(
    sidebarPanel(
      selectInput("region", "Select Region:", choices = regions),
      dateRangeInput("dateRange", "Select Date Range:", start = NULL, end = NULL),
      selectInput("result", "Select Result:", choices = c("All", unique(incidents$Result))),
      selectInput("brigade", "Select Brigade:", choices = c("All", unique(incidents$Brigade)))
    ),
    mainPanel(
      tableOutput("incidentsTable")
    )
  )
)

# Define server logic
server <- function(input, output) {
  # Read data from CSV file
  incidents <- read.csv("/Users/matthewspencer/Desktop/web_scraped_firedata.csv", stringsAsFactors = FALSE)
  
  # Define server logic
  output$incidentsTable <- renderTable({
    # Convert Date column to character format
    incidents$Date <- as.character(incidents$Date)
    
    # Print user inputs
    print(input$region)
    print(input$dateRange)
    print(input$result)
    print(input$brigade)
    
    # Return unfiltered data
    incidents
  })
}

# Run the application
shinyApp(ui = ui, server = server)
