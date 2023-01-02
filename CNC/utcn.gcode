(Scribbled version of C:\Users\csaba\AppData\Local\Temp\ink_ext_XXXXXX.svg4O1CY1 @ 3500.00)
( unicorn.py --tab="pen_reg" --pen-up-angle=50 --pen-down-angle=30 --start-delay=150 --stop-delay=150 --xy-feedrate=3500 --z-feedrate=150 --z-height=0 --finished-height=0 --register-pen=true --x-home=0 --y-home=0 --num-copies=1 --continuous=false --pause-on-layer-change=false C:\Users\csaba\AppData\Local\Temp\ink_ext_XXXXXX.svg4O1CY1 )
G21 (metric ftw)
G90 (absolute mode)
G92 X0.00 Y0.00 Z0.00 (you are here)

M300 S30 (pen down)
G4 P150 (wait 150ms)
M300 S50 (pen up)
G4 P150 (wait 150ms)
M18 (disengage drives)
M01 (Was registration test successful?)
M17 (engage drives if YES, and continue)

(Polyline consisting of 4 segments.)
G1 X14.11 Y-24.46 F3500.00
M300 S30.00 (pen down)
G4 P150 (wait 150ms)
G1 X11.26 Y-23.79 F3500.00
G1 X10.68 Y-23.57 F3500.00
G1 X10.63 Y-14.77 F3500.00
G1 X10.44 Y-5.69 F3500.00
G1 X9.53 Y-4.82 F3500.00
G1 X6.02 Y-4.72 F3500.00
G1 X2.76 Y-4.72 F3500.00
G1 X2.76 Y-4.13 F3500.00
G1 X2.76 Y-3.53 F3500.00
G1 X8.49 Y-3.53 F3500.00
G1 X14.01 Y-3.60 F3500.00
G1 X14.73 Y-3.77 F3500.00
G1 X14.92 Y-4.10 F3500.00
G1 X14.91 Y-24.55 F3500.00
G1 X14.11 Y-24.46 F3500.00
G1 X14.11 Y-24.46 F3500.00
M300 S50.00 (pen up)
G4 P150 (wait 150ms)

(Polyline consisting of 4 segments.)
G1 X16.45 Y-14.35 F3500.00
M300 S30.00 (pen down)
G4 P150 (wait 150ms)
G1 X16.55 Y-3.97 F3500.00
G1 X16.79 Y-3.72 F3500.00
G1 X17.56 Y-3.59 F3500.00
G1 X22.98 Y-3.53 F3500.00
G1 X28.71 Y-3.53 F3500.00
G1 X28.71 Y-4.13 F3500.00
G1 X28.71 Y-4.72 F3500.00
G1 X25.42 Y-4.73 F3500.00
G1 X21.76 Y-4.90 F3500.00
G1 X20.90 Y-5.88 F3500.00
G1 X20.74 Y-14.87 F3500.00
G1 X20.70 Y-23.60 F3500.00
G1 X19.99 Y-23.85 F3500.00
G1 X17.01 Y-24.50 F3500.00
G1 X16.45 Y-24.54 F3500.00
G1 X16.45 Y-14.35 F3500.00
G1 X16.45 Y-14.35 F3500.00
M300 S50.00 (pen up)
G4 P150 (wait 150ms)

(Polyline consisting of 4 segments.)
G1 X8.62 Y-22.60 F3500.00
M300 S30.00 (pen down)
G4 P150 (wait 150ms)
G1 X6.88 Y-21.43 F3500.00
G1 X5.40 Y-19.98 F3500.00
G1 X4.23 Y-18.32 F3500.00
G1 X3.42 Y-16.51 F3500.00
G1 X2.91 Y-14.29 F3500.00
G1 X2.78 Y-10.17 F3500.00
G1 X2.74 Y-6.30 F3500.00
G1 X3.06 Y-6.23 F3500.00
G1 X5.77 Y-6.21 F3500.00
G1 X8.53 Y-6.43 F3500.00
G1 X8.94 Y-6.70 F3500.00
G1 X9.13 Y-7.59 F3500.00
G1 X9.18 Y-15.08 F3500.00
G1 X9.16 Y-22.90 F3500.00
G1 X8.62 Y-22.60 F3500.00
G1 X8.62 Y-22.60 F3500.00
M300 S50.00 (pen up)
G4 P150 (wait 150ms)

(Polyline consisting of 4 segments.)
G1 X22.27 Y-15.04 F3500.00
M300 S30.00 (pen down)
G4 P150 (wait 150ms)
G1 X22.38 Y-6.93 F3500.00
G1 X22.79 Y-6.49 F3500.00
G1 X25.91 Y-6.28 F3500.00
G1 X28.73 Y-6.28 F3500.00
G1 X28.68 Y-10.03 F3500.00
G1 X28.49 Y-14.55 F3500.00
G1 X27.77 Y-17.10 F3500.00
G1 X26.59 Y-19.26 F3500.00
G1 X24.94 Y-21.09 F3500.00
G1 X22.78 Y-22.62 F3500.00
G1 X22.27 Y-22.92 F3500.00
G1 X22.27 Y-15.04 F3500.00
G1 X22.27 Y-15.04 F3500.00
M300 S50.00 (pen up)
G4 P150 (wait 150ms)


(end of print job)
M300 S50.00 (pen up)
G4 P150 (wait 150ms)
M300 S255 (turn off servo)
G1 X0 Y0 F3500.00
G1 Z0.00 F150.00 (go up to finished level)
G1 X0.00 Y0.00 F3500.00 (go home)
M18 (drives off)
