# NETFLIX_DATA_ANALYSIS_SQL

# 🎥 NETFLIX DATA ANALYSIS SQL

## SQL Project: Data Analysis for Netflix - A Global Streaming Service

### 📜 Overview
This project demonstrates my SQL expertise through an analytical deep dive into Netflix's dataset. Using SQL's capabilities, I tackled real-world streaming service challenges, extracted key insights, and presented data-driven solutions that address business and customer needs.

###  Project Structure
#### 1. Database Setup
- Created the `netflix_db` database.
- Designed and structured tables to reflect Netflix’s core data operations.

#### 2. Data Import
- Imported sample data to replicate Netflix's content library and user behavior.

#### 3. Data Cleaning
- Addressed inconsistencies, handled null values, and ensured data reliability for accurate analysis.

#### 4. Business Problems Solved
- Solved 10+ real-world streaming platform challenges using advanced SQL queries.

### 📊 Key Topics and Skills Covered

1. **Database Creation and Table Design**
   - Structured data for Netflix’s streaming operations.
2. **Aggregate and Grouping Functions**
   - Analyzed content trends, most popular genres, and top-performing regions.
3. **Joins**
   - Connected datasets to explore relationships, such as customer preferences and content distribution.
4. **Window Functions**
   - Ranked top-rated content and analyzed subscription trends over time.
5. **Date and Time Functions**
   - Explored content release trends by year, month, and day.
6. **Data Segmentation**
   - Classified content into genres, countries, and ratings for granular analysis.
7. **Subqueries**
   - Simplified complex queries for focused insights.

.

## Database Tables

### 1. Netflix Table
This table captures the core details about Netflix's streaming library.

| Column Name    | Data Type     | Description                                   |
| -------------- | ------------- | --------------------------------------------- |
| `show_id`      | VARCHAR(5)    | Unique identifier for the show or movie.      |
| `type`         | VARCHAR(10)   | Type of content (e.g., movie, TV show).       |
| `title`        | VARCHAR(250)  | Title of the content.                         |
| `director`     | VARCHAR(550)  | Director(s) of the content.                   |
| `casts`        | VARCHAR(1050) | Cast members featured in the content.         |
| `country`      | VARCHAR(550)  | Country of origin for the content.            |
| `date_added`   | VARCHAR(55)   | Date when the content was added to Netflix.   |
| `release_year` | INT           | Year of release.                              |
| `rating`       | VARCHAR(15)   | Content rating (e.g., PG, R).                 |
| `duration`     | VARCHAR(15)   | Duration of content (e.g., minutes, seasons). |
| `listed_in`    | VARCHAR(250)  | Genres associated with the content.           |
| `description`  | VARCHAR(550)  | Synopsis of the content.                      |

### Relationships
Currently, this dataset focuses on a single table (`netflix`) with comprehensive attributes to facilitate analysis. In future extensions, relationships with user, subscription, and viewing data can be explored.

### 🚀 Highlights of the Analysis

- Identified the most popular content types (movies vs. TV shows).
- Analyzed the distribution of content by rating and release year.
- Segmented content by genre and country for localized insights.
- Determined the top-performing directors and cast members.

### 📚 Learning Outcomes

- Crafted SQL queries to analyze Netflix’s vast library of content.
- Discovered patterns in content additions, ratings, and genre popularity.
- Applied advanced SQL techniques such as window functions and subqueries to solve business questions effectively.

### 🔥 Let’s Dive In
Want to explore the full project?
📂 Check out the repository and dive into the data!
