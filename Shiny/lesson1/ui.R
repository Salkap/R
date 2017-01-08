library(shiny)

shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Installation"),
      br(),
      p("Shiny is available on CRAN, so you can install it 
        in the ususal way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      img(src = "bigorb.png", width = 72, height = 72),
      "shiny is a product of",
        span("RStudio", style = "color:blue")
    ),
    
    mainPanel(
      h1("Introducing Shiny"),
      p(
        "Shiny is a new package from RStudio that makes it ", 
        em(
          "incredibly easy"), 
        "to build interactive web applications with R"
      ),
      br(),
      p("for an introduction and live examples, visit the", a("Shiny homepage", href = "http://www.rstudio.com")),
      br(),
      br(),
      h2("Features"),
      tags$ul(
          tags$li("Build useful web applications with only a few lines of code"),
          tags$li("Shiny applications are automatically live in the same way that",
             strong("spreadsheets"),
             "are live. Outputs change instantly"))
    )
  )
  
  
))
