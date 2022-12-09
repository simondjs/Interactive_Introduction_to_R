## Data Wrangling Tutorial
## Simon Schulze
## December 2nd

library (shiny)
# Create shiny app for R basics

ui <- 
  fluidPage(
    titlePanel("titlePanel title stuff"),
    sidebarLayout(
      position = "left",
      sidebarPanel(("In its most basic form, R is a glorified calculator. Perform a calculation using + (addition), - (substraction), * (multiplication), or / (division"), 
                   textInput("text", "Enter a calculation to be performed", "")),
      mainPanel(
        verbatimTextOutput()("calculation"),
      )
    )
  )

server <- function(input, output) {
  test = 9
  #parse_text <- parse(text = input$text)
  output$calculation <- renderPrint(eval(parse(text = input$text)))
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
