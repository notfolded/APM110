#FRONT END

library(shiny)
library(ggplot2)
library(dplyr)

# Define the UI
ui <- fluidPage(
  # Create a title
  titlePanel("Random Variables Calculator"),
  
  # Create a sidebar layout
  sidebarLayout(
    # Create a sidebar panel
    sidebarPanel(
      # Create a radio button to select between univariate and bivariate variables
      radioButtons("var_type", "Variable Type", choices = c("Univariate", "Bivariate")),
      
      # Create a numeric input for the number of variables
      numericInput("num_var", "Number of Variables", value = 1),
      
      # Create a text input for the variable values
      textInput("var_values", "Variable Values (comma-separated)", value = ""),
      
      # Create a text input for the variable probabilities
      textInput("var_probs", "Variable Probabilities (comma-separated)", value = ""),
      
      # Create an action button to calculate the random variable
      actionButton("calc_btn", "Calculate")
    ),
    
    # Create a main panel
    mainPanel(
      # Create a plot to display the PDF and CDF
      plotOutput("plot"),
      
      # Create a table to display the mean and variance (for univariate variables) or marginal and conditional distributions (for bivariate variables)
      tableOutput("table"),
      
      # Create a validation message to display if the probabilities are not valid
      verbatimTextOutput("valid_msg")
    )
  )
)



shinyApp(ui, server)
