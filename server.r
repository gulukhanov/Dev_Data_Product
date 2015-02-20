library(shiny)
library(datasets)
data(trees)

shinyServer(
        function(input, output) {
                #reactive output
                output$girth <- renderPrint({input$girth})
                output$height <- renderPrint({input$height})
                #prediction from a linear model              
                output$predict <- renderPrint({        
                        fit<-lm(Volume~Girth+Height, data=trees)
                        Girth<-input$girth
                        Height<-input$height
                        new<-data.frame(Girth,Height)
                        names(new)<-c("Girth","Height")
                        predict(fit, newdata=new)
                })
        }
)