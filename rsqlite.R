library("RSQLite")
library("ggplot2")

system("ls *.db", show=TRUE)
sqlite    <- dbDriver("SQLite")
exampledb <- dbConnect(sqlite,"D:\\database.sqlite")

exampledb

dbListTables(exampledb)
dbListFields(exampledb, "loan")

results = dbSendQuery(exampledb, 
                      "select * from loan limit 1000")


res= data.frame(fetch(results,1000))
res = res[, 1:20]
res = subset(res, res$loan_status == "Current" | 1 == 1)

qplot(data = res, x = res$loan_amnt, y = res$int_rate, color=res$grade, ylab = "რაოდენობა", xlab = "სესხის მოცულობა", main="cha")
#res



