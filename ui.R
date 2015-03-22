library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Let's play with quadratic functions"),
  sidebarPanel(
    h3("ax^2 + bx + c"),
    sliderInput('a', 'a coefficient',value = 1, min = -10, max = 10, step = .5,),
    sliderInput('b', 'b coefficient',value = 0, min = -10, max = 10, step = .5,),
    sliderInput('c', 'c coefficient',value = 0, min = -10, max = 10, step = .5,),    
    h3('Graph limits:'),
    sliderInput('xrng', 'X-axis range',value = 10, min = 5, max = 20, step = 1,),
    sliderInput('yrng', 'Y-axis range',value = 10, min = 5, max = 20, step = 1,),
    h3("Instructions:"),
    p("play with the different sliders to follow the behaviour of quadratic functions according to different coefficient values.")
  ),
  mainPanel(
    plotOutput('Graph')
  )
))