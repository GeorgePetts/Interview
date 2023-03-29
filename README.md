# Netaphor

Netaphor Project

Solution and Projects

DackTest is the MVC Project and EmployeesAPI is the WebAPI.  Both are written in .Net Core 2.1.  When you click "Start", both projects launch.  EmployeesAPI launches first.

NOTE:  ONCE LAUNCHED THE API BROWSER OPENS IN FRONT OF THE MVC PROJECT BROWSER.  YOU NEED TO MINIMIZE THE API BROWSER, SO YOU CAN SEE THE MVC PAGE.

The MVC project posts three parameters to the Web API in a JSON object, retrieves the data and uses it for the model in the web page.  Most of the page is a partial view.  On first launch, the partial view is loaded along with the complete page.  When the "Find.." button is pushed, jQuery loads a new partial view via AJAX, based on the parameters selected by the dropdown.

Database

The database is exactly like the script provided by a previous interviewing company, with the exception of a stored procedure added to provide the data for the API.  The API calls the stored procedure via entity framework.  The MVC uses the three tables in the database to populate the dropdowns.  The stored procedure definition is in sp_Employees.sql.

A backup of the database is in Dacktest/data_backup.

The connection string is stored in the appsettings.json files for both projects.  the appsettings.json file for the MVC projects also contains the URL for the API.

How This Code Could be Improved.

1.  Have a separate class library containing the classes the projects have in common, or at least the interfaces. Also the dbContext for the database.
2.  Put the page's javascript in a separate file.
3.  Make the page talk directly to the Web API and have the javascript code mix the HTML with the data.

