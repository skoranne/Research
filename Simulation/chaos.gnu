#
# Chaos.gnu by Mathew Peet
#
set term postscript enhanced eps "Helvetica" 12
set nokey

set yrange[0:1]
set pointsize 0.05

set output "chaos-plot.eps"
set multiplot
set origin 0,0
set size 1,1
set xlabel "r"
set ylabel "x"
plot 'out' using ($3<300 ? 1/0: $1):2 title "Populations"

set size 0.25,0.3
set origin 0.1,0.66
set xlabel "i"
set ylabel "x"
set title "Steady State"
plot 'out' using ($3>20 ? 1/0: $3):($1>1.4011 ? 1/0:$1<1.4 ? 1/0: $2) title "Converging to Steady State" w l

set size 0.25,0.3
set origin 0.30,0.66
set xlabel "i"
set ylabel ""
set title "Period 2
plot 'out' using ($3>20 ? 1/0: $3):($1>3.30011 ? 1/0:$1<3.30 ? 1/0: $2) title "Converging to Period 2" w l

set size 0.25,0.3
set origin 0.5,0.66
set xlabel "i"
set ylabel ""
set title "Period 4"
plot 'out' using ($3>20 ? 1/0: $3):($1>3.50011 ? 1/0:$1<3.5 ? 1/0: $2) title "Converging to Period 4" w l

set size 0.25,0.3
set origin 0.1,0.34
set xlabel "i"
set ylabel "x"
set title "Choatic"
plot 'out' using ($3>20 ? 1/0: $3):($1>3.80011 ? 1/0:$1<3.8 ? 1/0:  $2) title "Becoming Choatic" w l


