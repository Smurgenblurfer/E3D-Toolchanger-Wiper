G91 							; use relative positioning

G1 H2 B0.5  F10000				; energise motors to ensure they are not stalled

M400 							; make sure everything has stopped before we change the motor currents
M913 B25 						; drop motor currents to 25%
M915 H200 B S3 R0 F0 			; set X and Y to sensitivity 3, do nothing when stall, unfiltered

G1 H1 B-30 F1000 				; move, stopping at the endstop
G92 B0
G90
G1 H1 B22.4 F1000 				; move away from end

M400 							; make sure everything has stopped before we reset the motor currents
M913 B80						; motor currents back to 80%


