select count(*) from diabetes_data
--253680
 
select * from diabetes_data limit 100

-- Males and Females having good BMI index and count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where bmi in (18, 19, 20, 21, 22, 23, 24, 25)
group by diabetes_012, sex
order by 1

-- Males and Females NOT having good BMI index and count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where bmi not in (18, 19, 20, 21, 22, 23, 24, 25)
group by diabetes_012, sex
order by 1

select distinct(GenHlth)
from diabetes_data

-- Males and Females having good health and count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where GenHlth < 4 
group by diabetes_012, sex
order by 1

-- Males and Females NOT having good health and count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where GenHlth in (4, 5)
group by diabetes_012, sex
order by 1


-- Males and Females having good health, and income > 35000, sorted by count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, income, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where GenHlth < 4 and income > 5
group by diabetes_012, sex, income
order by 3 desc, 1 desc

-- Males and Females having good health, and young adults (under 30), sorted by count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, age, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where GenHlth < 4 and age < 3
group by diabetes_012, sex, age
order by 3 desc, 1 desc

-- Males and Females having good health, and adults (30 to 60), sorted by count of no-diebetes, pre-diebetes, diebetes condition
select diabetes_012, sex, age, count(*) as "Total Count", (count(*)::float/253680)*100 as "Percentage" from diabetes_data
where GenHlth < 4 and (age > 2 and age < 9)
group by diabetes_012, sex, age
order by 1 desc, 3 desc




