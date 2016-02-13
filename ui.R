
library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("EXPECTED TIME CALCULATOR (the PERT technique)"),
    
    sidebarPanel(
      numericInput('optimistic', 'Insert your optimistic time estimate (h)', 0, min = 1, max = 300, step = 1) ,
      numericInput('pessimistic', 'Insert your pessimistic time estimate (h)', 0, min = 1, max = 300, step = 1),
      numericInput('likely', 'Insert your realistic time estimate (h)', 0, min = 1, max = 300, step = 1),
      submitButton('Submit')
    ), 
    mainPanel(
      h4('DOCUMENTATION:'),
      p('In order to calculate the expected time for a particular task to be completed, just enter the optimistic (shortest), pessimistic (longest), and the realistic time that you would expect the task to take. The app will calculate the expected time for the task, using the appropriate formula.'),
      
      
      
      h4('You have entered the following values:'), 
      p('optimistic:'), verbatimTextOutput("inputoptimisticvalue"),
      p('pessimistic:'), verbatimTextOutput("inputpessimisticvalue"),
      p('likely:'), verbatimTextOutput("inputlikelyvalue"),
      h4('The expected time is:'),
      verbatimTextOutput("estimation"),
      p('NOTE: It is also possible to do this calculation with the following formula: 
        ET = (o + 4r + p)/6'),
      p('where'),
      p('ET = expected time for the completion for an activity'),
      p('o = optimistic completion time estimate for an activity'),
      p('r = realistic completion time estimate for an activity'),
      p('p = pessimistic completion time estimate for an activity'),strong(verbatimTextOutput("PERT"))
      
      
      
    )
    
  )   
)
