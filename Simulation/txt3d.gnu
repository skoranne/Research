set boxwidth 0.4
set style fill solid 0.3
set terminal png nocrop enhanced # font "verdana,8" # size 640,300

design_name=system("echo $PLOT_DESIGN_NAME")
V1=system("echo $EX")
V2=system("echo $HY")
V4=system("echo $OP2")
set output "".V4

set xrange [0:500]
set yrange [-1:1]
set zrange [-1:1]
set title "Pulse propagation"
set ylabel "Y"
set zlabel "X"
set xlabel "Z"

set output "".V4
splot "".V1 with lines title "E_x(z)", "".V2 with lines title "H_y(z)"
quit

