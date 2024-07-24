set term postscript dashed color
set terminal png size 1000,1000 
set termoption dash
set output 'rdf_h2o.png'


set lmargin 16
set rmargin 5
set bmargin 6
set tmargin 5


set key spacing 2

set key samplen 2

set key font "1,24"
set key right top
set border 15 lw 4

set yrange [0:25]
set xrange [0:10]

set format y "%.0f"


set ylabel "g(r)" font ",36" offset -4,0
set xlabel "r ({\305})" font ",36" offset 0,-2.7

set xtics 0,1,10 font ",32" offset 0,-1.5
set ytics font ",32" offset 0,0



plot "0_7f_0_2e_rdf.txt" u 1:11 smooth csplines lw 4 lc "blue" title "Na-Na 0 V/{\305}",\
"0_7f_0_2e_rdf.txt" u 1:13 smooth csplines lt 4 lw 4 lc "red" title "Na-O_w 0 V/{\305}",\
"0_7f_0_6e_rdf.txt" u 1:11 smooth csplines lt 4 lw 4 lc "skyblue" title "Na-Na 0.6 V/{\305}",\
"0_7f_0_6e_rdf.txt" u 1:13 smooth csplines lt 4 lw 4 lc "salmon" title "Na-O_w 0.6 V/{\305},\




