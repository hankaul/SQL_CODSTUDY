SELECT company_code, C.founder,
    COUNT( DISTINCT lead_manager_code),
    COUNT( DISTINCT senior_manager_code),
    COUNT( DISTINCT manager_code), 
    COUNT( DISTINCT employee_code) 
FROM Company C 
JOIN  Lead_Manager  L
    USING (company_code)
JOIN Senior_Manager  S
    USING (company_code,lead_manager_code)
JOIN Manager M
    USING (company_code,lead_manager_code, senior_manager_code)
JOIN Employee E
    USING (company_code,lead_manager_code,senior_manager_code,manager_code)
GROUP BY company_code, C.founder
ORDER BY company_code