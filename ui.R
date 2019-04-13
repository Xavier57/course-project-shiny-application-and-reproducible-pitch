library(shiny)
shinyUI(fluidPage(
  titlePanel("National implementing measures per year and country"),
  sidebarLayout(
    sidebarPanel(
      h3("Move the bar to select the year"),
      sliderInput("slider1", "Slide Me!", 1900, 2019, 2019)
    ),
    mainPanel(
      plotOutput("plot1", brush = brushOpts(
        id = "brush1")
    )
  )
)))