# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
on e.empId = b.empId
where b.bonus < 1000 OR b.bonus is null