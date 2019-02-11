-- 집계 함수(통계)alter
select from_date, avg(salary), sum(salary) from salaries
where emp_no = 10060;

select emp_no, avg(salary), sum(salary) from salaries
group by emp_no;

select *
from(
select max(salary) as '최저임금', min(salary) as '최저임금' from salaries where emp_no = 10060) alias;

select emp_no, count(*) from titles
group by emp_no;

select emp_no, AVG(salary) from salaries
group by emp_no
having avg(salary) >= 50000;



