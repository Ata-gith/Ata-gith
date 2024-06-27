set terminal png size 1000,1000 
set output 'current.png'

set lmargin 16
set rmargin 5
set bmargin 6
set tmargin 5


set key spacing 2

set key samplen 2

set key font "1,24"
set key left top
set border 15 lw 4

set yrange [0:30]
set xrange [0:2]

set format y "%.0f"


set ylabel "I (nA)" font ",36" offset -4,0
set xlabel "E (V/{\305})" font ",36" offset 0,-2.7

set xtics 0,0.4,2 font ",25" offset 0,-1
set ytics font ",25" offset 0,0

#1:(($2*1.602/1000000)*1000000000) nano-ampere

plot "static_z7_unhyd.txt" u 1:(($2*1.602/1000000)*1000000000) w l lw 4 lc "blue" title "Dry",\
"static_z7_unhyd.txt" u 1:(($2*1.602/1000000)*1000000000):(($3*1.602/1000000)*1000000000) w yerrorbars lw 5 lc "blue" title "",\
"static_z7__2f.txt" u 1:(($2*1.602/1000000)*1000000000) w l lw 4 lc "red" title "2 Water/Na^+",\
"static_z7__2f.txt" u 1:(($2*1.602/1000000)*1000000000):(($3*1.602/1000000)*1000000000) w yerrorbars lw 5 lc "red" title "",\
"static_z7__3_3f.txt" u 1:(($2*1.602/1000000)*1000000000) w l lw 4 lc "green" title "3 Water/Na^+",\
"static_z7__3_3f.txt" u 1:(($2*1.602/1000000)*1000000000):(($3*1.602/1000000)*1000000000) w yerrorbars lw 5 lc "green" title "",\



