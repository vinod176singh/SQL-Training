Flight table have source destination dept_time,arrival_time.
Write a query to give all flight between mumbai to delhion givenn date.

SELECT *
FROM Flight
WHERE source = 'Mumbai' AND destination = 'Delhi' AND CAST(dept_time AS DATE) = '2023-06-05';


---write a code to add indirect flight information also
SELECT f1.*
FROM Flight f1
JOIN Flight f2 ON f1.destination = f2.source
WHERE f1.source = 'Mumbai' 
  AND f2.destination = 'Delhi' 
  AND CAST(f1.dept_time AS DATE) = '2023-06-05'
  AND f1.dept_time >= '2023-06-05 00:00:00' -- Departure time constraint
  AND f1.dept_time <= '2023-06-05 23:59:59'
  AND f2.arrival_time >= '2023-06-06 00:00:00' -- Arrival time constraint
  AND f2.arrival_time <= '2023-06-06 23:59:59'
  AND f1.available_seats >= 1 -- Available seats constraint
  AND f2.dept_time >= f1.arrival_time; -- Departure of second flight constraint
