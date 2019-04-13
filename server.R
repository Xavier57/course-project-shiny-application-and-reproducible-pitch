library(shiny)
library(plotly)
library(dplyr)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    yearInput <- "2019"
    yearInput <- input$slider1
    mydata <- read.csv("sparql.csv") 
    mydata2<-filter(mydata, as.numeric(year) ==as.numeric(yearInput))
       plot(mydata2$country, mydata2$countMNI, cex = 1.5, pch = 2, bty = "n", las=2, type="b", bg="blue", col="red")
       title(xlab="Country", adj = 0.5, line=4)
       title(ylab="Number of measures", adj = 0.5, line=3)
       title(main=sprintf( "National implementing measures for year ", toString(yearInput),"..."),
              col.main="blue", adj = 0) 
       title(main=toString(yearInput), col.main="blue", 
             adj = 0.6) 

  
  })
})