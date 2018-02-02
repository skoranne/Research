set samples 10000
set grid
set xlabel "L"
set ylabel "E(z,t)"
set title "E(z,t) for v=0.5 with non-linear conservation T=1000"

#set term postscript eps color
#set output "V0500.eps"
plot 'e.dat' with linespo t "E(z,t)"
pause 1
reread

