# BookMyShow Analytics
An end-to-end data analytics project built around a BookMyShow-style movie booking ecosystem. The project uses Python for data generation and preparation, MySQL for data storage and analysis, SQL for business-focused queries, and Power BI for interactive dashboarding.

## Project Workflow

Python → MySQL → SQL → Power BI

1. **Python** — Generated and prepared the project datasets.
2. **MySQL** — Stored the datasets in a relational database.
3. **SQL** — Cleaned the data and performed business-focused analytical queries.
4. **Power BI** — Built an interactive dashboard to visualize bookings, revenue, movies, theatres, customers, food orders, and reviews.

## Tools & Technologies

- **Python** — Data generation and preparation
- **Pandas** — Data manipulation
- **MySQL** — Database storage and querying
- **SQL** — Data cleaning and analytical queries
- **Power BI** — Interactive dashboard and data visualization
- **Jupyter Notebook** — Python-based data preparation workflow

## Dataset

The project uses multiple related datasets representing different parts of a movie-booking platform:

- **Movies** — Movie information and attributes
- **Theatres** — Theatre and location details
- **Screens** — Screen information within theatres
- **Customers** — Customer details
- **Shows** — Movie show schedules
- **Bookings** — Movie ticket booking transactions
- **Food Orders** — Food and beverage orders associated with bookings
- **Reviews** — Customer ratings and reviews

## SQL Analysis

The project includes SQL queries for data cleaning and business analysis, covering areas such as:

- Booking and revenue analysis
- Movie performance
- Theatre and screen utilization
- Customer behavior
- Food order analysis
- Ratings and reviews
- Show and booking trends

The SQL scripts are available in the `SQL` folder.

## Power BI Dashboard

The Power BI dashboard provides an interactive view of the movie-booking ecosystem, allowing users to explore key metrics and business trends across bookings, revenue, movies, theatres, customers, food orders, and reviews.

The Power BI report is available in the `Power BI` folder.

### Dashboard Preview

![BookMyShow Dashboard](Images/BookMyShow%20Dashboard%20Background.png)

## Project Structure

```text
BookMyShow_Analytics/
├── Dataset/       # Project datasets
├── Images/        # Dashboard images and backgrounds
├── Power BI/      # Power BI dashboard
├── Python/        # Data generation and preparation notebooks
├── SQL/           # Data cleaning and analytical SQL queries
├── Utilities/     # Supporting Python modules
└── .gitignore

## Author

**Sameer Mishra**

Data Analytics | Python | SQL | MySQL | Power BI