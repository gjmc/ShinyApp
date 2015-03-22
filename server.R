library(shiny)
shinyServer(
  function(input, output) {
    output$Graph <- renderPlot({
      xrng <- input$xrng
      yrng <- input$yrng
      a <- input$a
      b <- input$b
      c <- input$c
      x <- seq(-xrng,xrng, by = 1/xrng)
      y <- a*x^2 + b*x + c
      plot(x, y, type = "l", ylim=c(-yrng, yrng))
      grid()
    })
  }
)