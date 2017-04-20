library(shiny)

shinyUI(fluidPage(
  titlePanel("Basic widgets"),

  fluidRow(
    column(3,
           h3("Buttons"),
           actionButton("actionButton", "Action"),
           br(),
           br()
           #,
           #submitButton("Submit")
    ),
    column(3,
           h3("Single Checkbox"),
           checkboxInput("checkboxInput", "Choice A", TRUE)
    ),
    column(3,
           checkboxGroupInput("checkboxGroupInput", h3("Checkbox group!"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), c(2,3))
    ),
    column(3,
           dateInput("dateInput", h3("Date input"), "2017-03-01")
    )
  ),
  fluidRow(
    column(3,
           dateRangeInput("dateRangeInput", h3("Date range"), end = "2017-03-31", start = "2017-03-01")
    ),
    column(3,
           fileInput("fileInput", h3("File input"))
    ),
    column(3,
           h3("Help text"),
           helpText("Note: help text isn't a true widget, but it provides an easy way to add text to accompany other widgets.")
    ),
    column(3,
           numericInput("numericInput", h3("Numeric input"), 1)
    )
  ),
  fluidRow(
    column(3,
           radioButtons("radioButtons", h3("Radio buttons"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3))
    ),
    column(3,
           #selectInput("selectInput", h3("Select box"), list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 3)
           selectInput("selectInput", h3("Select box"), list("Choice 1", "Choice 2", "Choice 3"), 3)
    ),
    column(3,
           sliderInput("sliderInput1", h3("Sliders"), 0, 100, c(50, 50)),
           sliderInput("sliderInput2", NULL, 0, 100, c(25, 75))
    ),
    column(3,
           textInput("textInput", h3("Text input"), placeholder = "Enter text...")
    )
  ),
  hr(),
  textOutput("textOutput"),
  hr(),
  tableOutput("tableOutput")
))
