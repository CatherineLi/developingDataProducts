library(shiny)
shinyUI(
        pageWithSidebar(
        headerPanel("Weekly Expense Manager"),
        sidebarPanel(
                dateInput("date","week of"),
                numericInput('budget', 'Enter weekly budget in dollars',500),
                numericInput('expense1', 'Enter Monday expenses in dollars',0), 
                numericInput('expense2', 'Enter Tuesday expenses in dollars',0),
                numericInput('expense3', 'Enter Wednesday expenses in dollars',0),
                numericInput('expense4', 'Enter Thursday expenses in dollars',0),
                numericInput('expense5', 'Enter Friday expenses in dollars',0),
                numericInput('expense6', 'Enter Saturday expenses in dollars',0),
                numericInput('expense7', 'Enter Sunday expenses in dollars',0),
                submitButton('Submit')
              
        ),
        
        mainPanel(
                h5("For the week of"), 
                verbatimTextOutput("odate"),
                h5('You entered a budget of'), 
                verbatimTextOutput("obudget"),
                h5('You have spent a total amout of'), 
                verbatimTextOutput("ototal"),
                h5('The remaining balance for the week'),
                verbatimTextOutput("balance"),
                h5('This is the pie chart'),
                plotOutput('pieChart')               
                                                
                )
        
        )
       
        
)
