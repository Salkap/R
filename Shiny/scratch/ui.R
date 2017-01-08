library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny - პირველი აპლიკაცია"),
  
  # Sidebar with a slider input for the number of bins
  fluidRow(
    column(4,
           wellPanel(
             h1("Here come the tools"),
             hr(),
             h4(strong("App made in R"), style = "color:purple", align = "center"),
             hr(),
             img(src = "bigorb.png", width = 400, width = 400),
             hr(),
             sliderInput("bins", "number of observations:",
                         min = 1, max = 100, value = 50)
           )),
    column(8,
           h2(strong("See the plot here"), align = "center"),
           plotOutput("distPlot"))
  )
))