// Updates the node with internal ID 3 by setting age and height properties
MATCH (n) 
WHERE ID(n) = 3
SET n.age = 24, n.height = 2.02
RETURN n

// Sets the salary property on the PLAYS_FOR relationship for LeBron James
MATCH (lebron {name: "LeBron James"}) - [contract:PLAYS_FOR] -> (:TEAM)
SET contract.salary = 60000000

// Removes the age property from the node with internal ID 3
MATCH (n)
WHERE ID(n) = 3
REMOVE n.age
RETURN n
