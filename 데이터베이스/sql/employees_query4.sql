-- 문제1. 현재 평균 연봉보다 많은 월급을 받는 직원은 몇 명이나 있습니까?
select count(*)
from (select avg(salary) as avg_salary
		from salaries
		) a, salaries
where salary > avg_salary
and to_date > now();

-- 문제2. 현재, 각 부서별로 최고의 급여를 받는 사원의 사번, 이름, 부서 연봉을 조회하세요. 단 조회결과는 연봉의 내림차순으로 정렬되어 나타나야 합니다. 
select *
from
(select b.emp_no, concat(first_name, ' ',last_name), dept_name, max(salary) as salary
from salaries a, employees b, dept_emp c, departments d	
where b.emp_no = a.emp_no
and c.dept_no = d.dept_no
and b.emp_no = c.emp_no
and a.to_date > now()
and c.to_date > now()
group by dept_name) a
order by salary;

-- 문제3. 현재, 자신의 부서 평균 급여보다 연봉(salary)이 많은 사원의 사번, 이름과 연봉을 조회하세요 
select distinct a.emp_no, concat(first_name, ' ',last_name), salary
from employees a, salaries b, ( select dept_name,avg(salary) as avg_salary
				from salaries a, employees b, dept_emp c, departments d	
				where b.emp_no = a.emp_no
				and c.dept_no = d.dept_no
				and b.emp_no = c.emp_no
                and a.to_date > now()
				and c.to_date > now()
				group by dept_name) c
where a.emp_no = b.emp_no
and b.to_date > now()
and salary > avg_salary;

-- 문제4. 현재, 사원들의 사번, 이름, 매니저 이름, 부서 이름으로 출력해 보세요.
select emp_no, concat(first_name, ' ',last_name), dept_name
from 


-- 문제5. 현재, 평균연봉이 가장 높은 부서의 사원들의 사번, 이름, 직책, 연봉을 조회하고 연봉 순으로 출력하세요.
select a.emp_no, concat(first_name, ' ',last_name), title, salary
from employees a, titles b, salaries c, dept_emp d, departments e
where a.emp_no = b.emp_no
and a.emp_no = c.emp_no
and a.emp_no = d.emp_no
and d.dept_no = e.dept_no
and dept_name = ( select dept_name 
					from (select )
)
order by salary desc;



-- 7번
select title
from (select title, avg(salary) as avg_salary
		from employees a, titles b, salaries c
        where a.emp_no = b.emp_no
        and a.emp_no = c.emp_no
        and b.to_date > now()
        and c.to_date > now()
        group by title
        order by avg_salary desc) a
having max(avg_salary);





