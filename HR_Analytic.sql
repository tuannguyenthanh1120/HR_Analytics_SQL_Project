use [HR_Analytics]

--Q1) What is the average monthly income of employees based on their job level?
select JobLevel , avg(Monthlyincome) as income from [HR_Analytics] group by JobLevel

--Q2) How many employees are there in each department?
select Department, count(Empid) as Totalemployee from [HR_Analytics] group by Department

--Q3) What is average job satisfaction score for employees based on their education field?
select educationfield ,avg(jobsatisfaction) as avgjob from [HR_Analytics] group by educationfield

--Q4) How many employees have a salary higher than 5000$ and also have a work-life balance score greater than 3?
select count(*) from [HR_Analytics] where MOnthlyincome>5000 and worklifebalance >=3 

--Q5) What is the average number of years employees have been with the company, grouped by marital status? 
select avg(yearsatcompany) as com, maritalstatus from [HR_Analytics] group by maritalstatus
order by maritalstatus desc

--Q6) What is the total number of employees who travel for business and have performance rating of more than 3
select count(*) from [HR_Analytics] where performancerating >= 3

--Q7) How does the number of companies an employee has worked for correlate with their monthly income
select numcompaniesworked, sum(monthlyincome) from [HR_Analytics] group by numcompaniesworked order by numcompaniesworked 

--Q8) What is the average training times last year for employees who have been promoted(i.e., Year since last promotion > 0)
select avg(trainingtimeslastyear) as training, yearssincelastpromotion from [HR_Analytics] 
where yearssincelastpromotion >0 group by yearssincelastpromotion

--Q9) Can you find the education field and monthly income for inviduals with monthly income greater than 7000
select educationfield, sum(monthlyincome) as income from [HR_Analytics] group by educationfield
having sum(monthlyincome) > 7000







