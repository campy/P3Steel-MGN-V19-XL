; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool on Tue Oct 23 2018 00:51:50 GMT+0200 (hora de verano de Europa central)
G91               ; relative positioning
G1 Z5 F6000 S2    ; lift Z relative to current position
G90               ; absolute positioning
G1 X15 Y35 F6000 ; go to first probe point
G30               ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 S2 Z5 F100    ; lift Z relative to current position
;G90              ; absolute positioning