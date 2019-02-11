/* 연습문제1장
-- 1번 문제
select first_name, last_name from employees where emp_no = 10944;

-- 2번 문제
select  concat(first_name,' ',last_name) as '이름', gender as '성별', hire_date as '입사일' from employees
order by hire_date;

-- 3번 문제
select count(if(gender = 'F', gender, null)) as '여자', count(if(gender = 'M',gender,null)) as '남자' from employees;

-- 4번 문제
select distinct count(*) from salaries
where to_date > now(); 

-- 5번 문제
select distinct count(*) from departments;

-- 6번 문제
select distinct count(dept_no) from dept_manager
where to_date > now();

-- 7번 문제
select dept_name from departments order by length(dept_name) desc;

-- 8번 문제
select count(*)
from employees e join salaries s
on e.emp_no = s.emp_no
where salary >= 120000 and to_date > now();

-- 9번 문제
select distinct title from titles order by length(title) desc;

-- 10번 문제
select count(*) from
employees join titles
on employees.emp_no = titles.emp_no
where to_date >= now() and title = 'Engineer';

-- 11번 문
select first_name, from_date
from titles t join employees e
on t.emp_no = e.emp_no
where e.emp_no = 13250;
*/



-- concat
select emp_no as '사원번호', concat(first_name,' ',last_name) as '이름'  from employees;

-- distinct
select title, count(*) from titles
group by title;

-- order by
select emp_no as '사원번호', concat(first_name,' ',last_name) as '이름', hire_date  from employees
order by hire_date desc;

-- % 활용
select * from salaries /*'2000-12-31' < from_date and from_date < '2002-12-31'*/
where from_date like '2001-%'
order by salary desc;

-- in : 같이 포함 (or 대신)
select *
from dept_emp
where dept_no in ('d005', 'd009');


select  concat(first_name,' ',last_name) as '이름', gender as '성별', hire_date as '입사일' from employees
order by hire_date;


select concat(first_name, ' ',last_name) like '%E%'
from employees;



