# Car Service Database
Developed as part of a University Coursework assignment.

A simple SQL database designed to manage the daily operations of a car repair shop. It connects customers, their vehicles, and the mechanics working on them.

The main goal was to prove I could take a business problem and create a solid, working database solution.

# What This Project Does
This database keeps track of four main things:
- **Customers:** Names, phone numbers, and emails.
- **Vehicles:** Car models, years, and license plates connected to their owners.
- **Mechanics:** The staff members doing the repairs.
- **Work Orders:** Which car is being fixed, who is fixing it, what hte problem is, and the total cost.

# Database Structure
Thw database uses four main tables linked together:
- _customers_ - Stores owner profiles.
- _cars_ - Tracks vehicle details linked to a customer.
- _mechanics_ - Logs staff information.
- _work_orders_ - Connects a car and a mechanic to log a specific repair job.

# Tools Used
**Database System:** MySQL

**SQL:** The language for building the tables and writing all the queries

**Jupyter Notebooks + Python:** Used this to connect to the database and run all my tests in an easy-to-read format
