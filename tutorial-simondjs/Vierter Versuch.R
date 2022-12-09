## Only run examples in interactive R sessions
ui <- navbarPage("Introduction to R",
             navbarMenu("Part 1: R Syntax",
                        tabPanel("R as a calculator"),
                        tabPanel("Data Types")),
             navbarMenu("Part 2",
                        tabPanel("Variables"))
)
             
server <- function(input, output) {}

shinyApp(ui, server)


ui <- navbarPage("My Application",
                 tabPanel("Component 1"),
                 tabPanel("Component 2"),
                 navbarMenu("More",
                            tabPanel("Sub-Component A"),
                            tabPanel("Sub-Component B"))
)