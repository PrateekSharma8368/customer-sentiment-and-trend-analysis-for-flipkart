# Check correlation between Product Price and Rating
cor_product_price_rate <- cor(data$product_price, data$Rate, use = "complete.obs")
# Print the correlation value
print(paste("Correlation between Product Price and Rating: ", cor_product_price_rate))



# Check correlation between Rating and Sentiment
cor_rate_sentiment <- cor(data$Rate, data$Sentiment, use = "complete.obs")
# Print the correlation value
print(paste("Correlation between Rating and Sentiment: ", cor_rate_sentiment))

# Check correlation between Product Price and Sentiment_Numeric
cor_product_price_sentiment <- cor(data$product_price, data$Sentiment, use = "complete.obs")
# Print the correlation value
print(paste("Correlation between Product Price and Sentiment: ", cor_product_price_sentiment))



install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyr")


# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)

#verify package installation
packageVersion("ggplot2")
packageVersion("dplyr")
packageVersion("tidyr")


# Histogram of Product Prices
ggplot(data, aes(x = product_price)) +
  geom_histogram(binwidth = 500, fill = "blue", color = "black") +
  labs(title = "Distribution of Product Prices", x = "Product Price", y = "Frequency") +
  theme_minimal()

# Bar Plot of Ratings
ggplot(data, aes(x = factor(Rate))) +
  geom_bar(fill = "green", color = "black") +
  labs(title = "Distribution of Ratings", x = "Rating", y = "Count") +
  theme_minimal()

# Pie Chart of Sentiments
sentiment_counts <- table(data$Sentiment)
sentiment_df <- as.data.frame(sentiment_counts)

ggplot(sentiment_df, aes(x = "", y = Freq, fill = factor(Var1))) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Sentiments", fill = "Sentiment") +
  theme_minimal()


# Scatter Plot of Price vs. Rating
ggplot(data, aes(x = product_price, y = Rate)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Price vs. Rating", x = "Product Price", y = "Rating") +
  theme_minimal()


# Box Plot of Price by Sentiment
ggplot(data, aes(x = factor(Sentiment), y = product_price, fill = factor(Sentiment))) +
  geom_boxplot() +
  labs(title = "Product Price by Sentiment", x = "Sentiment", y = "Product Price") +
  theme_minimal()



install.packages("tm")
install.packages("wordcloud")


library(tm)
library(wordcloud)

# Create a text corpus from reviews
review_corpus <- Corpus(VectorSource(data$Review))
review_corpus <- tm_map(review_corpus, content_transformer(tolower))
review_corpus <- tm_map(review_corpus, removePunctuation)
review_corpus <- tm_map(review_corpus, removeWords, stopwords("en"))
review_corpus <- tm_map(review_corpus, stripWhitespace)

# Generate word cloud
wordcloud(content(review_corpus), min.freq = 100, random.order = FALSE, colors = brewer.pal(8, "Dark2"))



