# Load the required package
library(shiny)

# Define the UI for the application
ui <- fluidPage(
  titlePanel("Frito Lay - Representation of an Attrition Predictor"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("varA", "Job Involvement: Select 1 - 4",
                  choices = c(1, 2, 3, 4),
                  selected = 1),
      selectInput("varB", "Job Satisfaction: Select 1 - 4",
                  choices = c(1, 2, 3, 4),
                  selected = 1),
      selectInput("varC", "Overtime: Select 0(no overtime) or 1(yes overtime)",
                  choices = c(0, 1),
                  selected = 0)
    ),
    
    mainPanel(
      textOutput("result")
    )
  )
)