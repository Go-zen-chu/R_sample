install.packages('SPARQL'); library(SPARQL) # SPARQLライブラリのインストール

endpoint <- "http://services.data.gov/sparql" # endpoint（データソース）のurl設定

query <- 
  "PREFIX dgp1187:<http://data-gov.tw.rpi.edu/vocab/p/1187/>
  SELECT ?ye ?fi ?ac
  WHERE {
  ?s dgp1187:year ?ye .
  ?s dgp1187:fires ?fi .
  ?s dgp1187:acres ?ac .
  }"

qd <- SPARQL(endpoint, query); qd$result
