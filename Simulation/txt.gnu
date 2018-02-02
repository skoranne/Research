set boxwidth 0.4
set style fill solid 0.3
set terminal png nocrop enhanced # font "verdana,8" # size 640,300

design_name=system("echo $PLOT_DESIGN_NAME")
V1=system("echo $EX")
V2=system("echo $HY")
V3=system("echo $OP")
V4=system("echo $OP2")
set output "".V3
#set title "DESIGN " . design_name . "\nRuntime_Stage_Info" noenhanced
set xrange [0:500]
set yrange [-1:1]
set ylabel "E_x(z)"
set xlabel "(s)"
#set xtics rotate by 270
plot "".V1 with lines title "E_x(z)"

set output "".V4
set ylabel "H_y(z)"
set xlabel "(s)"
plot "".V2 with lines title "H_y(z)"

quit
reset
