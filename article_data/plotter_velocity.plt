
set terminal png size 1000,1000 
set termoption dash
set output 'ion_vel.png'
#set output 'test.jpg'

set lmargin 16
set rmargin 5
set bmargin 6
set tmargin 5


set key spacing 2

set key samplen 2

set key font "1,24"
set key right top
set border 15 lw 4

set yrange [0:0.04]
set xrange [0:1]

set format y "%.3f"


set ylabel "v ({\305}/fs)" font ",36" offset -4,0
set xlabel "t (ns)" font ",36" offset 0,-2.7

set xtics 0,0.2,1 font ",25" offset 0,-1
set ytics font ",25" offset 0,0



plot "ion_vel_all.txt" every 4 u ($1/1000000)-1.5:2 w l lw 4 lc "blue" title "Edge Ion",\
"ion_vel_all.txt" every 4 u ($1/1000000)-1.5:3 w l lw 4 lc "red" title "Conducting Ion",\
"ion_vel_all.txt" every 4 u ($1/1000000)-1.5:4 w l lw 4 lc "green" title "Stationary Ion",\



