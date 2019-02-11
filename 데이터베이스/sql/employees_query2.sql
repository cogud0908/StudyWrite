-- 1번문제
select max(salary) as '최고임금', min(salary) as '최저임금', (max(salary) - min(salary)) as '최고임금 - 최저임금' from salaries;

-- 2번문제
select date_format(max(hire_date), '%Y년 %m월 %d일') from employees;

-- 3번문제
select date_format(min(hire_date), '%Y년 %m월 %d일') from employees;

-- 4번문제
select floor(avg(salary)) as '평균연봉' from salaries where to_date > now();

-- 5번문제
select max(salary) as '최고연봉', min(salary) as '최저연봉' from salaries where to_date > now();

-- 6번문제
select 2019 - cast(date_format(min(birth_date),'%Y') as char) as '최고연장자', 2019 - cast(date_format(max(birth_date),'%Y') as char) as '최저연장자' from employees;
