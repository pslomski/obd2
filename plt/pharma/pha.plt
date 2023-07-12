aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
set output "pha.png"
set grid
set key left top
set title "20 - 80 Minute Graph"
set xlabel "Urine pH"
set ylabel "Salicylate excretion [mol]"
set xrange [5 : 8]
set yrange [0 : 4.5]
plot \
	"pha.dat" using 1:2 pt 6 title "20 min", \
	"pha.dat" using 1:2 pt 6 title "40 min", \
	"pha.dat" using 1:2 pt 6 title "80 min"
