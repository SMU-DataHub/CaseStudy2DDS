# Define the server logic for the application
server <- function(input, output) {
  
  output$result <- renderText({
    # Convert the input values to numeric
    num_varA <- as.numeric(input$varA)
    num_varB <- as.numeric(input$varB)
    num_varC <- as.numeric(input$varC)
    
    # Equation logic
    equation_result <- .4687 + 0.09136*num_varA + 0.04156*num_varB - 0.21743*num_varC
    
    # Determine employment status
    if (equation_result > 0.5) {
      employment_status <- "Remains Employed"
    } else {
      employment_status <- "Becomes Unemployed"
    }
    
    paste("Employment status:", employment_status)
  })
}