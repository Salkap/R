
#install.packages('rsconnect')

setwd("C:\\Users\\tedo\\Documents\\Projects\\R")

rsconnect::setAccountInfo(name='tedo', token='15D12AFA4F34561BD16F12B6DEECDAC4', secret='iqw3leo570z3pO6GrXpgXbID1HprHTSTJ9FeWRRF')

library(rsconnect)
#install.packages(c('ggplot2', 'shiny'))
library(shiny)
runApp("scratch")
#runApp("App-1", display.mode = "showcase")
#library(rsconnect)
#deployApp()

# დაჰოსტილი აპლიკაციის გათიშვა
#terminateApp("shiny")
