--IN statement:
--if we have multiple choise
select FIRST_NAME from EMPLOYEES where EMPLOYEE_ID=107 or EMPLOYEE_ID=102 or EMPLOYEE_ID=103 or EMPLOYEE_ID=104;

--we can use basically:
select FIRST_NAME from EMPLOYEES where EMPLOYEE_ID in(107,102,103,104);
--we got the same result

select CITY,COUNTRY_ID from LOCATIONS where COUNTRY_ID='UK' OR COUNTRY_ID='US';
---we use for words ''

select CITY,COUNTRY_ID from LOCATIONS where COUNTRY_ID in ('UK','US');
-- if we dont want to UK or US the we use NOT IN STATEMENT

select CITY,COUNTRY_ID from LOCATIONS where COUNTRY_ID not in ('UK','US');


--ORDER BY STATEMENT;
select SALARY from EMPLOYEES;
--asc
select SALARY from EMPLOYEES order by SALARY asc ;
select SALARY from EMPLOYEES order by SALARY desc ;

--if i do not put any condition:it returns descending order
select SALARY from EMPLOYEES order by SALARY;

--if i select order by firstname then it returns order names by alphabetic order
select FIRST_NAME,SALARY from EMPLOYEES order by FIRST_NAME;

--if i order by like below;  main order according to first condition, but if there are same names then last name will be ordered according to second conditions
select FIRST_NAME,LAST_NAME from EMPLOYEES order by FIRST_NAME asc,LAST_NAME desc ;

select FIRST_NAME, SALARY from EMPLOYEES order by FIRST_NAME asc,SALARY desc ;

select FIRST_NAME, SALARY from EMPLOYEES order by SALARY;

select FIRST_NAME from EMPLOYEES order by SALARY;-- first names will be listed by salary

--LIKE STATEMENT:
--Ex:'Jen%': starts with Jen:
--Jennifer
--Ex:'%se': finish with se
--Ande

select FIRST_NAME from EMPLOYEES where FIRST_NAME like 'A%';

select LAST_NAME from EMPLOYEES where LAST_NAME like '%t';

-- we can define how many characters in a name
select FIRST_NAME from EMPLOYEES where FIRST_NAME like '_____';

select FIRST_NAME from EMPLOYEES where FIRST_NAME like '__a__';

select FIRST_NAME from EMPLOYEES where FIRST_NAME like 'D__%';

select CITY,COUNTRY_ID from LOCATIONS where COUNTRY_ID like 'U_';

--COUNT STATEMENT

select COUNT(JOB_ID) from JOB_HISTORY;

select count(EMPLOYEE_ID) from EMPLOYEES;

select count(STREET_ADDRESS) from LOCATIONS;
--23 street address

select count(POSTAL_CODE) from LOCATIONS;
--22 postal code, there is one null.
--count does not accept null value
select count(COUNTRY_ID) from LOCATIONS;
--23

select  COUNT(distinct COUNTRY_ID) from LOCATIONS;
--14 only unique


----AGGREGATE FUNCTIONS
--MIN
select min(salary) from EMPLOYEES;
select min(FIRST_NAME) from EMPLOYEES;
--returns first one
--MAX
select max(SALARY) from  EMPLOYEES;
select max(FIRST_NAME) from EMPLOYEES;
--returns last one
--avg
select avg(SALARY) from EMPLOYEES;








