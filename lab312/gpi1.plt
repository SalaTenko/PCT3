#! /usr/bin/gnuplot
#! /usr/bin/gnuplot -persist

set terminal png size 1200, 800 font 'Verdana, 10'
set output 'out.png'
set ylabel "Speedup"
set xlabel "Processes"
set xtics ("8" 8, "16" 16, "24" 24, "32" 32, "40" 40, "48" 48, "56" 56, "64" 64)
plot 'out.txt' using 1:2 with linespoints lw 3 lt rgb 'purple' title "Matrix", \
x title "Linear speedup" lw 3
