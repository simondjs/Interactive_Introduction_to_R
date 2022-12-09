## Data Wrangling Tutorial
## Simon Schulze
## December 2nd


library (shiny)
# Create shiny app for R basics



ui <- 
  fluidPage(
    titlePanel("Introduction to R"),
    sidebarLayout(
      position = "left",
      sidebarPanel(("In its most basic form, R is a glorified calculator. Perform a calculation using + (addition), - (substraction), * (multiplication), or / (division"), 
                   textInput("calculation", "4. Enter some text to be displayed", "")),
      mainPanel(
        textOutput("mytext")
      )
    )
  )

server <- function(input, output) {
  
  output$mytext <- renderText (input$calculation)
  
}

# Run the app ----
shinyApp(ui = ui, server = server
         
         