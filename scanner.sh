#!/bin/bash

echo '{
    "vulnerability-count" : 3,
    "run-date-time" : "'`date`'",
    "vulnerabilities" : [
        {
            "category" : "SQL Injection",
            "description" : "The application uses concatenated SQL statements with unfiltered unvalidated user input.",
            "file" : "Controllers/HomeController.cs",
            "line" : 42,
            "rating" : "High"
        },
        {
            "category" : "SQL Injection",
            "description" : "The application uses concatenated SQL statements with unfiltered unvalidated user input.",
            "file" : "Data/ApplicationDbContext.cs",
            "line" : 42,
            "rating" : "High"
        },
        {
            "category" : "Cross-site Scripting",
            "description" : "The application returns user input unencoded in the response.",
            "file" : "Views/Home/Index.cshtml",
            "line" : 42,
            "rating" : "Medium"
        }
    ]
}'
exit 1