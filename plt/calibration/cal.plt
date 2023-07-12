aspect = 800.0 / 600.0
width = 500
height = width / aspect
set terminal pngcairo size width,height enhanced font ",11"
set output "cal.png"
set grid
set key left top
set title "Calibration curve"
set xlabel "Concentration [mg/ml]"
set ylabel "Peak area"
set xrange [0.02 : 0.105]
set yrange [0 : 4000]
f(x) = 48686 * x - 1543
plot \
	"cal.dat" using 1:2 pt 6 lc 'grey50' title "Experimental points", \
	f(x) with lines lc 'grey50' title "Linear fit y=48687*x-1543"
