# Load the required package
library(shiny)

# Define the UI for the application
ui <- fluidPage(
  titlePanel("Employment Status Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons("varA", "Variable A:",
                   choices = c(0, 1),
                   selected = 0),
      radioButtons("varB", "Variable B:",
                   choices = c(0, 1),
                   selected = 0),
      radioButtons("varC", "Variable C:",
                   choices = c(0, 1),
                   selected = 0)
    ),
    
    mainPanel(
      textOutput("result")
    )
  )
)

# Define the server logic for the application
server <- function(input, output) {
  
  output$result <- renderText({
    # Convert the input values to numeric
    num_varA <- as.numeric(input$varA)
    num_varB <- as.numeric(input$varB)
    num_varC <- as.numeric(input$varC)
    
    # Equation logic
    equation_result <- num_varA + num_varB + num_varC
    
    # Determine employment status
    if (equation_result > 0.5) {
      employment_status <- "Employed"
    } else {
      employment_status <- "Unemployed"
    }
    
    paste("Employment status:", employment_status)
  })
}


