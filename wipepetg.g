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
G1 B22.4 F20000				; Servo Wipe

;M106 S.25

G1 X331 Y187 F10000			; Silicone Wipe 
G1 X331 Y139 F10000	    	; Wipe Location
G92 E0						; Reset Extrusion

M106 P2 S.25				; Fan 25%

G1 E20 F600					; Pebble Purge FAST
G1 E2 F150					; Pebble Purge SLOW

M106 P2 S1					; Cooling On
M106 P2 S.93				; Cooling 93%

G4 P4000					; Dwell for 2.5s
G1 E-0.3 					; Retract (Hemera)
G4 P200

G1 X330 Y137 F100			; Move Away Slowly
G1 X330 Y65 F20000			; Silicone Wipe


M106 R2						; Cooling Off
G92 E0						; Reset Extrusion