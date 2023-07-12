aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
#set terminal png size width,height enhanced font ",11"
set output "temp.png"
set grid
set key left top
set title "Land-Ocean Temperature Index"
set xlabel "Year"
set ylabel "Temperature [C]"
plot \
	'temp.dat' using 1:2 with lines lc 'grey50' title "Annual mean", \
	'temp.dat' using 1:2 pt 6 lc 'grey50' notitle, \
	'temp.dat' using 1:3 with lines lc black lw 2 title "Smoothing"
