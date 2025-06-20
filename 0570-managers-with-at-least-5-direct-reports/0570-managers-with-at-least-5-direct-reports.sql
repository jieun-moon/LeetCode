# Write your MySQL query statement below
SELECT name
FROM Employee e
WHERE id IN (
    SELECT managerID
    FROM Employee
    WHERE managerID IS NOT NULL
    GROUP BY managerID
    HAVING count(*) >= 5
    )

