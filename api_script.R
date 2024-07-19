########################### Yelp API ###########################
#installing packages
install.packages("tidyverse")
install.packages("httr")

require(tidyverse)
require(httr)

client_id <- "Client_ID"

res <- POST("https://api.yelp.com/oauth2/token",
            body = list(grant_type = "client_credentials",
                        client_id = client_id))

apikey <- "API_Key"

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 0
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))


results <- content(res)


yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed,
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code,
                     distance = x$distance, 
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails1 <- do.call("rbind", results_list)



#nail2

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 51
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))


results <- content(res)


yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance, 
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails2 <- do.call("rbind", results_list)



#nail3

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 101
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))

results <- content(res)

yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance,
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance,
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails3 <- do.call("rbind", results_list)

#nail4

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 151
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))

results <- content(res)

yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance,
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails4 <- do.call("rbind", results_list)

#nail5

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 201
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))

results <- content(res)

yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance,
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails5 <- do.call("rbind", results_list)

#nail6

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 251
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))


results <- content(res)


yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance,
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails6 <- do.call("rbind", results_list)

#nail7

yelp <- "https://api.yelp.com"
term <- "nail salon"
location <- "Philadelphia, PA"
categories <- NULL
limit <- 50
offset <- 301
radius <- 8000
url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                  query = list(term = term, location = location, 
                               limit = limit, offset = offset, 
                               radius = radius))
res <- GET(url, add_headers('Authorization' = paste("bearer", apikey)))


results <- content(res)


yelp_httr_parse <- function(x) {
  
  parse_list <- list(id = x$id, 
                     name = x$name, 
                     rating = x$rating, 
                     is_claimed = x$is_claimed, 
                     review_count = x$review_count, 
                     price = x$price, 
                     latitude = x$coordinates$latitude, 
                     longitude = x$coordinates$longitude, 
                     address1 = x$location$address1, 
                     city = x$location$city, 
                     state = x$location$state, 
                     zip_code = x$location$zip_code, 
                     distance = x$distance,
                     url=x$url
  )
  
  parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))
  
  df <- data_frame(id=parse_list$id,
                   name=parse_list$name, 
                   rating = parse_list$rating, 
                   is_claimed = parse_list$is_claimed, 
                   review_count = parse_list$review_count, 
                   price = parse_list$price, 
                   latitude=parse_list$latitude, 
                   longitude = parse_list$longitude, 
                   address1 = parse_list$address1, 
                   city = parse_list$city, 
                   state = parse_list$state, 
                   zip_code = parse_list$zip_code, 
                   distance= parse_list$distance, 
                   url = parse_list$url)
  df
}

results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

nails7 <- do.call("rbind", results_list)

#merge all data set
masteryelp <- rbind(nails1,nails2,nails3,nails4,nails5,nails6,nails7)

#MASTER DATA
View(masteryelp)

#keep only the ones from Philadelphia
masteryelp <- masteryelp[which(masteryelp$city=="Philadelphia"),]

########################### Merge Yelp and Trulia Property Value ###########################
setwd("/Users/yunhuang95/Desktop")
propvalue <- read.csv("propvalue.csv")

masteryelp$zip_code <- as.integer(masteryelp$zip_code) #change to same type

install.packages("dplyr")
library(dplyr)
masteryelp <- left_join(x=masteryelp,y=propvalue, by = "zip_code") #left join

#convert property dollar value to integer
avglistprice <- as.numeric(gsub('[$,]', '', masteryelp$avg_list_price))
View(avglistprice)
avglistprice <- as.data.frame(avglistprice)
masteryelp[15] <- avglistprice[1]
##masteryelp[15] <- as.numeric(unlist(masteryelp[15]))

medsalesprice <- as.numeric(gsub('[$,]', '', masteryelp$med_sales_price))
View(medsalesprice)
medsalesprice <- as.data.frame(medsalesprice)
masteryelp[16] <- medsalesprice[1]
##masteryelp[16] <- as.numeric(unlist(masteryelp[16]))


########################### YELP TRENDS GRAPHS ###########################
#price vs. reviews
install.packages("ggplot2")
library(ggplot2)

pricereview <- masteryelp[which(masteryelp$price!=""),]
ggplot(pricereview, aes(x = pricereview$price , y = pricereview$review_count)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(position = position_jitter(height = 0, width = 0.25), shape = 1, alpha = 0.4, color = "blue") +
  labs(title="Nail Salon Price vs. Review Counts") +
  labs(x="Price", y="Review Counts")

#price vs. rating
pone <- yelp[which(yelp$price=="$"),]
ptwo <- yelp[which(yelp$price=="$$"),]
pthree <- yelp[which(yelp$price=="$$$"),]

ponerate <- as.data.frame(table(pone$rating))
ptworate <- as.data.frame(table(ptwo$rating))
pthreerate <- as.data.frame(table(pthree$rating))

names(ponerate) = c("Rating","Salon_Counts")
names(ptworate) = c("Rating","Salon_Counts")
names(pthreerate) = c("Rating","Salon_Counts")

ponerate[3] = 1
ptworate[3] = 2
pthreerate[3]= 3

names(ponerate)[3] = "Price_Level"
names(ptworate)[3] = "Price_Level"
names(pthreerate)[3] = "Price_Level"

setwd("/users/yunhuang95/desktop")
mixed <- read.csv("pricemixed.csv")

mixed$Rating <- as.character(mixed$Rating)

library(ggplot2)
ggplot(mixed, aes(x = mixed$Rating, y = mixed$Salon_Counts, fill=factor(mixed$Price_Level))) +
  geom_bar(stat="identity",position="dodge",width=.5) + 
  scale_fill_discrete(name="Price_Level",
                      breaks=c(1, 2, 3),
                      labels=c("$", "$$", "$$$"))+
  xlab("Rating")+ylab("Salon Counts")+labs(title="Nail Salons by Rating and Price Level")

#rating vs. reviews      
masteryelp$rating <- as.character(masteryelp$rating)
ggplot(masteryelp, aes(x = masteryelp$rating , y = masteryelp$review_count)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(position = position_jitter(height = 0, width = 0.25), shape = 1, alpha = 0.4, color = "blue") +
  labs(title="Nail Salon Rating vs. Review Counts") +
  labs(x="Rating", y="Review Counts")


########################### PROPERTY VALUE ###########################
#price vs property value
priceprop <- masteryelp[which(masteryelp$price!=""),]
ggplot(priceprop, aes(x = priceprop$price , y = priceprop$avg_list_price)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(position = position_jitter(height = 0, width = 0.25), shape = 1, alpha = 0.4, color = "purple") +
  labs(title="Nail Salon Price vs. Property Value") +
  labs(x="Nail Salon Price Level", y="Average List Price")

#review counts & property value
rprop <- ggplot(masteryelp, aes(x=masteryelp$avg_list_price, y=masteryelp$review_count)) +
  geom_point() + stat_smooth(color = "purple")
rprop + labs(x="Average List Price") + labs(y="Review Counts") + labs(title = "Nail Salon Review Counts vs. Property Value")

#rating & prop value
rprop <- ggplot(masteryelp, aes(x=masteryelp$avg_list_price, y=masteryelp$rating)) +
  geom_point() + stat_smooth(color = "purple")
rprop + labs(x="Average List Price") + labs(y="Rating") + labs(title = "Nail Salon Rating vs. Property Value")

#map of ideal prop value areas --> 250k-500k neighborhoods



########################### SCRAPE REVIEWS BY SALONS ###########################

#All nail salons scrape

library(rvest)

masterreviews=NULL
for (i in 1:nrow(masteryelp)) {
  text = read_html(paste(masteryelp[i, 14]))
  text = html_nodes(text, ".review-content p , .embossed-text-white")
  text = html_text(text)
  
  masterreviews = rbind(masterreviews, text)
  
}

masterreviews <- as.data.frame(masterreviews)
write.csv(masterreviews, "masterreviews.csv")

################################ SENTIMENT ANALYSIS #######################################
#GENERATE SENTIMENT SCORE WITH SYUZHET
View(masterreviews)

write.csv(masterreviews, "masterreviews.csv")

install.packages("syuzhet")
library(syuzhet)

mastercombined <- paste(masterreviews$V3, masterreviews$V4, masterreviews$V5, masterreviews$V6, masterreviews$V7, 
                        masterreviews$V8, masterreviews$V9, masterreviews$V10, masterreviews$V11, masterreviews$V12, 
                        masterreviews$V13, masterreviews$V14, masterreviews$V15, masterreviews$V16, masterreviews$V16, 
                        masterreviews$V18, masterreviews$V19, masterreviews$V20, masterreviews$V21, masterreviews$V22, sep='')

mastercombined <- as.data.frame(mastercombined)

install.packages("stringr")
library(stringr)

mastertext = str_replace_all(mastercombined$mastercombined,"[^[:graph:]]"," ")

mastersent = get_sentiment(mastertext, method="syuzhet")
mastersent = as.data.frame(mastersent)
View(mastersent)

masterreviews$sent <- mastersent$mastersent
View(masterreviews)

colnames(masterreviews)[1] <- "name"

#merge masterreviews (sentiments) & masteryelp(info)
library(dplyr)
masterreviews[1] <- as.character(masterreviews[1])
YELP <- cbind(masteryelp, masterreviews$sent)
colnames(YELP)[18] <- "sentiment"

write.csv(YELP, "YELP.csv")
setwd("/Users/yunhuang95/Desktop")
yelp <- read.csv("yelp.csv")
yelp[4] <- NULL

yelp$rating <- as.character(yelp$rating)

#rating and sentiments
install.packages("ggplot2")
library(ggplot2)

ggplot(yelp, aes(x = yelp$rating , y = yelp$sentiment)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(position = position_jitter(height = 0, width = 0.25), shape = 1, alpha = 0.4, color = "red") +
  labs(title="Nail Salon Rating vs. Sentiment Score") +
  labs(x="Rating", y="Sentiment Score")

#property value and sentiments
ggplot(yelp, aes(x = yelp$avg_list_price , y = yelp$sentiment)) +
  geom_point() + stat_smooth(color = "red") + 
  labs(title="Nail Salon Property Value vs. Sentiment Score") +
  labs(x="Average List Price", y="Sentiment Score")
