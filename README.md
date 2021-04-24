# Query
Write a query to list all projects and the total # of hours dedicated to it.

RESULT:  
~~~~sql
SELECT projects.name as "Project Name", 
    COALESCE(sum(projects_efforts.hours),0) as "# Hours" 
FROM projects 
LEFT JOIN projects_efforts on projects_efforts.project_id = projects.id 
GROUP BY projects.id ORDER BY sum(projects_efforts.hours) DESC
~~~~