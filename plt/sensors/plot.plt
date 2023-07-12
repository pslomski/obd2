aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
set output "sensors.png"
set grid
set key left top
set title "Engine coolant temp"
set xlabel "time"
set ylabel "T[F]"
#set xrange [5 : 8]
#set yrange [0 : 4.5]
plot \
	"vt" using 1:2 with lines title "temp"
