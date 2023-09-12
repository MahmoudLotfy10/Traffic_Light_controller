# Traffic_Light_controller
Design for traffic light controller
#Details of desig
traffic light controller for the intersection of street "A" and street "B. Each
street has traffic sensors, which detect the presence of vehices approaching or
stopped at the intersection. Sa=l means a vehicle is approaching on street "A,"
and Sb =l means a vehicle is approaching on street B." Street "A" is a main street
and has a green light until a car approaches on "B. Then the lights change, and "B"
has a green light. At the end of 50 seconds, the lights change back unless there is a
car on street B and none on "A, in which case the "B cycle is extended for 10
additional seconds. If cars continue to arrive on street "B and no car appears on
street "A*, "B" continues to have a green light. When "A" is green, it remains green at
least 60 seconds, and then the lights change only when a car approaches on "B.
The controller has 6 outputs (Ga, Ya, and Ra) drive the green, yellow and red lights on
street "A", and (Gb, Yb, and Rb) drive the coresponding lights on street B".
