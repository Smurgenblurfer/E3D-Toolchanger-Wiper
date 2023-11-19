G91                          
G1 Z3 F5000                 ; Drop Z 3mm for Safety
G90              

G1 B3 F20000				; Servo Wipe
G1 B10 F20000				; Servo Wipe
G1 B3 F20000				; Servo Wipe
G1 B10 F20000				; Servo Wipe
G1 B3 F20000				; Servo Wipe
G1 B10 F20000				; Servo Wipe
G1 B3 F20000				; Servo Wipe
G1 B10 F20000				; Servo Wipe
G1 B22.4 F15000				; Wipe location

M106 P2 S.25				; Fan 25%

G1 X330 Y187 F10000			; Silicone Wipe
G1 X330 Y139 F10000			; Wipe Location
G92 E0						; Reset Extrusion

G1 E2 F100					; Pebble Purge
G1 E22 F400					; Pebble Purge

M106 P2 S1					; Cooling On
M106 P2 S.93				; Cooling 93%

G4 P2500					; Dwell 2.5s
G1 E-2 						; Retract (Hemera)
G4 P200						; Dwell 0.2s

G1 X330 Y137 F100			; Move Away Slowly
G1 X330 Y65 F20000			; Silicone Wipe

M106 R2						; Cooling Off
G92 E0						; Reset Extrusion