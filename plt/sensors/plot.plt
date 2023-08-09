aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
set output "sensors.png"
set datafile separator ","

fahrenheit_to_celsius(f) = (f - 32) * 5/9

set xdata time
set timefmt "%d-%m-%Y %H:%M:%S"
set format x "%H:%M"
set xtics 5*60

set grid
set key left top
set title "Engine coolant temp"
set xlabel "time"
set ylabel "T[C]"

# Oś Y po prawej stronie dla kolumny "Wartość 2"
set y2label 'V'
set ytics nomirror
set y2tics

#set xrange [5 : 8]
#set yrange [0 : 4.5]
set datafile separator ","
plot \
	"vt.dat" using 1:2 with lines title "T" axes x1y2, \
	"vt.dat" using 1:(fahrenheit_to_celsius($3)) with lines title "V"
