-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT e.lead_manager_code),
    COUNT(DISTINCT e.senior_manager_code),
    COUNT(DISTINCT e.managerr_code),
    COUNT(DISTINCT e.employee_code),
FROM Company c JOIN Employee e ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code ASC;



/*
C1 Angela 1 2 5 13 
C10 Earl 1 1 2 3 
C100 Aaron 1 2 4 10 
C11 Robert 1 1 1 1 
C12 Amy 1 2 6 14 
*/