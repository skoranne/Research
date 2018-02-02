## 
set term postscript eps color
set output "case3_zoom_in_hopf.eps"
#set xrange [0.4318335:0.43643578]
set grid
set xlabel "v"
set ylabel "Eigenvalue^2"
set title "Eigenvalue^2 of Case III"
set samples 10000
set label 1 "Saddle" at 0.432,0.025
set label 2 "Stable Equi" at 0.434,-0.02
set label 3 "Inward spiral" at 0.44,0.02
show label 
#set xrange [0.1:0.9]
#set xrange [0.35:0.9]
#set xrange  [0.428:0.444]
set xrange  [0.2:0.9]
#set yrange [-0.1:0.1]
set yrange [-1:1]
#plot x
n(x)=(2*(1/(x*x)-5.25)+0.67084*sqrt(1/(x*x)-5.25))
d(x)=(x*x)*(-0.67084*sqrt(1/(x*x)-5.25) + 3*5.25 - 2.25)-1
f(x)=n(x)/d(x)
#plot f(x),real(2*(1/(x*x)-5.25)-0.67084*sqrt(1/(x*x)-5.25)),imag(2*(1/(x*x)-5.25)-0.67084*sqrt(1/(x*x)-5.25))
plot real(f(x)) lt rgb "red" t "Re",imag(f(x)) lt rgb "blue" t "Im",-imag(f(x)) lt rgb "blue" t "Im"
quit
