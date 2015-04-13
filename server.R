library(shiny)
shinyServer(
     function(input, output){
             output$odate<-renderPrint({input$date})
             output$obudget<-renderPrint({input$budget})
    
             output$ototal<-renderPrint({
                     total<-sum(input$expense1, input$expense2, input$expense3, 
                         input$expense4, input$expense5, input$expense6,
                         input$expense7)
                     
                     total
             })
             
             output$balance<-renderPrint({
                     total<-sum(input$expense1, input$expense2, input$expense3, 
                                input$expense4, input$expense5, input$expense6,
                                input$expense7)
                                      
                     input$budget-total
             })
             
             output$pieChart<-renderPlot({
                     total<-sum(input$expense1, input$expense2, input$expense3, 
                                input$expense4, input$expense5, input$expense6,
                                input$expense7)
                     
                    pie(c(total, (input$budget-total)), labels=c("spending", "remaining"),
                        col=rainbow(2))
                     
             })
                                  
                                 
     }    
 )
       
