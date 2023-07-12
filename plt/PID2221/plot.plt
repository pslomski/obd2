aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
set output "plot.png"
set grid
set key left top
set title "PID2221"
set xlabel "time"
set ylabel "T[C]"
#set xrange [5 : 8]
#set yrange [0 : 4.5]
plot \
	"2201AA" using 1:2 with lines title "AA", \
	"2201Z" using 1:2 with lines title "Z"
