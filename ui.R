library(shiny)
shinyUI(fluidPage(
  titlePanel("Obesity Calculator"),
  
  sidebarLayout(
    sidebarPanel( 
      
      helpText("Enter your height and weight to calculate your BMI(Body Mass Index)"),            
      br(),           
      numericInput("num_height",label = h4("How tall are you? (centimeters)"),min = 5, max = 500,0), #,value = 150
      br(),
      numericInput("num_weight",label = h4("How much do you weigh? (kilograms)"),min = 5, max = 500,0), #, value = 50
      br(),
      
      br(),   
      actionButton("Calculate", label = "submit")    
  
         
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("BMI Calculation",
          p(h4("Your Input:")),
          textOutput("text_height"),
          textOutput("text_weight"),
          br(),
          p(h4("Your BMI Value:")),
          textOutput("text_BMI"),
          textOutput("text_status")
          
                 ),
        tabPanel(
          "Documentation",
          p(h4("Simple BMI Calculator:")),
          br(),
          helpText("This application calculates BMI of person for given height and weight. To calculate your BMI, enter your height and weight in the form"),
          p(h3("What is BMI?")),
          helpText("BMI means Body Mass Index. The BMI shows the relation between a person's height and weight, and can be used to indicate whether the person has a normal weight or if he/she is underweight or overweight.,
          HTML("<u><b>Equation for calculation: </b></u>
                        <br> <br>
                        <b> BMI = W /(H * H)</b>
                        <br>
                        where: <br>
                        BMI = Body Mass Index <br>
                        W = Weight in KG <br>
                        H = Height in meters <br> ") 
          
                 )
        
        )
      
      )
  )
))