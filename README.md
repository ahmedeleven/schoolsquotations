# Project School Quotations

Welcome to the project! This project is made with Django and includes a MySQL database. You can import SQL files to initialize the database with sample data.

The project was made to manage maintenance quotations for schools

## Dependencies

To run this project, you need to install the following dependencies:

- Python 3.7 or higher
- Django 3.2.18 or higher
- MySQL 5.7 or higher
- mysqlclient

You can install other dependencies using pip. Run the following command in your terminal:

```Bash
pip install -r requirements.txt
```


## Importing SQL Files

To import SQL files into the database, follow these steps:

1. Open your terminal and navigate to the project directory.
2. Activate your virtual environment if you are using one.
3. Make sure you have MySQL installed and running.
4. Create a new database by running the following command:

```Bash
mysql -u <username> -p -e "CREATE DATABASE <database_name>"
```

Replace `<username>` with your MySQL username and `<database_name>` with the name of the database you want to create.


5. Import the SQL file by running the following command:

```Bash
mysql -u <username> -p <database_name> < <path_to_sql_file>
```

Replace `<username>` with your MySQL username, `<database_name>` with the name of the database you created, `<path_to_sql_file>` with the path of the SQL file found in the project root directory

6. Rename the file `.env.example` to `.env` and replace `<your_mysql_password>` with your database password 

## Running the Project

To run the project, follow these steps:

1. Open your terminal and navigate to the project directory.
2. Activate your virtual environment if you are using one.
3. Run the following command to start the development server:

```Bash
python manage.py runserver
```

4. Open a web browser and navigate to the URL shown in the terminal output.

5. To view the project use the following username and password
   Username: admin
   Password: Sh@redP@ss123

That's it! You should now be able to view and interact with the project.
Save the changes to the README.md file and close your text editor.