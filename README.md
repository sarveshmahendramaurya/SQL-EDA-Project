
    <h1>📊 SQL Exploratory Data Analysis (EDA)</h1>

    <h2> Project Overview</h2>
    <p>
        This project performs a comprehensive Exploratory Data Analysis (EDA) using SQL to uncover business insights from a retail-oriented Data Warehouse. By querying a structured Star Schema, this analysis identifies key performance indicators (KPIs), customer demographics, and product trends. 
    </p>
    <p>
        The goal is to transition from data engineering (building the warehouse) to data analytics (extracting value).
    </p>

    <hr>

    <h2> Data Source &amp; Architecture</h2>
    <p>
        The data is queried from the <b>Gold Layer</b> of the repository: <br>
        👉 <a href="https://github.com/sarveshmahendramaurya/SQL-DataWarehouse-Project">SQL-DataWarehouse-Project</a>.
    </p>
    
    <p>The analysis utilizes a relational model consisting of:</p>
    <ul>
        <li><b>Fact Table:</b> <code>fact_sales</code> (Sales metrics, quantities, dates).</li>
        <li><b>Dimension Tables:</b> <code>dim_customers</code> (Demographics), <code>dim_product</code> (Catalog details).</li>
    </ul>

    <hr>

    <h2> Analysis Roadmap</h2>
    <p>The exploration is divided into six logical phases to ensure complete data coverage:</p>

    <h3>1. Database &amp; Metadata Exploration</h3>
    <ul>
        <li><b>Objective:</b> Understand the schema and data types.</li>
        <li><b>Key Action:</b> Auditing tables and column definitions across <code>INFORMATION_SCHEMA</code>.</li>
    </ul>

    <h3>2. Dimension Profiling</h3>
    <ul>
        <li><b>Objective:</b> Map out the categorical landscape.</li>
        <li><b>Key Action:</b> Identifying unique customer regions (Germany, US, Canada, etc.) and product hierarchies (Categories and Subcategories like Bikes, Clothing, and Components).</li>
    </ul>

    <h3>3. Date &amp; Scope Analysis</h3>
    <ul>
        <li><b>Objective:</b> Establish the timeframe of the data.</li>
        <li><b>Key Action:</b> Finding the earliest and latest order dates to determine the "Order Range" in years and months, as well as calculating customer age distributions.</li>
    </ul>

    <h3>4. Measures &amp; KPI Generation</h3>
    <ul>
        <li><b>Objective:</b> Calculate high-level business health metrics.</li>
    </ul>

    <table border="1">
        <thead>
            <tr>
                <th>Metric</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Total Sales</td>
                <td>29,356,250</td>
            </tr>
            <tr>
                <td>Total Quantity Sold</td>
                <td>60,398</td>
            </tr>
            <tr>
                <td>Total Orders</td>
                <td>27,659</td>
            </tr>
            <tr>
                <td>Total Customers</td>
                <td>18,485</td>
            </tr>
            <tr>
                <td>Avg. Selling Price</td>
                <td>486</td>
            </tr>
        </tbody>
    </table>

    <h3>5. Magnitude Analysis (Aggregations)</h3>
    <ul>
        <li><b>Objective:</b> Compare performance across different segments.</li>
        <li><b>Key Action:</b> Analyzing revenue by category, customer distribution by country, and average costs per product line.</li>
    </ul>

    <h3>6. Ranking &amp; Top-N Analysis</h3>
    <ul>
        <li><b>Objective:</b> Identify outliers and top performers.</li>
        <li><b>Key Action:</b> Ranking the Top 5 Products by revenue and identifying the Top 10 Customers who generated the highest sales volume.</li>
    </ul>

    <hr>

    <h2> Technical Skills Demonstrated</h2>
    <ul>
        <li><b>Joins:</b> Connecting Fact and Dimension tables to relate sales to customers/products.</li>
        <li><b>Aggregations:</b> Extensive use of <code>SUM()</code>, <code>AVG()</code>, <code>COUNT()</code>, and <code>GROUP BY</code>.</li>
        <li><b>Date Functions:</b> Using <code>DATEDIFF()</code> and <code>MIN/MAX</code> for temporal analysis.</li>
        <li><b>Set Operators:</b> Using <code>UNION ALL</code> to create consolidated metric reports.</li>
        <li><b>Filters &amp; Rankings:</b> Leveraging <code>DISTINCT</code>, <code>TOP</code>, and <code>ORDER BY</code> for focused analysis.</li>
    </ul>

    <hr>

    <h2> How to Run</h2>
    <ol>
        <li>Ensure you have deployed the <b>SQL-DataWarehouse-Project</b>.</li>
        <li>Clone this repository.</li>
        <li>Run the scripts in numerical order (<code>Query1</code> through <code>Query6</code>) using <b>SQL Server Management Studio (SSMS)</b>.</li>
    </ol>

