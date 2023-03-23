; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Troodon
; Filament: Pla
; Created: Thu Mar 02 2023 17:35:06 GMT+0800 (Taipei Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 205 �C
; Bed Temperature = 95 �C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 220 mm
; Bed Size Y = 220 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 3000 mm/min
; Fast Printing Speed = 12000 mm/min
; Movement Speed = 18000 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 3000 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = undefined
; Starting Value Factor = 0
; Ending Value Factor = 2
; Factor Stepping = 0.2
; Test Line Spacing = 5 mm
; Test Line Length Slow = 40 mm
; Test Line Length Fast = 80 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 178 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M104 S205 ; Set nozzle temperature (no wait)
M190 S95 ; Set bed temperature (wait)
G28 ; Home all axes
G32 ; Tram
G1 Z5 F100 ; Z raise
M109 S205 ; Wait for nozzle temp
M204 S3000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X110 Y110 F18000 ; move to start
G1 Z0.2 F3000 ; Move to layer height
;
; prime nozzle
;
G1 X21 Y72.5 F18000 ; move to start
G1 X21 Y147.5 E7.4835 F1800 ; print line
G1 X21.72 Y147.5 F18000 ; move to start
G1 X21.72 Y72.5 E7.4835 F1800 ; print line
G1 E-1 F1800 ; retract
;
; print anchor frame
;
G1 X31 Y69.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X31 Y125.5 E2.4586 F3000 ; print line
G1 X31.48 Y125.5 F18000 ; move to start
G1 X31.48 Y69.5 E2.4586 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X191 Y69.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X191 Y125.5 E2.4586 F3000 ; print line
G1 X190.52 Y125.5 F18000 ; move to start
G1 X190.52 Y69.5 E2.4586 F3000 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X31 Y72.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0 ; set K-factor
M117 K0 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y72.5 E1.5965 F3000 ; print line
G1 X151 Y72.5 E3.193 F12000 ; print line
G1 X191 Y72.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y77.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.2 ; set K-factor
M117 K0.2 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y77.5 E1.5965 F3000 ; print line
G1 X151 Y77.5 E3.193 F12000 ; print line
G1 X191 Y77.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y82.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.4 ; set K-factor
M117 K0.4 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y82.5 E1.5965 F3000 ; print line
G1 X151 Y82.5 E3.193 F12000 ; print line
G1 X191 Y82.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y87.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.6 ; set K-factor
M117 K0.6 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y87.5 E1.5965 F3000 ; print line
G1 X151 Y87.5 E3.193 F12000 ; print line
G1 X191 Y87.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y92.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.8 ; set K-factor
M117 K0.8 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y92.5 E1.5965 F3000 ; print line
G1 X151 Y92.5 E3.193 F12000 ; print line
G1 X191 Y92.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y97.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=1 ; set K-factor
M117 K1 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y97.5 E1.5965 F3000 ; print line
G1 X151 Y97.5 E3.193 F12000 ; print line
G1 X191 Y97.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y102.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=1.2 ; set K-factor
M117 K1.2 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y102.5 E1.5965 F3000 ; print line
G1 X151 Y102.5 E3.193 F12000 ; print line
G1 X191 Y102.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y107.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=1.4 ; set K-factor
M117 K1.4 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y107.5 E1.5965 F3000 ; print line
G1 X151 Y107.5 E3.193 F12000 ; print line
G1 X191 Y107.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y112.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=1.6 ; set K-factor
M117 K1.6 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y112.5 E1.5965 F3000 ; print line
G1 X151 Y112.5 E3.193 F12000 ; print line
G1 X191 Y112.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y117.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=1.8 ; set K-factor
M117 K1.8 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y117.5 E1.5965 F3000 ; print line
G1 X151 Y117.5 E3.193 F12000 ; print line
G1 X191 Y117.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y122.5 F18000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=2 ; set K-factor
M117 K2 ; 
G1 E1 F1800 ; un-retract
G1 X71 Y122.5 E1.5965 F3000 ; print line
G1 X151 Y122.5 E3.193 F12000 ; print line
G1 X191 Y122.5 E1.5965 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X31 Y127.5 F18000 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set K-factor 0
M204 S500 ; Set K-factor 0
G1 X71 Y127.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X71 Y147.5 E0.7982 F3000 ; print line
G1 E-1 F1800 ; retract
G1 X151 Y127.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X151 Y147.5 E0.7982 F3000 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
;
; print K-values
;
G1 X193 Y70.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X195 Y70.5 E0.0798 F3000 ; 0
G1 X195 Y72.5 E0.0798 F3000 ; 0
G1 X195 Y74.5 E0.0798 F3000 ; 0
G1 X193 Y74.5 E0.0798 F3000 ; 0
G1 X193 Y72.5 E0.0798 F3000 ; 0
G1 X193 Y70.5 E0.0798 F3000 ; 0
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
G1 X193 Y80.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X195 Y80.5 E0.0798 F3000 ; 0
G1 X195 Y82.5 E0.0798 F3000 ; 0
G1 X195 Y84.5 E0.0798 F3000 ; 0
G1 X193 Y84.5 E0.0798 F3000 ; 0
G1 X193 Y82.5 E0.0798 F3000 ; 0
G1 X193 Y80.5 E0.0798 F3000 ; 0
G1 E-1 F1800 ; retract
G1 X196 Y80.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X196 Y80.9 E0.016 F3000 ; dot
G1 E-1 F1800 ; retract
G1 X197 Y80.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X197 Y82.5 F18000 ; move to start
G1 X197 Y84.5 F18000 ; move to start
G1 X197 Y82.5 E0.0798 F3000 ; 4
G1 X199 Y82.5 E0.0798 F3000 ; 4
G1 X199 Y84.5 F18000 ; move to start
G1 X199 Y82.5 E0.0798 F3000 ; 4
G1 X199 Y80.5 E0.0798 F3000 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
G1 X193 Y90.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X195 Y90.5 E0.0798 F3000 ; 0
G1 X195 Y92.5 E0.0798 F3000 ; 0
G1 X195 Y94.5 E0.0798 F3000 ; 0
G1 X193 Y94.5 E0.0798 F3000 ; 0
G1 X193 Y92.5 E0.0798 F3000 ; 0
G1 X193 Y90.5 E0.0798 F3000 ; 0
G1 E-1 F1800 ; retract
G1 X196 Y90.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X196 Y90.9 E0.016 F3000 ; dot
G1 E-1 F1800 ; retract
G1 X197 Y90.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X197 Y92.5 F18000 ; move to start
G1 X199 Y92.5 E0.0798 F3000 ; 8
G1 X199 Y90.5 E0.0798 F3000 ; 8
G1 X197 Y90.5 E0.0798 F3000 ; 8
G1 X197 Y92.5 E0.0798 F3000 ; 8
G1 X197 Y94.5 E0.0798 F3000 ; 8
G1 X199 Y94.5 E0.0798 F3000 ; 8
G1 X199 Y92.5 E0.0798 F3000 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
G1 X193 Y100.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X193 Y102.5 E0.0798 F3000 ; 1
G1 X193 Y104.5 E0.0798 F3000 ; 1
G1 E-1 F1800 ; retract
G1 X194 Y100.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X194 Y100.9 E0.016 F3000 ; dot
G1 E-1 F1800 ; retract
G1 X195 Y100.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X195 Y102.5 F18000 ; move to start
G1 X195 Y104.5 F18000 ; move to start
G1 X197 Y104.5 E0.0798 F3000 ; 2
G1 X197 Y102.5 E0.0798 F3000 ; 2
G1 X195 Y102.5 E0.0798 F3000 ; 2
G1 X195 Y100.5 E0.0798 F3000 ; 2
G1 X197 Y100.5 E0.0798 F3000 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
G1 X193 Y110.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X193 Y112.5 E0.0798 F3000 ; 1
G1 X193 Y114.5 E0.0798 F3000 ; 1
G1 E-1 F1800 ; retract
G1 X194 Y110.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X194 Y110.9 E0.016 F3000 ; dot
G1 E-1 F1800 ; retract
G1 X195 Y110.5 F18000 ; move to start
G1 E1 F1800 ; un-retract
G1 X195 Y112.5 F18000 ; move to start
G1 X197 Y112.5 E0.0798 F3000 ; 6
G1 X197 Y110.5 E0.0798 F3000 ; 6
G1 X195 Y110.5 E0.0798 F3000 ; 6
G1 X195 Y112.5 E0.0798 F3000 ; 6
G1 X195 Y114.5 E0.0798 F3000 ; 6
G1 X197 Y114.5 E0.0798 F3000 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
G1 X193 Y120.5 F18000 ; move to start
G1 Z0.2 F3000 ; zHop
G1 E1 F1800 ; un-retract
G1 X193 Y122.5 F18000 ; move to start
G1 X193 Y124.5 F18000 ; move to start
G1 X195 Y124.5 E0.0798 F3000 ; 2
G1 X195 Y122.5 E0.0798 F3000 ; 2
G1 X193 Y122.5 E0.0798 F3000 ; 2
G1 X193 Y120.5 E0.0798 F3000 ; 2
G1 X195 Y120.5 E0.0798 F3000 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F3000 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X220 Y220 F18000 ; Move away from the print
M84 ; Disable motors
;