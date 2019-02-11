-- 날짜 함수
select curdate(), current_date; -- 현재 날짜
select curtime(), current_time; -- 현재 시간

select now(), sysdate(); -- 현재 날짜+시간

select emp_no, now() from employees; -- 처음시작시간 그대로 출력
select emp_no, sysdate() from employees; -- 쿼리 실행 기준 시간 출력

select first_name, date_format(hire_date, '%Y년 %m월 %d일 %h:%i:%s') from employees;

-- 각 직원들에 대해 직원의 이름과 근무 개월수
select first_name, concat(cast(period_diff(date_format(curdate(),'%Y%m'),date_format(hire_date, '%Y%m')) as char),'개월') from employees;

-- 입사 후, 6개월 뒤에 정규직으로 발령이 된다
-- 발령날은 언제?
select first_name, hire_date, date_add(hire_date, interval 6 month) from employees;

select date_add(cast(date_format('19940701','%Y%m%d') as DATE), interval 100 day);


