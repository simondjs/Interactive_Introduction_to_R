## Data Wrangling Tutorial
## Simon Schulze
## December 2nd
library(shiny)
# Create shiny app for R basics


ui <- 
  navbarPage("Introduction to R",
             navbarMenu("Part 1: R Syntax",
                        tabPanel("Lesson 1: R as a calculator",
                                 sidebarLayout(
                                   position = "left",
                                   sidebarPanel(("Being able to calculate using R is neat, but obviously that is not its main application, as using a simple calculator would be a lot easier. R is able to run operations on given data, and the way R works with data depends on the data type. There are six common types:"),tags$br(),
                                                tags$ol(
                                                  tags$li("Numeric:", tags$br(),"Numeric data entails real numbers. These can be positive or negative and can contain decimals."),
                                                  tags$li("Integer:", tags$br(),"Integer data is a subtype of numeric data, as it only contains whole numbers. This means that positive and negative numbers can be integers, but they cannot have any decimals. Integer data can be useful as discrete variables (more on this later). Note that, if numeric data is turned into integer data, the decimal points are removed without any rounding taking place."),
                                                  tags$li("Character:", tags$br(),"The character data type is used to handle any form of text. This can include numbers. This type is also useful for categorical data. It is distinguished from other types by being surrounded by either quotation marks (“”) or apostrophes (‘’)."),
                                                  tags$li("Factor:", tags$br(),"Factorial data is a sub-category of character data. It entails. ")
                                                ), 
                                                textInput("text", "Enter an equation", ""), width = 8),
                                   mainPanel(textOutput("calculation"), width = 4
                                   )
                                 )
                        ),
                        position = ("static-top"),
                        fluid = TRUE
             )
  )




ui <- navbarPage("Introduction to R",
                 navbarMenu("Part 1: R Syntax",
                            tabPanel("R as a calculator"),
                            tabPanel("Data Types")),
                 navbarMenu("Part 2",
                            tabPanel("Variables"))
)



server <- function(input, output) {
  
  output$calculation <- renderText(eval(parse(text = input$text)))
  #output$comment <- renderText(class(output$calculation))
  
}



# Run the app ----
shinyApp(ui = ui, server = server)