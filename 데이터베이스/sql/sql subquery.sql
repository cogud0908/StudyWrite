-- subquery

/*
	where ____,____ = (____, _____ 
             여기    =      여기 <--- 같아야됨


						)
                        
	단일행 연산자(갯수 매칭) (  =,  >,  >=,  <, <=, <> )
	복수행 연산자(여러개) ( IN, ANY, ALL, NOT IN )  
	

*/

select a.emp_no, c.dept_no
from employees a, dept_emp c
where a.emp_no = c.emp_no
and concat(a.first_name, ' ',a.last_name) = 'Fai Bale'
and c.to_date > now();

select *
from employees a, dept_emp b
where a.emp_no = b.emp_no
and b.dept_no = 'd008'
and b.to_date > now();


select a.emp_no, a.first_name
from employees a, dept_emp b
where a.emp_no = b.emp_no
and b.dept_no = (select b.dept_no
				from employees a, dept_emp b
				where a.emp_no - b.emp_no
                and concat(a.first_name, ' ',a.last_name) = 'Fai Bale'
				and c.to_date > now());
                
                
-- 현재 전체사원의 평균 연봉보다 적은 급여를 받는 사원의  이름, 급여를 나타내세요.
select first_name, b.salary
from employees a, salaries b
where a.emp_no = b.emp_no
and b.to_date > now()
and salary < (select avg(salary) 
		      from salaries 
			  where to_date > now())
order by b.salary desc;

-- 현재 가장적은 평균 급여를 받고 있는 직책에 대해서 평균 급여를 구하세요 
select title, round(min(avg_salary))
from (select title, avg(salary) as avg_salary
	  from salaries a, titles b
	  where a.emp_no = b.emp_no
	  and a.to_date > now()
	  and b.to_date > now()
	  group by title) a;



-- subquery
-- 당닝ㄹ행인 경우
-- <, >, =, !=, <=, >=
SELECT 
    a.emp_no,
    CONCAT(a.first_name, ' ', a.last_name) AS name,
    b.dept_name
FROM
    employees a,
    departments b,
    dept_emp c
WHERE
    a.emp_no = c.emp_no
        AND c.dept_no = b.dept_no
        AND c.to_date = '9999-01-01'
        AND c.dept_no = (SELECT c.dept_no
						FROM
							employees a,
							dept_emp c
						WHERE
							a.emp_no = c.emp_no
								AND c.to_date = '9999-01-01'
								AND CONCAT(a.first_name, ' ', a.last_name) = 'Fai Bale');
                                
                                
select title, avg(salary)
from salaries a, titles b, employees c
where c.emp_no = a.emp_no
and c.emp_no = b.emp_no
and a.to_date > now()
and b.to_date > now()
group by title
order by avg(salary)
limit 0, 1;

select min(avg_salary)
from (select title, avg(salary) as avg_salary
from salaries a, titles b, employees c
where c.emp_no = a.emp_no
and c.emp_no = b.emp_no
and a.to_date > now()
and b.to_date > now()
group by title) b;

-- 다중행 연산자
-- in, any, all
-- =any(in 완전 동일), >any, <any, <>any, <= any
SELECT emp_no from salaries where to_date > now() and;


select concat(first_name, ' ',last_name), b.salary
from employees a, salaries b
where a.emp_no = b.emp_no
and b.to_date > now()
and (a.emp_no, b.salary) =any (select emp_no, salary from salaries where to_date > now() and salary > 50000);

select concat(a.first_name, ' ',a.last_name) as 'name', b.salary
from employees a,
(select emp_no, salary
from salaries
where to_date > now()
and salary > 50000) b
where a.emp_no = b.emp_no;







				
