-- equijoin(inner join)

-- 현재 근무중인 직원의 이름과 직책을 출력
select * from employees a, titles b
where a.emp_no = b.emp_no -- join 조건
and b.to_date > now(); -- 선택 조건

-- 현재 근무중인 직책이 Senior Engineer인 직원의 이름 출력
select a.emp_no, a.first_name, b.title
from employees a, titles b
where a.emp_no = b.emp_no
and b.to_date > now()
and b.title = 'Senior Engineer';

-- 현재 근무중인 직책이 Senior Engineer인 여자 직원의 이름 출력
select a.emp_no, a.first_name, a.gender, b.title
from employees a, titles b
where a.emp_no = b.emp_no
and b.to_date > now()
and b.title = 'Senior Engineer'
and a.gender = 'F';


-- ANSI/ISO SQL의 JOIN
-- 1. natural join
select a.emp_no, a.first_name, b.title
from employees a natural join titles b
-- form employees a join titles b on a.emp_no = b.emp_no
where b.to_date > now();

-- 2. join ~ using
select a.emp_no, a.first_name, b.title
from employees a join titles b using(emp_no)
where b.to_date > now();

-- 3. join ~ on
select a.emp_no, a.first_name, b.title
from employees a join titles b on a.emp_no = b.emp_no
where b.to_date > now();

select a.emp_no as '사번', concat(a.first_name, ' ', a.last_name) as '이름', c.dept_name '부서'
from employees a, dept_emp b , departments c
where a.emp_no = b.emp_no and b.dept_no = c.dept_no and b.to_date > now()
order by a.first_name;

select a.emp_no as '사번', concat(a.first_name, ' ', a.last_name) as '이름', salary
from employees a, salaries b
where a.emp_no = b.emp_no and b.to_date > now();






