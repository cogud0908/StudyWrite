-- Mysql 문자열 함수alter
select ucase('Seoul'), upper('seoul');
select lcase('Seoul'), lower('SEOUL');

-- substring(문자열, 시작 index, 시작으로 부터 몇칸)
select substring(first_name, 4, 2) from employees;

select concat(first_name,' ',last_name) as name, gender, hire_date from employees where substring(hire_date, 1, 4) = '1989';


select lpad('hi', 10, '*');
select rpad('hi', 10, '*');

-- casting
select emp_no, lpad(cast(salary as char), 10, ' ') from salaries;

-- trim (공백 제거)
select concat('---',ltrim('  hello        '),'---');
select concat('---',rtrim('    hello       '),'---');
select concat('---',trim('    hello       '),'---');

-- trim (특정 문자 제거)
select trim(both 'x' from 'xxxhixxx'); -- 전부
select trim(leading 'x' from 'xxxhixxx'); -- 좌
select trim(trailing 'x' from 'xxxhixxx'); -- 우


