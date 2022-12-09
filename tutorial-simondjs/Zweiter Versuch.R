## Data Wrangling Tutorial
## Simon Schulze
## December 2nd
library(shiny)
# Create shiny app for R basics


ui <- 
  fluidPage("Introduction to R",
    titlePanel("Lesson 1: R as a calculator"),
    sidebarLayout(
      position = "left",
      sidebarPanel(("In its most basic form, R is a glorified calculator. Perform a calculation using + (addition),
                    - (substraction), * (multiplication), or / (division). Look up more arithmetic operators if you're keen!"), 
                   textInput("text", "Enter an equation", "")),
      mainPanel(textOutput("calculation")
      )
    )
  )

ui <- navbarPage("My Application",
                 tabPanel("Component 1"),
                 tabPanel("Component 2"),
                 navbarMenu("More",
                            tabPanel("Sub-Component A"),
                            tabPanel("Sub-Component B"))
)


ui <- navbarPage("Introduction to R",
                 navbarMenu("Part 1: R Syntax",
                            tabPanel("R as a calculator", 
                                     #fluidPage("R as as calculator"),
                                     titlePanel("Lesson 1: R as a calculator"),
                                     sidebarLayout(
                                       position = "left",
                                       sidebarPanel(("In its most basic form, R is a glorified calculator. Perform a calculation using + (addition),
                    - (substraction), * (multiplication), or / (division). Look up more arithmetic operators if you're keen!"), 
                                                    textInput("text", "Enter an equation", "")),
                                       mainPanel(textOutput("calculation")),
                            tabPanel("Data Types")),
                 navbarMenu("Part 2",
                            tabPanel("Variables"))
)))

server <- function(input, output) {

  output$calculation <- renderText(eval(parse(text = input$text)))
  #output$comment <- renderText(class(output$calculation))

}



# Run the app ----
shinyApp(ui = ui, server = server)
