install.packages('XML'); library(XML) # install Xml package
int <- "integer"; num <- "numeric"; chr <- "character";
url <- "http://www3.city.sabae.fukui.jp/xml/aed/aed.xml"
data <- xmlToDataFrame(url, stringsAsFactors=F, colClasses=c(int, chr, chr, int, num, num, chr))

install.packages('googleVis'); library(googleVis) # install googleVis
data$latlong <- paste(data$latitude, data$longitude, sep=":")
map <- gvisMap(data, locationvar="latlong", tipvar="name", options=list(showTip=F, useMapTypeControl=T))
plot(map)

