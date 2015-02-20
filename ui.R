library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Predict Volume of Timbre of Black Cherry Trees"),
        sidebarPanel(
                sliderInput("girth", 'Set Girth (diameter in inches)',value = 14.5, min = 8.5, max = 20.5, step = 0.1,),
                sliderInput("height", 'Set Height of a tree (in ft)',value = 78.5, min = 70, max = 87, step = 0.1,),
                submitButton("Submit")
                
        ),
        mainPanel(
                h3('Results of prediction, using linear regression model (dataset "trees")'),
                h4('Girth is set to'),
                verbatimTextOutput("girth"),
                h4('Height is set to'),
                verbatimTextOutput("height"),
                h4('Which results in a prediction of Timber Volume (in cubic ft)'),
                verbatimTextOutput("predict")
        )
))