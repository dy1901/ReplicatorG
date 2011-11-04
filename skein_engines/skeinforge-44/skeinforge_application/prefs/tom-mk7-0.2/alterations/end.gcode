(**** Beginning of end.gcode ****)
(**** begin move to cooling position ****)
G1 X0.0 F1000.0       (move to cooling position)
G1 X0.0 Y45.0 F1000.0 (move to cooling position)
G162 Z F800 (home Z axis maximum)
(**** end move to cooling position ****)
(**** begin filament reversal ****)
M108 R50 T0
M102 T0 (Extruder on, reverse)
G04 P100 (Wait t/1000 seconds)
M103 T0 (Extruder off)
M18 (Turn off steppers)
(**** end filament reversal ****)
(**** begin cool for safety ****)
M104 S0 (set extruder temperature)
M109 S0 T0 (set heated-build-platform temperature)
(**** end cool for safety ****)
(**** end of end.gcode ****)
