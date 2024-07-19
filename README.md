# Beauty

## Yelp Nail Salon Analysis

This project analyzes data on nail salons in Philadelphia, PA, using the Yelp API and local property values. The aim is to explore trends and relationships between various business attributes and local property values.

### Features

**Data Collection:**
- Fetches data on nail salons from the Yelp API.
- Gathers information on business ratings, review counts, prices, and locations.

**Data Integration:**
- Merges Yelp data with property value data based on ZIP codes.
- Converts and cleans data for consistency and analysis.

**Data Visualization:**
- Creates visualizations to explore:
  - Price vs. Review Counts
  - Price vs. Rating
  - Rating vs. Review Counts
  - Price vs. Property Value
  - Review Counts vs. Property Value
  - Rating vs. Property Value

**Sentiment Analysis:**
- Scrapes customer reviews from Yelp.
- Performs sentiment analysis on the reviews.
- Visualizes the correlation between sentiment scores and business ratings.

### Getting Started

1. **Prerequisites:**
   - Install the required R packages:
     ```r
     install.packages(c("tidyverse", "httr", "rvest", "syuzhet", "dplyr", "ggplot2", "caret"))
     ```

2. **Running the Script:**
   - Ensure you have a valid Yelp API key.
   - Replace the placeholders in the script (`client_id`, `apikey`) with your actual credentials.
   - Execute the script to fetch data, perform analyses, and generate visualizations.

3. **Data Sources:**
   - Yelp API for nail salon data.
   - Local property value data from a CSV file.

### Results

- The analysis provides insights into the relationship between business attributes (like price and reviews) and local property values.
- Sentiment analysis of reviews helps understand customer satisfaction in relation to business ratings.

### Contact

For any questions or contributions, feel free to open an issue or contact me through my GitHub profile.
