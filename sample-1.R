source("libraries_and_data.R")


getSymbols("AMZN",from="2008-08-01",to="2018-08-17")
AMZN_log_returns<-AMZN%>%Ad()%>%dailyReturn(type = 'log')


AMZN%>%Ad()%>%chartSeries()
AMZN%>%charts.Bar()
#AMZN%>%reChart(type = c("auto", "candlesticks", "matchsticks", "bars","line"))

AMZN%>%chartSeries(TA='addBBands();addVo();addMACD()',subset='2018')


