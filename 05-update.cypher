MATCH (n) 
WHERE ID(n) = 3
SET n.age = 24, n.height = 2.02
RETURN n

MATCH (n)
WHERE ID(n) = 3
SET n:REF
RETURN n

MATCH (lebron {name: "LeBron James"}) - [contract:PLAYS_FOR] -> (:TEAM)
SET contract.salary = 60000000

MATCH (n)
WHERE ID(n) = 3
REMOVE n:REF
RETURN n

MATCH (n)
WHERE ID(n) = 3
REMOVE n.age
RETURN n
