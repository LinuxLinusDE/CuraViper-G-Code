M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M82 ;set extruder to absolute mode
M107 ;start with the fan off
M104 S160; start warming extruder to 160
G28 ; Home all axes
M109 S{material_print_temperature} T0 ; wait for nozzleto reach temp
M355 S1; led on
;Start Abstreifen
G1 Z5.0 F2400 ; auf 5 mm hoch
G92 E0 ; extrudierte Laenge zuruecksetzen
G1 F200 E25 ; ca. 25mm extrudieren
G92 E0 ; extrudierte Laenge zuruecksetzen
G1 X5 Y0 F4000 ; move to X5 Y0
G1 Z0.1 F2400 ; auf 0.1mm gehen
G1 Y25 F100 ; langsam nach hinten, damit es anhaftet
G1 Y45 F7200 ; dann 2cm ganz schnell nach hinten, damit er es verliert
G1 Z2.0 ; dann wieder ein Stueck hoch
; Ende Abstreifen
G1 F{speed_travel}
M117 Printing...
G5
