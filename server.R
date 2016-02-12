library(shiny)
library(car)

shinyServer(function(input, output) {
  
  values <- reactiveValues()
  
  observe({
    input$Calculate
    values$expected <- isolate({
      (input$optimistic+input$pessimistic+input$likely*4)/6
      
    })
  })



# Display values entered
  output$optimistic <- renderText({
    input$Calculate
    paste("Your optimistic time estimate [in hours] :", isolate(input$optimistic))
  })
  
  output$pesimistic <- renderText({
    input$Calculate
    paste("Your pessimistic time estimate [in hours] : ", isolate(input$pessimistic))
  })
  
  output$likely <- renderText({
    input$Calculate
    paste("Your likely time estimate [in hours] : ", isolate(input$likely))
  })

  output$text_expected <- renderText({
    if(input$Calculate == 0) ""
    Else
      
      paste("Expected Time is:", values$expected)
  })

