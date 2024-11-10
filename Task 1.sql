--Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

SELECT 
value, industry_branch_code ,payroll_year , cpib.code, cpib.name , cp.payroll_quarter 
FROM czechia_payroll as cp 
JOIN czechia_payroll_industry_branch as cpib on cpib.code = cp.industry_branch_code 
WHERE value IS NOT NULL;


SELECT 
cp.industry_branch_code, cpib.name, cp.value, cp.payroll_year ,cp.payroll_quarter, cpib.code, cpib.name,
FROM czechia_payroll as cp 
JOIN czechia_payroll_industry_branch as cpib on cpib.code = cp.industry_branch_code 
WHERE cpib.code = value is not NULL AND cpib.code = 'A'
Group by cpib.code, cp.payroll_year 
Order by payroll_year, cpib.code;

SELECT 
*
FROM czechia_payroll
WHERE industry_branch_code ='A' AND value is not null
order by payroll_year ;



