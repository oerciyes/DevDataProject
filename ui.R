library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("EXPECTED TIME CALCULATOR (Systems Development Tool)"),
    
    sidebarPanel(
      numericInput('optimistic', 'Insert your optimistic time estimate (h)', 0, min = 1, max = 300, step = 1) ,
      numericInput('pessimistic', 'Insert your pessimistic time estimate (h)', 0, min = 1, max = 300, step = 1),
      numericInput('likely', 'Insert your realistic time estimate (h)', 0, min = 1, max = 300, step = 1),
      submitButton('Submit')
    ), 
    mainPanel(
      
      h4('You have entered the following values:'), 
      p('optimistic:'), verbatimTextOutput("inputoptimisticvalue"),
      p('pessimistic:'), verbatimTextOutput("inputpessimisticvalue"),
      p('likely:'), verbatimTextOutput("inputlikelyvalue"),
      h4('The expected time is:'),
      verbatimTextOutput("estimation"),
      p('EXPECTED TIME IS CALCULATED ABOVE'),strong(verbatimTextOutput("diagnostic"))
      
      
      
    )
    
  )   
)
