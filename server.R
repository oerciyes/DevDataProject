library(shiny) 

Expected<-function(optimistic,pessimistic,likely) {(optimistic+pessimistic+(4*likely))/6}

diagnostic_f<-function(optimistic,pessimistic,likely){
  Expected_value<-(optimistic+pessimistic+(4*likely))/6
}

shinyServer(
  function(input, output) {
    
    output$inputoptimisticvalue <- renderPrint({input$optimistic})
    output$inputpessimisticvalue <- renderPrint({input$pessimistic})
    output$inputlikelyvalue <- renderPrint({input$likely})
    output$estimation <- renderPrint({Expected(input$optimistic,input$pessimistic,input$likely)})
    output$diagnostic <- renderPrint({diagnostic_f(input$optimistic,input$pessimistic,input$likely)})
    
  } 
)
