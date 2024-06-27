set terminal png size 1000,1000 
set output 'rdf.png'

set lmargin 16
set rmargin 5
set bmargin 6
set tmargin 5


set key spacing 2

set key samplen 2

set key font "1,24"
set key right top
set border 15 lw 4

set yrange [0:35]
set xrange [0:10]

set format y "%.0f"


set ylabel "g(r)" font ",36" offset -4,0
set xlabel "r ({\305})" font ",36" offset 0,-2.7

set xtics 0,2,10 font ",25" offset 0,-1
set ytics font ",25" offset 0,0



plot "0_7f_0_6e_rdf2.txt" u 1:11 smooth csplines lw 4 lc "blue" title "Na-Na",\
"0_7f_0_6e_rdf2.txt" u 1:12 smooth csplines lw 4 lc "red" title "Na-O_w",\
"0_7f_0_6e_rdf2.txt" u 1:14 smooth csplines lw 4 lc "purple" title "O_w-O_w",\



