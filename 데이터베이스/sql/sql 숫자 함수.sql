-- 숫자 함수
select abs(10), abs(-10); -- 절대값

select mod(234, 10) , 254 % 10; -- %

select floor(1.23), floor(-1.23); -- 버림

select ceil(3.14), ceiling(3.14), ceil(-3.14), ceiling(-3.14); -- 올림

select round(-1.23), round(-1.58), round(1.23), round(1.58); -- 반올림

select round(1.298,1), round (1.298, 0); -- 반올림

select pow(2, 2), power(2,-2); -- 제곱

select sign(-10), sign(0), sign(100); -- 음수 -1, 0 , 양수 1 출력

select greatest(5, 4, 3, 2, 1); -- 가장 큰 값
select greatest(3.14, 4.26, 5.8);
select greatest('abcd','abcf','be');





