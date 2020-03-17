; homeall.g
; called to home all axes
;
G91                     ; relative positioning
G1 S2 X1.2 Y1.2 Z1.2    ; Move all axis 0.2 mm, clear stall status
G29 S2                   ; to clear the height map before Z homing
M561                     ;reset bed compensation

; x and y Sensor less homing
M400                    ; make sure everything has stopped before we make changes
M913 X60 Y80            ; XY motors % current
M915 X S3 Y S3 R0 F0    ; set X and Y sensitivity, do nothing when stall, unfiltered
M574 X1 Y1 S3           ; set endstops to use motor stall
G1 S2 Z5 F1200          ; lift Z
G1 S1 X-330 Y-330 F5000 ; move X and Y back, stopping at the end stop

M400                    ; make sure everything has stopped
M913 X100 Y100          ; XY motors to 100% current
G90                     ; back to absolute mode
G1 X160 Y160 S2 F6000   ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed
M915 X S30 Y S30 R2 F1  ; set X and Y sensitivity high, pause when stall, filtered


