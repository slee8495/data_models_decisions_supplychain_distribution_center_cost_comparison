library(shiny)
library(shinythemes)
library(shinyWidgets)
library(DT)
library(rmarkdown)
library(shinyjs)

ui <- navbarPage(
  title = NULL,
  tabPanel("Product 1",
           fluidPage(
             uiOutput("chapter1")
           )),
  tabPanel("Product 2",
           fluidPage(
             uiOutput("chapter2")
           )),
  tabPanel("Product 3",
           fluidPage(
             uiOutput("chapter3")
           )),
  tabPanel("Conclusion",
           fluidPage(
             uiOutput("chapter4")
           ))
)

server <- function(input, output, session) {
  output$chapter1 <- renderUI({
    tags$iframe(src = "hw_supplychain.html", style = "width:100%; height:800px;")
  })
  output$chapter2 <- renderUI({
    tags$iframe(src = "hw_supplychain2.html", style = "width:100%; height:800px;")
  })
  output$chapter3 <- renderUI({
    tags$iframe(src = "hw_supplychain3.html", style = "width:100%; height:800px;")
  })
  output$chapter4 <- renderUI({
    tags$iframe(src = "hw_supplychain4.html", style = "width:100%; height:800px;")
  })
}

shinyApp(ui = ui, server = server)
