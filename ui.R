library(shiny)
shinyUI(fluidPage(
  titlePanel("Expected Time Calculator"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Enter your optimistic, pessimistic and likely time estimates for the project to calculate the Expected Time"),            
      br(),           
      numericInput("optimistic",label = h4("Your Optimistic Time Estimate (hours)"),min = 1, max = 300,1), 
      br(),
      numericInput("pessimistic",label = h4("Your Pessimistic Time Estimate (hours)"),min = 1, max = 300,1),
      br(),
      numericInput("likely",label = h4("Your Likely Time Estimate (hours)"),min = 1, max = 300,1), 
      br(),
      actionButton("Calculate", label = "submit")    
  
         
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Expected Time Calculation",
          p(h4("Your Input:")),
          textOutput("text_optimistic"),
          textOutput("text_pessimistic"),
          textOutput("text_likely"),
          p(h4("Expected Time:")),
          textOutput("text_expected"),
                 ),
        tabPanel(
          "Documentation",
          p(h4("Expected Time Calculator:")),
          br(),
          helpText("This application calculates the expected time for a task in a Systems Development project, for given optimistic, pessimistic, likely time estimates. Please enter values for your three estimated scenarios in the form"),
                 )
        
        )
      
      )
  )
))
