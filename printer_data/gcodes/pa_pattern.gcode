
; ### Ellis' Pressure Advance / Linear Advance Calibration Tool ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Wed Mar 08 2023 01:11:26 GMT+0800 (Taipei Standard Time)
; -------------------------------------------
;
; Advanced Mode: false
;
; Printer:
;  - Firmware: klipper
;  - Bed Shape: Rect
;  - Bed Size X: 220 mm
;  - Bed Size Y: 220 mm
;  - Origin Bed Center: false
;  - Travel Speed: 500 mm/s
;  - Nozzle Diameter: 0.4 mm
;  - Filament Diameter: 1.75 mm
;  - Extrusion Multiplier: 1
;
; Retraction / Z Hop:
;  - Retraction Distance: 0.8 mm
;  - Retract Speed: 45 mm/s
;  - Unretract Speed: 45 mm/s
;  - Z Hop Enable: true
;  - Z Hop Height: 0.2mm
;
; First Layer Settings:
;  - First Layer Height: 0.25 mm
;  - First Layer Printing Speed: 30 mm/s
;  - First Layer Fan Speed: 0%
;  - Anchor Option: no_anchor
;
; Print Settings:
;  - Layer Height: 0.25 mm
;  - Print Speed: 150 mm/s
;  - Acceleration: 5000 mm/s^2
;  - Fan Speed: 100%
;
; Pressure Advance Stepping:
;  - PA Start Value: 0
;  - PA End Value: 0.08
;  - PA Increment: 0.005
;
; Start / End G-code:
;  - Hotend Temp: 205C
;  - Bed Temp: 60C
;  - Don't Add G28: false
;  - Don't Add Heating G-Codes: false
;
; Calculated Values:
;  - Print Size X: 82.19 mm
;  - Print Size Y: 53.99 mm
;  - Number of Patterns to Print: 17
;  - PA Values: 0, 0.005, 0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08
;
; Prepare printing
;
G28 ; Home all axes
M190 S60 ; Set & wait for bed temp
M109 S205 ; Set & wait for hotend temp
; PRINT_START ; Start macro
START_PRINT ; Start macro (alternate / official start macro name)
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G92 E0 ; Reset extruder distance
;
;  Begin printing
;
M106 S0 ; Set fan speed
SET_VELOCITY_LIMIT ACCEL=5000 ; Set printing acceleration
G1 E-0.8 F2700 ; Retract
G0 Z5 F30000 ; Z raise
G0 X68.9048 Y83.0068 F30000 ; Move to start position
G0 Z0.25 F30000 ; Move to start layer height
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance to start value
M117 PA 0
G0 Z0.25 F30000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance to start value for numbering
M117 PA 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X70.1848 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X72.1848 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X74.1848 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X74.1848 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X72.1848 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X70.1848 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X70.1848 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X77.3269 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X79.3269 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X81.3269 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X81.3269 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X79.3269 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X77.3269 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X77.3269 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X81.3269 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X80.5769 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X77.3269 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X79.3269 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X81.3269 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X81.3269 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X79.3269 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X77.3269 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X77.3269 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X77.3269 Y133.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X79.3269 Y133.8832 E0.08239 F1800 ; Glyph: 1
G1 X81.3269 Y133.8832 E0.08239 F1800 ; Glyph: 1
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X84.4689 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X86.4689 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X88.4689 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X88.4689 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X86.4689 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X84.4689 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X84.4689 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X88.4689 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X87.7189 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X84.4689 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X86.4689 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X88.4689 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X88.4689 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X86.4689 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X84.4689 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X84.4689 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X84.4689 Y133.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X84.4689 Y135.8832 E0.08239 F1800 ; Glyph: 2
G1 X86.4689 Y135.8832 E0.08239 F1800 ; Glyph: 2
G1 X86.4689 Y133.8832 E0.08239 F1800 ; Glyph: 2
G1 X88.4689 Y133.8832 E0.08239 F1800 ; Glyph: 2
G1 X88.4689 Y135.8832 E0.08239 F1800 ; Glyph: 2
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X91.611 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.611 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X95.611 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X95.611 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X93.611 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X91.611 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X91.611 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X95.611 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X94.861 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X91.611 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.611 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X95.611 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X95.611 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X93.611 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X91.611 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X91.611 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X91.611 Y133.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X91.611 Y135.8832 E0.08239 F1800 ; Glyph: 3
G1 X93.611 Y135.8832 E0.08239 F1800 ; Glyph: 3
G1 X93.611 Y133.8832 E0.08239 F1800 ; Glyph: 3
G0 X93.611 Y135.8832 F30000 ; Move
G1 X95.611 Y135.8832 E0.08239 F1800 ; Glyph: 3
G1 X95.611 Y133.8832 E0.08239 F1800 ; Glyph: 3
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X98.7531 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.7531 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X102.7531 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X102.7531 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X100.7531 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X98.7531 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X98.7531 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X102.7531 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X102.0031 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X98.7531 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.7531 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X102.7531 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X102.7531 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X100.7531 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X98.7531 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X98.7531 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X98.7531 Y135.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.7531 Y135.8832 E0.08239 F1800 ; Glyph: 4
G1 X102.7531 Y135.8832 E0.08239 F1800 ; Glyph: 4
G0 X100.7531 Y135.8832 F30000 ; Move
G1 X100.7531 Y133.8832 E0.08239 F1800 ; Glyph: 4
G1 X98.7531 Y133.8832 E0.08239 F1800 ; Glyph: 4
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X105.8952 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.8952 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X109.8952 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X109.8952 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X107.8952 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X105.8952 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X105.8952 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X109.8952 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X109.1452 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X105.8952 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.8952 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X109.8952 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X109.8952 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X107.8952 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X105.8952 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X105.8952 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X105.8952 Y135.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X105.8952 Y133.8832 E0.08239 F1800 ; Glyph: 5
G1 X107.8952 Y133.8832 E0.08239 F1800 ; Glyph: 5
G1 X107.8952 Y135.8832 E0.08239 F1800 ; Glyph: 5
G1 X109.8952 Y135.8832 E0.08239 F1800 ; Glyph: 5
G1 X109.8952 Y133.8832 E0.08239 F1800 ; Glyph: 5
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X113.0373 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.0373 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X117.0373 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X117.0373 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X115.0373 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X113.0373 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X113.0373 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X117.0373 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X116.2873 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X113.0373 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.0373 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X117.0373 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X117.0373 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X115.0373 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X113.0373 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X113.0373 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X113.0373 Y135.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X113.0373 Y133.8832 E0.08239 F1800 ; Glyph: 6
G1 X115.0373 Y133.8832 E0.08239 F1800 ; Glyph: 6
G1 X117.0373 Y133.8832 E0.08239 F1800 ; Glyph: 6
G1 X117.0373 Y135.8832 E0.08239 F1800 ; Glyph: 6
G1 X115.0373 Y135.8832 E0.08239 F1800 ; Glyph: 6
G1 X115.0373 Y133.8832 E0.08239 F1800 ; Glyph: 6
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X120.1794 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.1794 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X124.1794 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X124.1794 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X122.1794 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X120.1794 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X120.1794 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X124.1794 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X123.4294 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X120.1794 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.1794 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X124.1794 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X124.1794 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X122.1794 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X120.1794 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X120.1794 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X120.1794 Y133.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X120.1794 Y135.8832 E0.08239 F1800 ; Glyph: 7
G1 X122.1794 Y135.8832 E0.08239 F1800 ; Glyph: 7
G1 X124.1794 Y135.8832 E0.08239 F1800 ; Glyph: 7
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X127.3215 Y126.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.3215 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X131.3215 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 X131.3215 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X129.3215 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X127.3215 Y128.8832 E0.08239 F1800 ; Glyph: 0
G1 X127.3215 Y126.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X131.3215 Y129.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X130.5715 Y129.8832 E0.0309 F1800 ; Glyph: .
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X127.3215 Y130.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.3215 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X131.3215 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 X131.3215 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X129.3215 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X127.3215 Y132.8832 E0.08239 F1800 ; Glyph: 0
G1 X127.3215 Y130.8832 E0.08239 F1800 ; Glyph: 0
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X127.3215 Y133.8832 F30000 ; Move
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.3215 Y133.8832 E0.08239 F1800 ; Glyph: 8
G1 X131.3215 Y133.8832 E0.08239 F1800 ; Glyph: 8
G1 X131.3215 Y135.8832 E0.08239 F1800 ; Glyph: 8
G1 X129.3215 Y135.8832 E0.08239 F1800 ; Glyph: 8
G1 X127.3215 Y135.8832 E0.08239 F1800 ; Glyph: 8
G1 X127.3215 Y133.8832 E0.08239 F1800 ; Glyph: 8
G0 X129.3215 Y133.8832 F30000 ; Move
G1 X129.3215 Y135.8832 E0.08239 F1800 ; Glyph: 8
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X71.6242 Y83.0068 F30000 ; Move to pattern start

G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance
M117 PA 0
G1 X92.8374 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X71.6242 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X72.1848 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.398 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X72.1848 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X72.7453 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.9585 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X72.7453 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X75.1953 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 ; Set pressure advance
M117 PA 0.005
G1 X96.4085 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X75.1953 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X75.7558 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X96.969 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X75.7558 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X76.3163 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X97.5295 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X76.3163 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X78.7663 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 ; Set pressure advance
M117 PA 0.01
G1 X99.9795 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X78.7663 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X79.3269 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.5401 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X79.3269 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X79.8874 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X101.1006 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X79.8874 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X82.3374 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 ; Set pressure advance
M117 PA 0.015
G1 X103.5506 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X82.3374 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X82.8979 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.1111 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X82.8979 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X83.4584 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.6716 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X83.4584 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X85.9084 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 ; Set pressure advance
M117 PA 0.02
G1 X107.1216 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X85.9084 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X86.4689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.6821 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X86.4689 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X87.0295 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X108.2427 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X87.0295 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X89.4795 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 ; Set pressure advance
M117 PA 0.025
G1 X110.6927 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X89.4795 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X90.04 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.2532 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X90.04 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X90.6005 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.8137 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X90.6005 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X93.0505 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 ; Set pressure advance
M117 PA 0.03
G1 X114.2637 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X93.0505 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X93.611 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X114.8242 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X93.611 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X94.1716 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.3848 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X94.1716 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X96.6216 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 ; Set pressure advance
M117 PA 0.035
G1 X117.8348 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X96.6216 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X97.1821 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.3953 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X97.1821 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X97.7426 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.9558 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X97.7426 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X100.1926 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 ; Set pressure advance
M117 PA 0.04
G1 X121.4058 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X100.1926 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X100.7531 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X121.9663 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X100.7531 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X101.3137 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.5269 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X101.3137 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X103.7637 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 ; Set pressure advance
M117 PA 0.045
G1 X124.9769 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X103.7637 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X104.3242 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X125.5374 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X104.3242 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X104.8847 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X126.0979 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X104.8847 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X107.3347 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; Set pressure advance
M117 PA 0.05
G1 X128.5479 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X107.3347 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X107.8952 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.1084 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X107.8952 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X108.4557 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.6689 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X108.4557 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X110.9057 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; Set pressure advance
M117 PA 0.055
G1 X132.1189 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X110.9057 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X111.4663 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X132.6795 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X111.4663 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X112.0268 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X133.24 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X112.0268 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X114.4768 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; Set pressure advance
M117 PA 0.06
G1 X135.69 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X114.4768 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X115.0373 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.2505 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X115.0373 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X115.5978 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.811 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X115.5978 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X118.0478 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; Set pressure advance
M117 PA 0.065
G1 X139.261 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X118.0478 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X118.6084 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X139.8216 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X118.6084 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X119.1689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X140.3821 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X119.1689 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X121.6189 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; Set pressure advance
M117 PA 0.07
G1 X142.8321 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X121.6189 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X122.1794 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.3926 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X122.1794 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X122.7399 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.9531 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X122.7399 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X125.1899 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X146.4031 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X125.1899 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X125.7504 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X146.9637 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X125.7504 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X126.311 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X147.5242 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X126.311 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X128.761 Y83.0068 F30000 ; Move to next pattern
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X149.9742 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X128.761 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X129.3215 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X150.5347 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X129.3215 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X129.882 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X151.0952 Y104.22 E1.23587 F1800 ; Print pattern wall
G1 X129.882 Y125.4332 E1.23587 F1800 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.45 F30000 ; Z hop
G0 X71.6242 Y83.0068 F30000 ; Move back to start position
G1 Z0.25 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
M106 S255 ; Set fan speed
G0 Z0.5 F30000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance
M117 PA 0
G1 X92.8374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X71.6242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X72.1848 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.398 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.1848 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X72.7453 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.9585 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.7453 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X75.1953 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 ; Set pressure advance
M117 PA 0.005
G1 X96.4085 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.1953 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X75.7558 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X96.969 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.7558 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X76.3163 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X97.5295 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X76.3163 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X78.7663 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 ; Set pressure advance
M117 PA 0.01
G1 X99.9795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X78.7663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X79.3269 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.5401 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.3269 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X79.8874 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X101.1006 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.8874 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X82.3374 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 ; Set pressure advance
M117 PA 0.015
G1 X103.5506 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.3374 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X82.8979 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.1111 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.8979 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X83.4584 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.6716 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X83.4584 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X85.9084 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 ; Set pressure advance
M117 PA 0.02
G1 X107.1216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X85.9084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X86.4689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.6821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X86.4689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X87.0295 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X108.2427 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X87.0295 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X89.4795 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 ; Set pressure advance
M117 PA 0.025
G1 X110.6927 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X89.4795 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X90.04 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.2532 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.04 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X90.6005 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.8137 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.6005 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X93.0505 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 ; Set pressure advance
M117 PA 0.03
G1 X114.2637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.0505 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X93.611 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X114.8242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.611 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X94.1716 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.3848 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X94.1716 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X96.6216 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 ; Set pressure advance
M117 PA 0.035
G1 X117.8348 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X96.6216 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X97.1821 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.3953 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.1821 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X97.7426 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.9558 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.7426 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X100.1926 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 ; Set pressure advance
M117 PA 0.04
G1 X121.4058 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.1926 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X100.7531 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X121.9663 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.7531 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X101.3137 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.5269 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X101.3137 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X103.7637 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 ; Set pressure advance
M117 PA 0.045
G1 X124.9769 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X103.7637 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X104.3242 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X125.5374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.3242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X104.8847 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X126.0979 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.8847 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X107.3347 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; Set pressure advance
M117 PA 0.05
G1 X128.5479 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.3347 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X107.8952 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.1084 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.8952 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X108.4557 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.6689 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X108.4557 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X110.9057 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; Set pressure advance
M117 PA 0.055
G1 X132.1189 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X110.9057 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X111.4663 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X132.6795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X111.4663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X112.0268 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X133.24 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X112.0268 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X114.4768 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; Set pressure advance
M117 PA 0.06
G1 X135.69 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X114.4768 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X115.0373 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.2505 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.0373 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X115.5978 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.811 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.5978 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X118.0478 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; Set pressure advance
M117 PA 0.065
G1 X139.261 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.0478 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X118.6084 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X139.8216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.6084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X119.1689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X140.3821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X119.1689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X121.6189 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; Set pressure advance
M117 PA 0.07
G1 X142.8321 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X121.6189 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X122.1794 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.3926 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.1794 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X122.7399 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.9531 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.7399 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X125.1899 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X146.4031 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.1899 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X125.7504 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X146.9637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.7504 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X126.311 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X147.5242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X126.311 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X128.761 Y83.0068 F30000 ; Move to next pattern
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X149.9742 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X128.761 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X129.3215 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X150.5347 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.3215 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X129.882 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X151.0952 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.882 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.7 F30000 ; Z hop
G0 X71.6242 Y83.0068 F30000 ; Move back to start position
G1 Z0.5 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G0 Z0.75 F30000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance
M117 PA 0
G1 X92.8374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X71.6242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X72.1848 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.398 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.1848 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X72.7453 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.9585 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.7453 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X75.1953 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 ; Set pressure advance
M117 PA 0.005
G1 X96.4085 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.1953 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X75.7558 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X96.969 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.7558 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X76.3163 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X97.5295 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X76.3163 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X78.7663 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 ; Set pressure advance
M117 PA 0.01
G1 X99.9795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X78.7663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X79.3269 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.5401 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.3269 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X79.8874 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X101.1006 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.8874 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X82.3374 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 ; Set pressure advance
M117 PA 0.015
G1 X103.5506 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.3374 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X82.8979 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.1111 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.8979 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X83.4584 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.6716 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X83.4584 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X85.9084 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 ; Set pressure advance
M117 PA 0.02
G1 X107.1216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X85.9084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X86.4689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.6821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X86.4689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X87.0295 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X108.2427 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X87.0295 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X89.4795 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 ; Set pressure advance
M117 PA 0.025
G1 X110.6927 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X89.4795 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X90.04 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.2532 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.04 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X90.6005 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.8137 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.6005 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X93.0505 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 ; Set pressure advance
M117 PA 0.03
G1 X114.2637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.0505 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X93.611 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X114.8242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.611 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X94.1716 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.3848 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X94.1716 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X96.6216 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 ; Set pressure advance
M117 PA 0.035
G1 X117.8348 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X96.6216 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X97.1821 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.3953 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.1821 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X97.7426 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.9558 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.7426 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X100.1926 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 ; Set pressure advance
M117 PA 0.04
G1 X121.4058 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.1926 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X100.7531 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X121.9663 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.7531 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X101.3137 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.5269 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X101.3137 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X103.7637 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 ; Set pressure advance
M117 PA 0.045
G1 X124.9769 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X103.7637 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X104.3242 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X125.5374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.3242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X104.8847 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X126.0979 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.8847 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X107.3347 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; Set pressure advance
M117 PA 0.05
G1 X128.5479 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.3347 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X107.8952 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.1084 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.8952 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X108.4557 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.6689 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X108.4557 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X110.9057 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; Set pressure advance
M117 PA 0.055
G1 X132.1189 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X110.9057 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X111.4663 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X132.6795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X111.4663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X112.0268 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X133.24 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X112.0268 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X114.4768 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; Set pressure advance
M117 PA 0.06
G1 X135.69 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X114.4768 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X115.0373 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.2505 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.0373 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X115.5978 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.811 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.5978 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X118.0478 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; Set pressure advance
M117 PA 0.065
G1 X139.261 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.0478 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X118.6084 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X139.8216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.6084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X119.1689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X140.3821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X119.1689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X121.6189 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; Set pressure advance
M117 PA 0.07
G1 X142.8321 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X121.6189 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X122.1794 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.3926 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.1794 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X122.7399 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.9531 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.7399 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X125.1899 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X146.4031 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.1899 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X125.7504 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X146.9637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.7504 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X126.311 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X147.5242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X126.311 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X128.761 Y83.0068 F30000 ; Move to next pattern
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X149.9742 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X128.761 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X129.3215 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X150.5347 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.3215 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X129.882 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X151.0952 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.882 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z0.95 F30000 ; Z hop
G0 X71.6242 Y83.0068 F30000 ; Move back to start position
G1 Z0.75 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G0 Z1 F30000 ; Move to layer height
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance
M117 PA 0
G1 X92.8374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X71.6242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X72.1848 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.398 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.1848 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X72.7453 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X93.9585 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X72.7453 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X75.1953 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 ; Set pressure advance
M117 PA 0.005
G1 X96.4085 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.1953 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X75.7558 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X96.969 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X75.7558 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X76.3163 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X97.5295 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X76.3163 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X78.7663 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 ; Set pressure advance
M117 PA 0.01
G1 X99.9795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X78.7663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X79.3269 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X100.5401 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.3269 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X79.8874 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X101.1006 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X79.8874 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X82.3374 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 ; Set pressure advance
M117 PA 0.015
G1 X103.5506 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.3374 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X82.8979 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.1111 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X82.8979 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X83.4584 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X104.6716 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X83.4584 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X85.9084 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 ; Set pressure advance
M117 PA 0.02
G1 X107.1216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X85.9084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X86.4689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X107.6821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X86.4689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X87.0295 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X108.2427 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X87.0295 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X89.4795 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 ; Set pressure advance
M117 PA 0.025
G1 X110.6927 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X89.4795 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X90.04 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.2532 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.04 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X90.6005 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X111.8137 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X90.6005 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X93.0505 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 ; Set pressure advance
M117 PA 0.03
G1 X114.2637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.0505 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X93.611 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X114.8242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X93.611 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X94.1716 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X115.3848 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X94.1716 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X96.6216 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 ; Set pressure advance
M117 PA 0.035
G1 X117.8348 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X96.6216 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X97.1821 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.3953 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.1821 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X97.7426 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X118.9558 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X97.7426 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X100.1926 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 ; Set pressure advance
M117 PA 0.04
G1 X121.4058 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.1926 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X100.7531 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X121.9663 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X100.7531 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X101.3137 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X122.5269 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X101.3137 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X103.7637 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 ; Set pressure advance
M117 PA 0.045
G1 X124.9769 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X103.7637 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X104.3242 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X125.5374 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.3242 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X104.8847 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X126.0979 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X104.8847 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X107.3347 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; Set pressure advance
M117 PA 0.05
G1 X128.5479 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.3347 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X107.8952 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.1084 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X107.8952 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X108.4557 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X129.6689 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X108.4557 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X110.9057 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; Set pressure advance
M117 PA 0.055
G1 X132.1189 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X110.9057 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X111.4663 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X132.6795 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X111.4663 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X112.0268 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X133.24 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X112.0268 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X114.4768 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; Set pressure advance
M117 PA 0.06
G1 X135.69 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X114.4768 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X115.0373 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.2505 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.0373 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X115.5978 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X136.811 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X115.5978 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X118.0478 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; Set pressure advance
M117 PA 0.065
G1 X139.261 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.0478 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X118.6084 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X139.8216 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X118.6084 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X119.1689 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X140.3821 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X119.1689 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X121.6189 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; Set pressure advance
M117 PA 0.07
G1 X142.8321 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X121.6189 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X122.1794 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.3926 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.1794 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X122.7399 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X143.9531 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X122.7399 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X125.1899 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; Set pressure advance
M117 PA 0.075
G1 X146.4031 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.1899 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X125.7504 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X146.9637 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X125.7504 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X126.311 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X147.5242 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X126.311 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X128.761 Y83.0068 F30000 ; Move to next pattern
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; Set pressure advance
M117 PA 0.08
G1 X149.9742 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X128.761 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X129.3215 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X150.5347 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.3215 Y125.4332 E1.23587 F9000 ; Print pattern wall
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 X129.882 Y83.0068 F30000 ; Move to start next pattern wall
G1 Z1 F30000 ; Z hop return
G1 E0.8 F2700 ; Un-retract
G1 X151.0952 Y104.22 E1.23587 F9000 ; Print pattern wall
G1 X129.882 Y125.4332 E1.23587 F9000 ; Print pattern wall
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set pressure advance back to start value
M117 PA 0
G1 E-0.8 F2700 ; Retract
G1 Z1.2 F30000 ; Z hop
G0 Z6 F30000 ; Z raise
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
M107    ; Turn off fan
;
; End G-code
;
; PRINT_END ; End macro. Change name to match yours
END_PRINT
;
; FINISH
;
