library(shiny)

shinyServer(function(input, output) {
  output$textOutput <- renderText({
    length(input$checkboxGroupInput)
  })
  output$tableOutput <- renderTable({
    m <- matrix(c("Single Checkbox", input$checkboxInput,
                  "Checkbox Group", paste(input$checkboxGroupInput,collapse=","),
                  "Date input", as.character(as.Date(input$dateInput, origin="1970-01-01")),
                  "Date range", paste(as.character(as.Date(input$dateRangeInput[1], origin="1970-01-01")),"to",as.character(as.Date(input$dateRangeInput[2], origin="1970-01-01"))),
                  "File input", input$fileInput,
                  "Numeric input", input$numericInput,
                  "Radio buttons", input$radioButtons,
                  "Select box", input$selectInput,
                  "Sliders", paste(paste(input$sliderInput1, collpase=","), paste(input$sliderInput2, collapse=",")),
                  "Text input", input$textInput
    ), ncol = 2, byrow = TRUE, dimnames=list(NULL, c("Widget", "Value")))
  })
})
