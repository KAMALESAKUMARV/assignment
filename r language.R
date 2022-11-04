library(rvest)
library(dplyr)
link='https://www.bustle.com/entertainment/most-powerful-marvel-characters'
web=read_html(link)
name=web%>%html_nodes("h2")%>%html_text()
View(name)
marvel=data.frame(name)
View(marvel)
write.csv(marvel,'marvel characters.csv')
