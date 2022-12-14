## Interactive Tutorial: Introduction to R
## Simon Schulze
## December 9th

# Packages ----
library(shiny)

# Create shiny app

# ui ----
ui <- shinyUI(
  navbarPage("Introduction to R",
             tabPanel("Introduction",
                      sidebarPanel(
                        tags$h3("Introduction"),
                        "Welcome to R. This interactive tutorial is Part 1 of a tutorial series running through basic concepts in R to reduce intimidation you might feel to begin coding. To make it as beginner-friendly as possible, completion of this tutorial does not require R to be installed. Eventually, in order to write scripts in R, however, you must have R (or the much-recommended R Studio) installed. Follow this",
                        tags$a(href="https://techvidvan.com/tutorials/install-r/#install-r-mac", "link"), "for installation instructions:", tags$br(), 
                        "For now, however, follow this interactive tutorial to learn how to read R script. Subsequent tutorials will deal with navigating the R Studios application and conducting data science and visualization. Now please select Lesson 1.",
                        width = 8
                        )
             ),
             tabPanel("Lesson 1",
                      sidebarPanel(
                        tags$h3("Lesson 1: R as a Calculator"),
                        "In its most basic form, R is a glorified calculator. Perform a calculation using + (addition), - (substraction), * (multiplication), or / (division). Look up more arithmetic operators or just follow this", tags$a(href="https://www.tutorialgateway.org/r-arithmetic-operators/", "link"), "if you're keen and try them out here!",
                        width = 8
                      ),
                      mainPanel(
                        "",
                        width = 4,
                        textInput("text", "Enter an expression", ""),
                        textOutput("calculation")
                      )
             ),
             tabPanel("Lesson 2",
                      sidebarPanel(
                        tags$h3("Lesson 2: Data Types"),
                        "Being able to calculate using R is neat, but obviously that is not its main application, as using a simple calculator would be a lot easier. R is able to run operations on given data, and the way R works with data depends on the data type. There are five common types:",
                        tags$ol(
                          tags$li(tags$b("Numeric:"), tags$br(), "Numeric data entails real numbers. These can be positive or negative and can contain decimals."),
                          tags$li(tags$b("Integer:"), tags$br(),"Integer data is a subtype of numeric data, as it only contains whole numbers. This means that positive and negative numbers can be integers, but they cannot have any decimals. Integer data can be useful as discrete variables (more on this later). Note that, if numeric data is turned into integer data, the decimal points are removed without any rounding taking place."),
                          tags$li(tags$b("Character:"), tags$br(),"The character data type is used to handle any form of text. This can include numbers. This type is also useful for categorical data. It is distinguished from other types by being surrounded by either quotation marks (??????) or apostrophes (??????)."),
                          tags$li(tags$b("Factor:"), tags$br(),"Factoral data is a sub-category of character data. Usually character data is turned into factors to analyze these specific factors and avoid R getting confused with any other character data. Additionally, certain functions only work with factors."),
                          tags$li(tags$b("Logical:"), tags$br(),"Logical data can only be either ", em("TRUE"), "or", em("FALSE"),". This is useful when filtering out data based on defined factors.")
                          ),
                        tags$br(),
                        "Additionally, you can change the type any given piece of data by using the function", em("as.A(B)"), "with", em("A"), "being the data type and", em("B"), "being the data. For example,", em("as.character(5)"), "turns the number 5 into a character. Give it a try in the text box. Once you're done, move on to Lesson 3.",
                          width = 8
                          ),
                      mainPanel(
                        em("This box tells you your data type if you enter data into the function (between the parentheses)"), 
                        width = 4, 
                        textInput("type", "Change the data type of a piece of data", "class()"),
                        textOutput("type")
                      )
             ),
             tabPanel("Lesson 3",
                      sidebarPanel(
                        tags$h3("Lesson 3: Variables"),
                        "You've now learned how to create different types of data, how to change the data type of a particular piece of data, and how to have R output the data type (using the", em("class()"), "function. Always writing out our data manually would be extremely tedious, however. That's why coders normally have R work on variables instead of direct values. A variable is simply a name by which R recognizes data, be it a single piece of data or many. First, let's create a variable. To do so, type the desired name of your variable (it must not match the name of any function embedded within R syntax such as", em("class"), "which we encountered earlier) and follow it up with <- (the less than symbol and a dash). This designates the name of a variable. Finally, add the data this variable should refer to.",
                        tags$br(),
                        tags$br(),
                        "Now you know how to create a variable with a single data point. Next, you'll create a vector. This is a list of data points. You can still call this by a single variable. For example, you could create a vector of car brands like so: car_brands<- c('Ford','Fiad','Ferrary'). As you can see, you just need to separate each element/data point by commas, have the set of values enclosed by parentheses, and precede these with a 'c'. Give this a try in the 2nd text box now. Create a list (vector) of your first and last names. Don't forget to enclose every element with quotation marks or apostrophes as they are individual strings.",
                        tags$br(),
                        tags$br(),
                        "How did that go? Amazing!^^ This should be a good point to leave it then. In Part 2, you will learn how to use conditional statements to filter out information and how to work with datasets, which are essentially a set of vectors with vectors! Exciting, isn't it?",
                        width = 8
                        ),
                      mainPanel(
                        "Create a variable called 'name' and make its value a string (text enclosed by quotation marks or apostrophes) of your name.", 
                        width = 4, 
                        textInput("variable", "If you've done it correctly, the scary red error message will disappear.", ""),
                        textOutput("variable"),
                        textInput("variable_called", "Create a variable and call it a vector of all of your names", ""),
                        textOutput("variable_called")
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




# server ----
server <- function(input, output) {
  output$calculation <- renderText(eval(parse(text = input$text)))
  output$type <- renderText(eval(parse(text = input$type)))
  output$class <- renderText(eval(parse(text = input$class)))
  output$variable <- renderPrint(eval(parse(text = input$variable)))
  output$variable_called <- renderPrint(eval(parse(text = input$variable_called)))
}

# Run the app ----
shinyApp(ui = ui, server = server)