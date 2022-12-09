## Interactive Tutorial
## Simon Schulze
## December 2nd
library(shiny)
# Create shiny app for R basics


ui <- shinyUI(
  navbarPage("Introduction to R",
             tabPanel("Introduction",
                      sidebarPanel(
                        tags$h3("Introduction"),
                        "Welcome to R. This tutorial runs through basic concepts in R to reduce intimidation you might feel to begin coding. To make it as beginner-friendly as possible, completion of this tutorial does not require R to be installed. Eventually, in order to write scripts in R, however, you must have R (or the much-recommended R Studio) installed. Follow this",
                        tags$a(href="https://techvidvan.com/tutorials/install-r/#install-r-mac", "link"), "for installation instructions:", tags$br(), 
                        "For now, however, follow this interactive tutorial to learn how to read R script. Subsequent tutorials will deal with navigating the R Studios application and conducting data science and visualization. Now please select Lesson 1."
                        )
                      ),
             tabPanel("Lesson 1",
                      sidebarPanel(
                        tags$h3("Lesson 1: R as a calculator"),
                        "Being able to calculate using R is neat, but obviously that is not its main application, as using a simple calculator would be a lot easier. R is able to run operations on given data, and the way R works with data depends on the data type. There are six common types:",
                        tags$ol(
                          tags$li(tags$b("Numeric data:"), tags$br(), "Numeric data entails real numbers. These can be positive or negative and can contain decimals."),
                          tags$li(tags$b("Integer:"), tags$br(),"Integer data is a subtype of numeric data, as it only contains whole numbers. This means that positive and negative numbers can be integers, but they cannot have any decimals. Integer data can be useful as discrete variables (more on this later). Note that, if numeric data is turned into integer data, the decimal points are removed without any rounding taking place."),
                          tags$li(tags$b("Character:"), tags$br(),"The character data type is used to handle any form of text. This can include numbers. This type is also useful for categorical data. It is distinguished from other types by being surrounded by either quotation marks (“”) or apostrophes (‘’)."),
                          tags$li(tags$b("Factor:"), tags$br(),"Factorial data is a sub-category of character data. It entails. ")
                        ),
                        width = 4
                      ),
                      mainPanel(
                        "R as a calculator",
                        textInput("text", "Enter an expression", ""),
                        textOutput("calculation")
                      )
             ),
             tabPanel("Lesson 2",
                      sidebarPanel(
                        tags$h3("Lesson 2: Data Types"),
                        "In its most basic form, R is a glorified calculator. Perform a calculation using + (addition), - (substraction), * (multiplication), or / (division). Look up more arithmetic operators or just follow this", tags$a(href="https://www.tutorialgateway.org/r-arithmetic-operators/", "link"), "if you're keen!"
                      ),
                      mainPanel(
                        "Lesson 2"
                      )
             ),
             tabPanel("Lesson 3",
                      sidebarPanel(
                        tags$h3("Lesson 3: blub ub"),
                      ),
                      mainPanel(
                        "Lesson 3"
                      )
             ),
             tabPanel("Resources",
                      sidebarPanel(
                        tags$h3("Further Information"),
                      ),
                      mainPanel(
                        "I don't know what to write here"
                      )
             )
  )
)





server <- function(input, output) {
  output$calculation <- renderText(eval(parse(text = input$text)))
  #output$comment <- renderText(class(output$calculation))
}



# Run the app ----
shinyApp(ui = ui, server = server)