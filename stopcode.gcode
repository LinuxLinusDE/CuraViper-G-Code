M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M107
G91 ;relative positioning
G1 E-5 F6000 ;retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+70 E-5 ;X-20 Y-20 {travel_xy_speed} ;move Z up a bit and retract filament even more
G28 X0 ;Y0 ;move X/Y to min endstops, so the head is out of the way
G90 ;
G1 Y150 F2000;
G4 P3000; warten
M84 ;steppers off
M355 S0; led off
G90
